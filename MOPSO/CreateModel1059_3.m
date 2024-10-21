function model=CreateModel1059_3()

PredList={[],1,1,1,2, 5,[2 3],2,[4 6 8],[6,8],[6,7],[9,10,11]};
      t=[0    4     7     1     4     7     2     3    10    10     1   0
         0    8     2     6     5     4     6     3     8     9     5   0
         0    7     2     9    10     2     3     7     4     9     4   0
         0    6    10     7     2     5     4     3     6     3     2   0
         0    7     2     2     9     5     6     9     2     6     2   0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

   R{1}=[0     0    
         5     6
         1     7
         6     5
         5     9
         7     8
         7    10
         7     6
         1     4
         1     2
         4     7       
         0     0];
   R{2}=[0     0    
         8     6
         5    10
         1     7
         3    10
         2     3
         3     7
         5     3
         6     7
         5     7
         9     1
         0     0];
 R{3}=[  0     0   
         3    10
         3     1
         7     5
         9     5
         4     5
         8     8
         7     4
         1     8
         7     5
         4     1
         0     0];
 R{4}=[  0     0    
         2     3
         8     8
         5     2
         2     3
         4     1
         7     6
         2     7
         8     6
         3     5
        10     7
         0     0];
 R{5}=[  0     0    
         7     5
         7     7
         7     8
        10     4
         3     7
         8     5
         3     9
         2     9
         7     3
         5     7
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