clc;
clear;
close all;

tic;

%% Problem Definition

model=CreateModel3048_5();

CostFunction=@MyCost;

%% Parameters tuning

Runs=1;    % number of run times

Experiment=[
            1	 1	1	1	1	1	1
            1	 1	1	1	2	2	2
            1	 1	1	1	3	3	3
            1	 2	2	2	1	1	1
            1	 2	2	2	2	2	2
            1	 2	2	2	3	3	3
            1	 3	3	3	1	1	1
            1	 3	3	3	2	2	2
            1	 3	3	3	3	3	3
            2	 1	2	3	1	2	3
            2	 1	2	3	2	3	1
            2	 1	2	3	3	1	2
            2	 2	3	1	1	2	3
            2	 2	3	1	2	3	1
            2	 2	3	1	3	1	2
            2	 3	1	2	1	2	3
            2	 3	1	2	2	3	1
            2	 3	1	2	3	1	2
            3	 1	3	2	1	3	2
            3	 1	3	2	2	1	3
            3	 1	3	2	3	2	1
            3	 2	1	3	1	3	2
            3	 2	1	3	2	1	3
            3	 2	1	3	3	2	1
            3	 3	2	1	1	3	2
            3	 3	2	1	2	1	3
            3	 3	2	1	3	2	1];

        
        
 ex=numel(Experiment(:,1));

AA=[15 25 40];
BB=[10 20 30];
CC=[0.7 0.8 0.9];
DD=[0.1 0.2 0.3];
EE=[0.4 0.5 0.6];
FF=[0.4 0.5 0.6];
GG=[100 200 300];

SM=zeros(ex,Runs);

