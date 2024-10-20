function model=CreateModel1062_8()

PredList={[],1,1,1,[3,4],2,2,5,[6,8],[4 6 7],[2 8],[9,10,11]};
      t=[0     6     5     8     6     4     5     2     3     7     7   0
         0     7     5     4     7     5     7     4     9     6     6   0
         0     9    10     6     5     4    10     6     1     3     1   0
         0     6     7     6     9     8     8     5     9     6     1   0
         0     3     7     2     8     8     8     1     1     2     2   0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23 28];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

   R{1}=[0     0     0     
         1     6     7
         8     5     3
        10     1     7
         4     1     5
         7     5     5
         4     3     2
         3     4     2
         8     3     7
         8     2     3
         3     4     6       
         0     0     0];
  R{2}=[ 0     0     0     
        10     8    10
         8     5     6
         7     7     9
        10     5     5
         8     4     5
         7     3     9
        10     4    10
         1     1     6
         3     5    10
        10     4     8
         0     0     0];
 R{3}=[  0     0     0     
         6     5     3
        10     6     2
         9     1     6
        10     7     9
         7     9     9
         4     2     9
         5     5     3
        10     3     6
         1    10     9
         2     7     2
         0     0     0];
 R{4}=[  0     0     0      
         5     9     2
         9     6     5
        10     4     9
         9     3     4
         8     6     2
         8     3     6
         9     1     9
         1     1     4
         4     1     1
         1     5     2
         0     0     0];
 R{5}=[  0     0     0      
         1     5     5
         8     2     5
         5     1    10
         7     8     4
         7     4     2
         6     7     3
         7     7     7
         9     6     9
         7     8    10
         9     6     3
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