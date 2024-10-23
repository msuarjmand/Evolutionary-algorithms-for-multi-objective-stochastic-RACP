function model=CreateModel1062_5()

PredList={[],1,1,1,3,[2 5],5,2,[5,8],[6 7 8],[4 7],[9,10,11]};
      t=[0     3     5     6     4     1     3    10     5     9    10   0
         0     6     5     7     8     6     9     6     7     9     7   0
         0    10     6     4     8     4     9     8     6     4     3   0
         0     8     3     2     7    10     6     6     4     6     7   0
         0     9     8     5     2    10     9     1    10     9     1   0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23 26];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

  R{1}=[ 0     0     0     
         8     9     1
         4     1     9
        10     3     6
         1     2     7
         9    10     3
         7     1     6
         6     6     8
         7     7    10
         8     7     5
         1     9     1       
         0     0     0];
   R{2}=[0     0     0     
         1     8     9
         7    10     9
         8     8     6
         7     3     6
         4     2     3
        10     9     7
         6     8     8
        10     3     5
         1     3     5
         3     4     5
         0     0     0];
 R{3}=[  0     0     0      
         3     2     3
         7     6    10
        10     1     1
        10     9     4
         8     8    10
         3    10     4
         7     5     4
         2     7     2
         2     9    10
         2     6     2
         0     0     0];
 R{4}=[  0     0     0     
         4     4     2
         9     9     8
         5     3     7
         7     6     1
         6    10     1
         7     1     2
         1     1     8
         6     1     1
         1     7     3
         9     6     3
         0     0     0];
 R{5}=[  0     0     0      
         2     1     3
         9    10     8
         7    10     9
         8     2     8
         7     5     5
         6     7    10
         4     3     3
         7     8     6
         2     6    10
         2     5     3
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