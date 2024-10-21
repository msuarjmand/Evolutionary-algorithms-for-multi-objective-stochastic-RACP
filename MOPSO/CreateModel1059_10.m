function model=CreateModel1059_10()

PredList={[],1,1,1,4,5,5,[3 7],[2,6,8],[3,5],[3 6],[9,10,11]};
      t=[0     7     7     2     6     3     1     7     9     3    10   0
         0     4     4     8     2     4     8     1     4     3     1   0
         0    10     2     4    10     1     4    10     7     5     6   0
         0     3     1     9     3     7     7     9     6     3     1   0
         0     7     5     8    10     2     4     8     6     9     9   0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

   R{1}=[0     0     
         9     7
         6    10
        10     6
         7     5
         6     9
         9     3
         9     5
        10    10
         1     6
         9     9       
         0     0];
   R{2}=[0     0      
         8     8
         6     6
         3    10
         7     6
         1     1
         7     2
         7     9
         8     5
         9     9
        10     3
         0     0];
 R{3}=[  0     0     
         6     2
         7     2
         1     1
         7     7
         4     3
         1     6
         5     7
         2     5
         2     6
         3     5
         0     0];
 R{4}=[  0     0      
         2    10
         5     1
         9     2
         9     2
         3     2
         3     7
         6     6
         7     1
         5    10
         3     8
         0     0];
 R{5}=[  0     0      
         8     2
         1     1
         9    10
        10     4
        10     3
         9     4
         8     5
         6     7
         2     1
         4     9
         0     0];

     nR=size(R{1},2);

     
      Rmin2=zeros(M,nR);
     for m=1:M
         for i=1:nR
             Rmin2(m,i)=max(max(R{m}(:,i)),10);   
         end
     end
     Rmin=max(Rmin2);
     
     T=zeros(1,M);
     
     for m=1:M
        T(m)=sum(t(m,:))+10; 
     end
     
     
    model.M=M;
    model.T=T;
    model.N=N;
    model.t=t;
    model.PredList=PredList;
    model.nR=nR;
    model.R=R;
    model.Rmax=Rmax;
    model.Rmin=Rmin;

         

   
end