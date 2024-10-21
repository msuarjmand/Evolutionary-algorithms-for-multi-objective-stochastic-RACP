function model=CreateModel1062_3()

PredList={[],1,1,1,3,[4 5],[2 4],[4,5],[3,7],3,[6 8],[9,10,11]};
      t=[0     8     8     9     4     5     8     3     7     8     9   0
         0     7     7     4     7     7    10     3     1     9     2   0
         0     4     9     6     4    10     1     8     4     3     6   0
         0    10     4    10     8     4     4     7     5     8     4   0
         0     2     8     6     5     9     7     6     3     2     9   0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23 24];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

   R{1}=[0     0     0     
         3     5     7
         9     7     7
         9    10     4
        10     2     9
         5     8    10
         3     6    10
         3     5     2
         6     9     3
         8     4     1
         4     2     7      
         0     0     0];
   R{2}=[0     0     0     
         2     9     2
         5     1     8
         9     7     4
         6    10     5
         4     3     2
         3     2     9
         5     7     7
        10    10     8
         2     7     9
         5     9     1
         0     0     0];
 R{3}=[  0     0     0     
         1     6     6
         4     4    10
         8     9     8
         3     9    10
         8     6     3
         7     3     6
         9     7     1
         9     3     8
         3     5     7
         4     4     9
         0     0     0];
 R{4}=[  0     0     0      
        10     8     7
        10     6     8
         5     4     8
         1     9     2
         6     6     9
         3    10     1
         3     9     5
         4     4     8
         1     6     8
         8     4     4
         0     0     0];
 R{5}=[  0     0     0     
         8     2     3
         9     9    10
         3     2     7
         2     6    10
         3    10     5
         4     4    10
         3     1     1
        10     3     7
         1     4     9
         6     4     3
         0     0     0];

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