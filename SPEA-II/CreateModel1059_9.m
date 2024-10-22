function model=CreateModel1059_9()

PredList={[],1,1,1,3,3,[2 4],7,[6,8],[4,6],[5 6 7],[9,10,11]};
      t=[0     2     2     9     6     1    10     8     8     4     7   0
         0     7    10     8     4    10     8     3     7     9    10   0
         0     9     6     2     5     7     6     1     5     8     5   0
         0     6     7     6     2    10     5     8     4     9     1   0
         0     8     1     4     3     2     3     7     9     6     9   0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

   R{1}=[0     0     
         6     6
         6     7
         9     6
         3     8
         4     6
         2    10
        10     3
         7     2
         5     2
         7     1       
         0     0];
   R{2}=[0     0     
         5     7
         5     1
         4     6
         8     6
         7     9
         8     5
        10     4
        10     7
         2     8
         2     6
         0     0];
 R{3}=[  0     0    
         4     8
         2     4
         6     7
         3     8
         1     5
         8     1
         3     4
         5     5
         7     3
         4     2
         0     0];
 R{4}=[  0     0     
         9     8
         5    10
         9     4
         4     7
         8     5
         4     9
         9     8
         8     2
         4     9
         3    10
         0     0];
 R{5}=[  0     0     
         6     6
         9     1
         6     2
         2     2
         2     7
         5     5
         8     2
         9     5
         8     2
         4     1
         0     0];

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