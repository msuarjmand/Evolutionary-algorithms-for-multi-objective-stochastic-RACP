function sol1=ParseSolution(sol,model)

    
    N=model.N;
    M=model.M;
    nR=model.nR;
    t=model.t;
    T=model.T;
    PredList=model.PredList;
    R=model.R;
    Rmin=model.Rmin;
    Rmax=model.Rmax;
    
    
    
  %% Determining the sequence and resource usage of the activities
  
    NV=N+nR;
    
    x=sol(1:N);
    rR=sol(N+1:NV);
    
    [~, q]=sort(x);
    q=RepairSchedule(q,model);
    
    

%     ub=zeros(size(Rmax));
%     lb=zeros(size(Rmin));
    r=zeros(size(Rmin));
    
     
% %     for m=1:M
%         for i=1:nR
%            lb(i)=round(rR(i).*Rmin(i));
%            ub(i)=round(rR(i).*Rmax(i));
%            if lb(i)<Rmin(i)
%               lb(i)=Rmin(i); 
%            end
%            if ub(i)<=lb(i)
%               ub(i)=randi([1 10])+lb(i); 
%            end
%         end
% %     end
%     
% %     for m=1:M
%         for i=1:nR
%            r(i)=randi([lb(i) ub(i)]); 
%         end
% %     end
   
    for i=1:nR
       
        r(i)=round(rR(i).*Rmax(i));
        
        if r(i)<Rmin(i)
            r(i)=Rmin(i);
        end
        
    end
    


%% paramter settings
      
      
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
        RR{k}=repmat(r,T(k),1);
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


    sol1.q=q;
    sol1.x=x;
    sol1.r=r;
    sol1.rR=rR;   
    
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