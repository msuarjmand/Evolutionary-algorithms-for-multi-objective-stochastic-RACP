function model=CreateModel1062_7()

PredList={[],1,1,1,3,4,5,3,[2,6,7],[5 8],[2 5 8],[9,10,11]};
      t=[0     2     4     6     9     4     2    10     5     9    10   0
         0     9     6     7     2     4     7     6     1     4     2   0
         0     4     6    10     1     1     9     6     9     7     3   0
         0     3     4     8     1     6    10     4     1     9     9   0
         0     4     4     5     2     1     6     5     5     9     6   0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23 28];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

   R{1}=[0     0     0     
         8     8     9
         8     9     7
         5     1     6
         1     2     3
         6     8     8
         2     7     4
         8     8     6
         6     6     9
         3     5     9
        10     7     9       
         0     0     0];
  R{2}=[ 0     0     0      
        10    10     7
         9     3     5
         1     4     5
         1     9    10
         1     4     1
         3     2     3
         1     6     5
         5     9     6
         4     4     9
         6     7     5
         0     0     0];
 R{3}=[  0     0     0      
         5     9     9
         8     3     5
         5     9     1
         9     8     7
         5     9     3
         5    10     6
         5     2     8
         3     4     7
         1    10     6
         1     7     5
         0     0     0];
 R{4}=[  0     0     0     
         3     9     2
         5     2     8
         1     9     3
         7     1     7
        10     4     9
         1     6     1
         1     6    10
         9     7     1
         3     7     9
         1     5     9
         0     0     0];
 R{5}=[  0     0     0    
         1     7     1
         6     5     9
        10    10     1
         4     8     9
         9     6     9
         7     3     6
         8     3     2
         8     9     2
         1     5     8
         3     9     9
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