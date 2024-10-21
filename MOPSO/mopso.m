clc;
clear;
close all;

tic;

global NFE;
NFE=0;
%% Problem Definition

model=CreateModel3045_7();

CostFunction=@MyCost;    % Cost Function

nVar=model.N+model.nR;     % total Number of Decision Variables
 
VarSize=[1 nVar];     % Size of Decision Variables Matrix
 
 VarMin=0;          % Lower Bound of Variables
 VarMax=1;          % Upper Bound of Variables

 % Velocity Limits
 VelMax=0.1*(VarMax-VarMin);
 VelMin=-VelMax;

 
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


AA=[1 1.5 2];
BB=[1 1.5 2];
CC=[0.7 0.8 0.9];
DD=[15 25 40];
EE=[10 20 30];
FF=[5 8 10];
GG=[100 200 300];

SM=zeros(ex,Runs);
 
 
for dd=1:ex 
        %% MOPSO Parameters

        MaxIt=GG(Experiment(dd,7));          % Maximum Number of Iterations

        nPop=DD(Experiment(dd,4));            % Population Size

        nRep=EE(Experiment(dd,5));            % Repository Size

        w=CC(Experiment(dd,3));               % Inertia Weight
        wdamp=0.99;         % Intertia Weight Damping Rate
        c1=AA(Experiment(dd,1));               % Personal Learning Coefficient
        c2=BB(Experiment(dd,2));               % Global Learning Coefficient

        nGrid=FF(Experiment(dd,6));           % Number of Grids per Dimension
        alpha=0.2;          % Inflation Rate

        beta=2;             % Leader Selection Pressure
        gamma=2;            % Deletion Selection Pressure

        mu=0.2;             % Mutation Rate
        
        
    for rr=1:Runs

        %% Initialization

        empty_particle.Position=[];
        empty_particle.Velocity=[];
        empty_particle.Cost=[];
        empty_particle.Sol=[];

        empty_particle.Best.Position=[];
        empty_particle.Best.Cost=[];
        empty_particle.Best.Sol=[];

        empty_particle.IsDominated=[];
        empty_particle.GridIndex=[];
        empty_particle.GridSubIndex=[];

        pop=repmat(empty_particle,nPop,1);

        for i=1:nPop

            pop(i).Position=CreateRandomSolution(model);

            pop(i).Velocity=zeros(VarSize);

            [pop(i).Cost, pop(i).Sol]=CostFunction(pop(i).Position,model);


            % Update Personal Best
            pop(i).Best.Position=pop(i).Position;
            pop(i).Best.Cost=pop(i).Cost;
            pop(i).Best.Sol=pop(i).Sol;

        end

        % Determine Domination
        pop=DetermineDomination(pop);

        rep=pop(~[pop.IsDominated]);

        %
        A=[rep.Cost]';
            [a1,a2,a3]=unique(A(:,1));
            b=unique(a3);
            nb=numel(b);
            C=zeros(nb,2);
            for i=1:nb
                C(i,1)=a1(i);
                f=find(a3==i,1,'first');
                C(i,2)=A(f,2);
            end

        MID=zeros(MaxIt+1,1);
        MID(1)=sum(sqrt(C(:,1).^2+C(:,2).^2)/nb);

        NPS=zeros(MaxIt+1,1);
        NPS(1)=nb;

        Grid=CreateGrid(rep,nGrid,alpha);

        for i=1:numel(rep)
            rep(i)=FindGridIndex(rep(i),Grid);
        end

        nfe=zeros(MaxIt,1);

        %% MOPSO Main Loop

        for it=1:MaxIt

            for i=1:nPop

                leader=SelectLeader(rep,beta);
                % Update Velocity
                pop(i).Velocity = w*pop(i).Velocity ...
                    +c1*rand(VarSize).*(pop(i).Best.Position-pop(i).Position) ...
                    +c2*rand(VarSize).*(leader.Position-pop(i).Position);

                % Apply Velocity Limits
                pop(i).Velocity = max(pop(i).Velocity,VelMin);
                pop(i).Velocity = min(pop(i).Velocity,VelMax);

                % Update Position
                pop(i).Position = pop(i).Position + pop(i).Velocity;

                % Velocity Mirror Effect
                IsOutside=(pop(i).Position<VarMin | pop(i).Position>VarMax);
                pop(i).Velocity(IsOutside)=-pop(i).Velocity(IsOutside);

                % Apply Position Limits
                pop(i).Position = max(pop(i).Position,VarMin);
                pop(i).Position = min(pop(i).Position,VarMax);

                % Evaluation
                [pop(i).Cost, pop(i).Sol]= CostFunction(pop(i).Position,model);


                %% Apply Mutation

                pm=(1-(it-1)/(MaxIt-1))^(1/mu);

                NewSol.Position=Mutate(pop(i).Position,model,pm,VarMin,VarMax);
                [NewSol.Cost, NewSol.Sol]=CostFunction(NewSol.Position,model);
                if Dominates(NewSol,pop(i))
                    pop(i).Position=NewSol.Position;
                    pop(i).Cost=NewSol.Cost;
                    pop(i).Sol=NewSol.Sol;

                elseif Dominates(pop(i),NewSol)
                    % Do Nothing

                else
                    if rand<0.5
                        pop(i).Position=NewSol.Position;
                        pop(i).Cost=NewSol.Cost;
                        pop(i).Sol=NewSol.Sol;
                    end
                end

                if Dominates(pop(i),pop(i).Best)
                    pop(i).Best.Position=pop(i).Position;
                    pop(i).Best.Cost=pop(i).Cost;
                    pop(i).Best.Sol=pop(i).Sol;
                elseif Dominates(pop(i).Best,pop(i))
                    % Do Nothing

                else
                    if rand<0.5
                        pop(i).Best.Position=pop(i).Position;
                        pop(i).Best.Cost=pop(i).Cost;
                        pop(i).Best.Sol=pop(i).Sol;
                    end
                end



            end

            % Add Non-Dominated Particles to REPOSITORY
            rep=[rep; pop(~[pop.IsDominated])]; %#ok

            % Determine Domination of New Resository Members
            rep=DetermineDomination(rep);

            % Keep only Non-Dminated Memebrs in the Repository
            rep=rep(~[rep.IsDominated]);

            % Update Grid
            Grid=CreateGrid(rep,nGrid,alpha);

            % Update Grid Indices
            for i=1:numel(rep)
                rep(i)=FindGridIndex(rep(i),Grid);
            end

            % Check if Repository is Full
            if numel(rep)>nRep

                Extra=numel(rep)-nRep;
                for e=1:Extra
                    rep=DeleteOneRepMemebr(rep,gamma);
                end

            end

            % Plot Costs
            figure(1);
            PlotCosts(pop,rep);

            % Show Iteration Information
            disp(['Iteration ' num2str(it) ': Number of Rep Members = ' num2str(numel(rep))]);


            % Objective Function Value
            A=[rep.Cost]';
            [a1,a2,a3]=unique(A(:,1));
            b=unique(a3);
            nb=numel(b);
            C=zeros(nb,2);
            for i=1:nb
                C(i,1)=a1(i);
                f=find(a3==i,1,'first');
                C(i,2)=A(f,2);
            end

            MID(it+1)=sum(sqrt(C(:,1).^2+C(:,2).^2)/nb);
            NPS(it+1)=nb;

            toc;

            % Damping Inertia Weight
            w=w*wdamp;

        end

        
        %% Results

        PM=Evaluation(C);
        SM(dd,rr)=PM.SM;
        
    end 
        
end
%% Resluts

figure(2);
plot(MID,'-','color','b');
title('Mean Ideal Distance');
xlabel('Objective function 1');
ylabel('Objective function 2');

figure(3);
plot(NPS,'--','color','g');
title('Number of Pareto Solution');
xlabel('Objective function 1');
ylabel('Objective function 2');














