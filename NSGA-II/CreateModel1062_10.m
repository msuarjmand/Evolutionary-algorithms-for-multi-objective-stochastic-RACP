function model=CreateModel1062_10()

PredList={[],1,1,1,4,4,2,[3 6],[5,7,8],[2 4],[3 6],[9,10,11]};
      t=[0     2     3     3     3     2     3     1     5     8     3   0
         0     3     5     8     1     2     5     5    10     7     4   0
         0     1     2     1     2     6     4     2     8     6     9   0
         0     5     5     4     2    10     6     1     1     3     9   0
         0     3     8     1     3    10     3    10     7     8     5   0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23 28];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

   R{1}=[0     0     0     
         8     4    10
         6     8     6
         5     2     9
         6     2     1
         5    10    10
         7     9    10
         8    10     6
         4     9     5
         1     1     4
         9     6     8       
         0     0     0];
   R{2}=[0     0     0      
         1    10     6
         4     5     3
        10     5     6
         6     3     2
         5     2     1
         5     9     7
         4     8     7
        10     6     3
        10     9     5
         6     6     7
         0     0     0];
 R{3}=[  0     0     0     
         6    10     4
         2    10    10
         2     1     7
         1     5     4
         5     9     7
         5     3     3
         2     9     6
         7     9    10
         1     7     9
         2     1     3
         0     0     0];
 R{4}=[  0     0     0      
         7     2    10
         4     5     8
        10     4     7
         1     5     5
         3     6     3
         9     2     6
         1    10     3
         6     7     4
         9     2    10
         8     6     9
         0     0     0];
 R{5}=[  0     0     0     
         8     7     8
        10     1     4
         2    10     3
         6     1     3
         7     6     8
        10     2     1
         7     4     7
         4     9     7
         8     3     8
         9     9    10
         0     0     0];

     nR=size(R{1},2);

     
     Rmin=zeros(M,nR);
     for m=1:M
         for i=1:nR
             Rmin(m,i)=max(max(R{m}(:,i)),10);   
         end
     end
     
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