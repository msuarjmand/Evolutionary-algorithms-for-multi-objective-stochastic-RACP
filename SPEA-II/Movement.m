function sol2=Movement(sol,model)
    
    sol1=ParseSolution(sol,model);

   
    N=model.N;
    M=model.M;
    nR=model.nR;
    t=model.t;
    T=model.T;
    Rmin=model.Rmin;
    Rmax=model.Rmax;
    R=model.R;
    PredList=model.PredList;  
    
    ST1=sol1.ST;
%     FT1=sol1.FT;  
%     Cmax1=sol1.Cmax;
    RI1=sol1.RI;
    MRI1=sol1.MRI;
    UR1=sol1.UR;
    
    
    q=sol1.q;
%     r=sol1.r;

   

%%  
    RL=zeros(size(MRI1));

    for n=1:nR
        
        RL(n)=max(RI1(:,n));
        
    end
    
    ST=zeros(M,N);
    FT=zeros(M,N);
    
    AR=cell(M,1);
    RR=cell(M,1);
    UR=cell(M,1);
    Cmax=zeros(1,M);
    
    RI2=zeros(M,nR);
    MRI2=zeros(1,nR);
    
    for k=1:M
        
        AR{k}=repmat(RL,T(k),1);
        RR{k}=repmat(RL,T(k),1);
        UR{k}=zeros(size(RR{k}));
              
    end
    
    %% Choose the effective activity from all effective activities set
    
     e=randi([1 nR]);  %select the resource type
     A=zeros(1,M);
     EM=zeros(1,M);
     SA=zeros(1,M);
     
     for m=1:M
         A(m)=find(UR1{m}(:,e)==RI1(m,e),1,'first');  %find the max level used in the selected resource type         
         
         
             EA=find(ST1(m,:)==A(m)-1);   %all effective activites
             if EA==0
                 EA=find(ST1(m,:)==A(m));
             end
             rr=randi([1 numel(EA)]);     %select an effective activity
%              L=UR1{m}(A(m),e)-R{m}(EA(rr),e);   %the resource level after changing the effective activity
         
%          EM(m)=find(UR1{m}(A(m):end,e)<L,1,'first');      % effective movement

            EM(m)=randi([1 10]);
            SA(m)=EA(rr);

               
     end
     
     
    
    
%% Monte Carlo Simulation

    
   

    
    for m=1:M
        
        ST2=zeros(1,N);
        FT2=zeros(1,N);

        
        for i=q
            
            
            if i==SA(m)              
                t1=ST1(m,i)+EM(m)-1;
                
            elseif ~isempty(PredList{i})
                t1=max(FT2(PredList{i}));
                
            else         
                t1=0;
            end


            for tt=t1:T(m)
                RR_is_enough=true;

                for d=1:t(m,i)
                    if any(RR{m}(tt+d,:)<R{m}(i,:))
                        RR_is_enough=false;
                        break;
                    end
                end

                if RR_is_enough
                    t2=tt;
                    break;
                end
            end

            ST2(i)=t2;

            for d=1:t(m,i)
                RR{m}(ST2(i)+d,:)=(RR{m}(ST2(i)+d,:))-R{m}(i,:);
                UR{m}(ST2(i)+d,:)=(UR{m}(ST2(i)+d,:))+R{m}(i,:);
            end
             
            FT2(i)=ST2(i)+t(m,i);
        end
        ST(m,:)=ST2;
        FT(m,:)=FT2;
        
        
        Cmax(m)=max(FT2);
        
        AR{m}=AR{m}(1:Cmax(m),:);
        RR{m}=RR{m}(1:Cmax(m),:);
        UR{m}=UR{m}(1:Cmax(m),:);
        
        for n=1:nR 
            RI2(m,n)=max(UR{m}(:,n));        
        end
    end        
     
    MCmax=mean(Cmax(:));
    
    for n=1:nR    
        MRI2(n)=mean(RI2(:,n));
    end    
    
    %% Results
       
    sol2.q=q;
    sol2.r=RL;
    
    sol2.EM=EM;
    sol2.SA=SA;
    sol2.ST=ST;
    sol2.FT=FT;
    sol2.Cmax=Cmax;
    sol2.MCmax=MCmax;
    sol2.AR=AR;
    sol2.RR=RR;
    sol2.UR=UR;
    sol2.RI=RI2;
    sol2.MRI=MRI2;
    sol2.Rmax=Rmax;
    sol2.Rmin=Rmin;
  
    
end

