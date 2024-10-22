function sol=CreateRandomSolution(model)
%% the resource level

    N=model.N;
%     M=model.M;
    nR=model.nR;
%     R=model.R;
    Rmax=model.Rmax;
    Rmin=model.Rmin;
    
    
%     r=zeros(M,nR);
%   for m=1:M
%       for i=1:nR
%           
%            r(m,i)=randi([Rmin(m,i) Rmax(i)]);    
%       end
%   end
    r=zeros(1,nR);

    for i=1:nR
        
        r(i)=randi([max(Rmin(:,i)) Rmax(i)]);
        
    end
  
%% the Sequence of the activities 
   
    q=randperm(N);
    
%     q=RepairSchedule(q,model);
    
%% the activities start time

%     S=zeros(M,N);
%     F=zeros(M,N);

%% Results
   
    sol.r=r;  
    sol.q=q;
%     sol.S=S;
%     sol.F=F;



   
   
    
end