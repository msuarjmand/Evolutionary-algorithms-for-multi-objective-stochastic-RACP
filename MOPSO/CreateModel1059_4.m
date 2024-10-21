function model=CreateModel1059_4()

PredList={[],1,1,1,[2 3], 3,6,4,[5 6],[5,8],[5,7,8],[9,10,11]};
      t=[0     6     2    10     5     2     2    10     2     9     1   0
         0     9     7     6     5     4     3     2     6     1     9   0
         0     4     4     8     8     1    10     8     3     3     2   0
         0     5     9    10     9     6     7     8     2     1     1   0
         0     1     2     3     2     4     5     6     3     5     4   0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

   R{1}=[0     0       
         9     2
        10    10
         2    10
        10     5
         7     9
         1     2
         3     5
         6    10
        10     8
        10    10       
         0     0];
   R{2}=[0     0  
         7     8
         1     1
         9     3
        10     1
         7     1
         8     9
         8     7
         4     4
         7    10
         2     1
         0     0];
 R{3}=[  0     0    
         5     3
         4     7
         8     7
         8     2
         2     2
         5     5
         5    10
         7     4
         8     6
         8     3
         0     0];
 R{4}=[  0     0    
         8     9
         3     3
         6     9
         7     3
         9    10
        10     4
         6     2
         2     3
         2     7
         3     5
         0     0];
 R{5}=[  0     0   
         4     1
         9     1
         6     6
         6     8
        10    10
         3     2
         8     6
         8     5
         4     1
         6     4
         0     0 ];

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