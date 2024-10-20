function model=CreateModel1062_2()

PredList={[],1,1,1,3,2,[3 6],[4,6],[3,6],[7,8],[5 7],[9,10,11]};
      t=[0     8     8     3     3     2     9     4    10     6     9   0
         0     7     1     3     2     2     1     2     7     5     2   0
         0     1     4     7     9     1     1     4     2    10     4   0
         0     9     8     5     8     5     6     3     4     9    10   0
         0    10     8     7    10     2     8     6     1     5    10   0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23 25];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

   R{1}=[0     0     0     
         9     9    10
         6     7     6
        10     3     1
         1     4     1
         6     2     9
         3     7     5
         9     6     4
         2     2     8
         5     2     4
         4     5     6       
         0     0     0];
   R{2}=[0     0     0      
         8     8     9
         9    10     4
         4     2     1
         7     8     6
        10     2    10
         1    10     2
         6     9     5
         5     5     8
         4     8     1
         3     5    10
         0     0     0];
 R{3}=[  0     0     0      
         8    10    10
         6     5     2
         2     3     1
         5     4     4
         6     8     6
        10     6     6
         9     8    10
        10    10     6
         7    10     5
         5     6     6
         0     0     0];
 R{4}=[  0     0     0     
         8     2     7
         1     2     4
         9     4     9
         2     9     8
         5     5     5
         3     5     9
         4     2     9
         7    10     5
         2     5     4
         3     9     6
         0     0     0];
 R{5}=[  0     0     0      
        10     1     1
         8     5     8
         4     1     4
         8    10     8
        10     7     5
         6     1     5
         6     1     1
         4     3     1
         1     5     1
         2     2     6
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