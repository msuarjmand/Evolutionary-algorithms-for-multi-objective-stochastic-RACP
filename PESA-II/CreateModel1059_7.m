function model=CreateModel1059_7()

PredList={[],1,1,1,2,3,2,[6 7],[4 5 7],[3,7],[5,8],[9,10,11]};
      t=[0     2     5     7     4     1     6     1     4     6     8   0
         0    10     8     5     8     1     2     2     3     2     6   0
         0     2     4     5     7     5     7     2     3     3     4   0
         0     3     3     7     2     7     2     2     9     1     2   0
         0     8     1     1     2     8     2     4     8    10     7   0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

   R{1}=[0     0     
         1     7
         7     6
         1    10
         1     7
         6     9
         1     5
         9     5
         9     9
         8     1
         2     2       
         0     0];
   R{2}=[0     0     
         2     3
         4     5
         9     1
         9    10
         1     2
         4     2
         6     4
         5     2
         7     5
         7     4
         0     0];
 R{3}=[  0     0     
        10     4
        10     8
         1     7
         8     6
         3     7
         5     7
         6     2
        10     2
         5    10
        10     2
         0     0];
 R{4}=[  0     0     
         1     7
         6     4
         9     2
         7     5
         2     5
         4     2
         5     6
        10     3
         2     4
         9     6
         0     0];
 R{5}=[  0     0     
         3    10
         3     9
         7     9
         3     3
         9     6
        10     1
         8     5
         4     4
         6     2
         2     2
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