function model=CreateModelnew1()

    PredList={[], [], 1, 1,[2 3],[4 5]};

      t=[2 5 3 7 6 0; 4 4 2 5 3 0; 5 6 3 6 4 0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    R=cell(M,1);
    Rmax=[20 20 20];
    nR=numel(Rmax);

  R{1}=[ 4    3    4    
         4    2    5    
         2    2    2    
         3    1    1    
         5    4    5            
         0    0    0];
  R{2}=[ 5    1    3    
         5    3    4    
         2    4    2    
         3    3    5    
         1    2    5            
         0    0    0];
  R{3}=[ 5    2    2    
         4    4    3    
         2    3    5    
         5    5    5    
         1    4    1            
         0    0    0];
     

%      nR=size(R,2);

     
     Rmin=zeros(M,nR);
     for m=1:M
         for i=1:nR
             Rmin(m,i)=max(max(R{m}(:,i)),6);   
         end
     end
      
       T=zeros(1,M);
     
     for m=1:M
        T(m)=sum(t(m,:))+10; 
     end

    model.N=N;
    model.M=M;
    model.t=t;
    model.T=T;
    model.PredList=PredList;
    model.nR=nR;
    model.R=R;
    model.Rmax=Rmax;
    model.Rmin=Rmin;

         

   
end