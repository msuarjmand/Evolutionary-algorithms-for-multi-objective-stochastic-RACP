function model=CreateModel1059_2()

PredList={[],1,1,1,[2 3],4,[3 6],2,[5,7,8],2,[5,7],[9,10,11]};
      t=[0     1     1     7     5     2     4     3     2    10     5    0
         0     7     9     6     5     4     6     5     4    10     6    0
         0     1     9    10     9     9     5     1     2     1    10    0
         0     1     8     7     1     9     7    10     5     8     5    0
         0     6     2     9     2     1     7     2     4     3    10    0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

   R{1}=[0     0    
         7     3
         4     4
         9     5
         6     3
         4     9
        10     2
         9     3
         6     2
         7     3
         6     5      
         0     0];
   R{2}=[0     0   
         4     6
        10     3
         5     7
         2     8
        10     3
        10     2
         5     3
         2     4
         3     5
         5     6
         0     0];
 R{3}=[  0     0    
         1    10
         3     6
         9     6
         1     3
        10     5
         8     7
         5     7
         6     4
         3     4
         5    10
         0     0];
 R{4}=[  0     0   
         1     2
         9     7
        10     5
         8     8
         1     8
         3    10
         4     9
         7     4
         2     7
         8     2
         0     0];
 R{5}=[  0     0    
         1     2
         8     3
         6     9
         5     1
        10     5
         7     2
         7    10
         9     8
         9     6
         6     5
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