for dd=1:ex

 
    %% SPEA2 Settings

        MaxIt=GG(Experiment(dd,7));           % Maximum Number of Iterations

        nPop=AA(Experiment(dd,1));            % Population Size

        nArchive=BB(Experiment(dd,2));        % Archive Size

        K=round(sqrt(nPop+nArchive));         % KNN Parameter

        pCrossover=CC(Experiment(dd,3));
        nCrossover=round(pCrossover*nPop/2)*2;

        pMutation=DD(Experiment(dd,4));
        nMutation=round(pMutation*nPop);


        pMovement=FF(Experiment(dd,6));
        nMovement=round(pMovement*nPop);

        pLocalSearch=EE(Experiment(dd,5));
        nLocalSearch=round(pLocalSearch*nPop);

        % TournamentSelectionSize=4;
        
        
        
     for rr=1:Runs
        %% Initialization

        empty_individual.Position=[];
        empty_individual.Cost=[];
        empty_individual.sol=[];
        empty_individual.S=[];
        empty_individual.R=[];
        empty_individual.sigma=[];
        empty_individual.sigmaK=[];
        empty_individual.D=[];
        empty_individual.F=[];

        pop=repmat(empty_individual,nPop,1);
        for i=1:nPop

            % Initialize Position
            pop(i).Position=CreateRandomSolution(model);

            % Evaluation
            [pop(i).Cost, pop(i).sol]=CostFunction(pop(i).Position,model);

        end

        A=[pop.Cost]';
            [a1,a2,a3]=unique(A(:,1));
            b=unique(a3);
            nb=numel(b);
            C=zeros(nb,2);
         NPS=zeros(MaxIt+1,1);
         NPS(1)=nb;    

            for i=1:nb
                C(i,1)=a1(i);
                f=find(a3==i,1,'first');
                C(i,2)=A(f,2);
            end

        % figure(1);
        % PlotFronts(pop,F);

        MID=zeros(MaxIt+1,1);
        MID(1)=sum(sqrt(C(:,1).^2+C(:,2).^2)/nb);

        archive=[];

        %% Main Loop

        for it=1:MaxIt

            Q=[pop
               archive];

            nQ=numel(Q);

            dom=false(nQ,nQ);

            for i=1:nQ
                Q(i).S=0;
            end

            for i=1:nQ
                for j=i+1:nQ

                    if Dominates(Q(i),Q(j))
                        Q(i).S=Q(i).S+1;
                        dom(i,j)=true;

                    elseif Dominates(Q(j),Q(i))
                        Q(j).S=Q(j).S+1;
                        dom(j,i)=true;

                    end

                end
            end

            S=[Q.S];

            for i=1:nQ
                Q(i).R=sum(S(dom(:,i)));
            end

            Z=[Q.Cost]';
            SIGMA=pdist2(Z,Z,'seuclidean');
            SIGMA=sort(SIGMA);
            for i=1:nQ
                Q(i).sigma=SIGMA(:,i);
                Q(i).sigmaK=Q(i).sigma(K);
                Q(i).D=1/(Q(i).sigmaK+2);
                Q(i).F=Q(i).R+Q(i).D;
            end

            nND=sum([Q.R]==0);
            if nND<=nArchive
                F=[Q.F];
                [F, SO]=sort(F);
                Q=Q(SO);
                archive=Q(1:min(nArchive,nQ));
                POP=Q(min(nArchive,nQ)+1:end);
            else
                SIGMA=SIGMA(:,[Q.R]==0);
                archive=Q([Q.R]==0);

                k=2;
                while numel(archive)>nArchive
                    while min(SIGMA(k,:))==max(SIGMA(k,:)) && k<size(SIGMA,1)
                        k=k+1;
                    end

                    [~, j]=min(SIGMA(k,:));

                    archive(j)=[];
                    SIGMA(:,j)=[];
                end

            end

            PF=archive([archive.R]==0); % Approximate Pareto Front

            % Plot Pareto Front
            figure(1);
            PFC=[PF.Cost];
            plot(PFC(1,:),PFC(2,:),'*');
            xlabel('Objective function 1');
            ylabel('Objective functiom 2');


            % Display Iteration Information
            disp(['Iteration ' num2str(it) ': Number of PF members = ' num2str(numel(PF))]);

            % Objective Function Value
            A=[PF.Cost]';
            [a1,a2,a3]=unique(A(:,1));
            b=unique(a3);
            nb=numel(b);
            C=zeros(nb,2);
            for i=1:nb
                C(i,1)=a1(i);
                f=find(a3==i,1,'first');
                C(i,2)=A(f,2);
            end
            NPS(it+1)=nb;
            MID(it+1)=sum(sqrt(C(:,1).^2+C(:,2).^2)/nb);

            if it>=MaxIt
                break;
            end

            % Crossover
            popc=repmat(empty_individual,nCrossover/2,2);
            for c=1:nCrossover/2

                p1=BinaryTournamentSelection(archive,[archive.F]);
                p2=BinaryTournamentSelection(archive,[archive.F]);

                [popc(c,1).Position, popc(c,2).Position]=Crossover(p1.Position,p2.Position);

                [popc(c,1).Cost, popc(c,1).sol]=CostFunction(popc(c,1).Position,model);
                [popc(c,2).Cost, popc(c,2).sol]=CostFunction(popc(c,2).Position,model);

            end
            popc=popc(:);

            % Mutation
            popm=repmat(empty_individual,nMutation,1);
            for m=1:nMutation

                p=BinaryTournamentSelection(archive,[archive.F]);

                popm(m).Position=Mutate(p.Position);

                [popm(m).Cost, popm(m).sol]=CostFunction(popm(m).Position,model);

            end

            % Local Search   
              popl=repmat(empty_individual,nLocalSearch,1);
              for k=1:nLocalSearch


                   i=BinaryTournamentSelection(archive,[archive.F]);

                   popl(k).Position=LocalSearch3(i.Position,model);


                  [popl(k).Cost, popl(k).sol]=CostFunction(popl(k).Position,model);
              end  

              % Movement   
              popmo=repmat(empty_individual,nMovement,1);
              for k=1:nMovement


                   i=BinaryTournamentSelection(archive,[archive.F]);

                   popmo(k).Position=Movement(i.Position,model);


                  [popmo(k).Cost, popmo(k).sol]=CostFunction(popmo(k).Position,model);


              end

            % Create New Population
            pop=[popc
                 popm
                 popl
                 popmo
                 ];
             toc;

        end

        %% Results

        PM=Evaluation(C);
        SM(dd,rr)=PM.SM;
        
        
    end
   
end
    
    
% figure(2);
% plot(MID,'-','color','r');
% title('Mean Ideal Distance');
% xlabel('Objective function 1');
% ylabel('Objective functiom 2');
% 
% figure(3);
% plot(NPS,'-','color','g');
% title('Number of Pareto Solution');
% xlabel('Objective function 1');
% ylabel('Objective functiom 2');

