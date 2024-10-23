function model=CreateModel1062_1()

PredList={[],1,1,1,[2 3],[3 4],6,[2,3],[7,8],[5,7],5,[9,10,11]};
      t=[0    10     8     2     7    10     7     5     6     4     5   0
         0     1     6     3    10     7     3     7     6    10     3   0
         0    10     9     2     4    10     3     8     1     4     2   0
         0     1     9     1     5     8     7     6     8     9     4   0
         0     7     7     2    10     4     6     6    10     5     8   0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23 26];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

   R{1}=[0     0     0    
         4     6     3
         7     8     3
        10     2     3
        10     4     2
         6     2    10
         4     4    10
         9     5     9
         5     6     8
        10     1     2
         1     6     4       
         0     0     0];
   R{2}=[0     0     0     
         2     8     7
         1     6     5
         4     8     7
         7     7     3
         7     2     1
         6     6     6
         5     4     3
         3     1    10
         6     2    10
         8     2     4
         0     0     0];
 R{3}=[  0     0     0     
         1     8     2
         7     4     4
         9     6    10
        10     2     4
         1     1     3
         5    10     2
         6     3     4
         7     6     4
         8    10     2
         7     2     5
         0     0     0];
 R{4}=[  0     0     0     
         1     7     7
         7     3     7
         1     9     2
         6    10     1
         8     9     3
         3     6     9
         5     3    10
         6     8     7
         1     3     8
         5    10     3
         0     0     0];
 R{5}=[  0     0     0     
         6     6     6
         9     9    10
         5     9     8
        10     8     4
         1     4     3
         4     5     9
         6     8    10
         1     2     7
         8     2     3
         6     3     1
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