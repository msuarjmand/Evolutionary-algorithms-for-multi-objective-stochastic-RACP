function sol1=ParseSolution(sol,model)

    N=model.N;
    M=model.M;
    nR=model.nR;
    t=model.t;
    T=model.T;
    PredList=model.PredList;
    R=model.R;

     q=sol.q;
     r=sol.r;
     q=RepairSchedule(q,model);
%      S=sol.S;
%      F=sol.F;
    
    ST=zeros(M,N);
    FT=zeros(M,N);
    
    
    AR=cell(M,1);
    RR=cell(M,1);
    UR=cell(M,1);
    Cmax=zeros(1,M);
    RI=zeros(M,nR);
    MRI=zeros(1,nR);
    
    for k=1:M
%         T(k)=sum(t(k,:));
        AR{k}=repmat(r,T(k),1);
        RR{k}=AR{k};
        UR{k}=zeros(size(RR{k}));
        
        
    end
        
    %% Monte Carlo Simulation
    
    
    
    
    for m=1:M
%         T2=T(m);      
        ST2=zeros(1,N);
        FT2=zeros(1,N);
        for i=q
            if ~isempty(PredList{i})
                t1=max(FT2(PredList{i}));
            else
                t1=0;
            end

            for tt=t1:T(m)
                RR_is_enough=true;

                for d=1:t(m,i)
                    if any((RR{m}(tt+d,:))<R{m}(i,:))
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
            RI(m,n)=max(UR{m}(:,n));        
        end
        
    end   
        
        
    %% Results
    
    MCmax=mean(Cmax(:));
     for n=1:nR    
         MRI(n)=mean(RI(:,n));
     end    
    
    
    
    
%     S=ST;
%     F=FT;
    
    
    
    sol1.q=q;  
    sol1.r=r;
%     sol1.S=S;
%     sol1.F=F;
    
    
    sol1.ST=ST;
    sol1.FT=FT;
    sol1.Cmax=Cmax;
    sol1.MCmax=MCmax;
    sol1.AR=AR;
    sol1.RR=RR;
    sol1.UR=UR;
    sol1.RI=RI;
    sol1.MRI=MRI;

end