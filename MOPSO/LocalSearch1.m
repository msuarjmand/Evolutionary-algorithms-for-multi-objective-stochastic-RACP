function sol3=LocalSearch1(sol,model)
    

       sol1=ParseSolution(sol,model);

    q=sol1.q;
    x=sol1.x;
    r=sol1.r;
    rR=sol1.rR;
    
    RI=sol1.RI;
%     MRI=sol1.MRI;
    
    N=model.N;
    M=model.M;
    nR=model.nR;
    t=model.t;
    T=model.T;
    PredList=model.PredList;
    R=model.R;
    Rmin=model.Rmin;
    Rmax=model.Rmax;
    
%% Decreasing the Level of the Selected Resource Type
    
% RL=zeros(size(MRI));
% 
%     for n=1:nR
%         
%         RL(n)=min(RI(:,n));
%         
%     end
%     
%     j=numel(MRI);
%     rr=randi([1 j]);
%     delta=randi([1 5]);
%     
%     if (RL(rr)-delta)>=Rmin(rr)
%         RL(rr)=RL(rr)-delta;
%     else
%         RL(rr)=Rmin(rr);
%     end
    RL=zeros(1,nR);

    for i=1:nR
       RL(i)=min(RI(:,i));
    end
    
    delta=randi([1 5]);
    
    rr=randi([1 nR]);
    
     for m=1:M 
        if (RL(rr)-delta)>=max(Rmin(:,rr));
           RL(rr)=RL(rr)-delta;
        else
           RL(rr)=max(Rmin(:,rr));
        end
     end
   
    %% parameter settings
    
    ST=zeros(1,N);
    FT=zeros(1,N);
    
    AR=cell(M,1);
    RR=cell(M,1);
    UR=cell(M,1);
    Cmax=zeros(1,M);
    
    RI2=zeros(M,nR);
    MRI2=zeros(1,nR);
    
    for k=1:M
        
%         T(k)=sum(t(k,:));
        AR{k}=repmat(RL,T(k),1);
        RR{k}=repmat(RL,T(k),1);
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
            RI2(m,n)=max(UR{m}(:,n));        
        end
        
    end   
     
    MCmax=mean(Cmax(:));
    
    for n=1:nR    
        MRI2(n)=mean(RI2(:,n));
    end 
    
    
    %% Results
    
    sol3.q=q;
    sol3.r=r;
    sol3.x=x;
    sol3.rR=rR;
    
    sol3.ST=ST;
    sol3.FT=FT;
    sol3.Cmax=Cmax;
    sol3.MCmax=MCmax;
    sol3.AR=AR;
    sol3.RR=RR;
    sol3.UR=UR;
    sol3.RI=RI2;
    sol3.MRI=MRI2;
    sol3.RL=RL;
    sol3.Rmax=Rmax;
    sol3.Rmin=Rmin;




end