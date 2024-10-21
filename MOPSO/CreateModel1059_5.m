function model=CreateModel1059_5()

%     PredList={[], 1, 1, 1, [3 4], [2 5], [2 3], [4 5], [6 8], [4 7], [3 8 9], [9 10 11]};
PredList={[],1,1,1,2,3,6,[2 3],[5 7 8],[4,6],[2,6],[9,10,11]};
      t=[0     5     1     7     6     8     6     7     4     6     1   0
         0     2     3     1     2     1     8     6     7     5     1   0
         0    10     1     1     9     1     8     4     8     9     1   0
         0     4     6     8     4     7     8     1     2     8     8   0
         0     3     8    10     3     7     3     8     2     8    10   0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

   R{1}=[0     0   
         2     5
         8     1
         4     3
         6    10
         2     2
         7     9
         3     6
         7    10
         7     1
         8     5       
         0     0];
   R{2}=[0     0    
         2     5
        10    10
         1     2
         8     3
         9     2
         9     2
         1     9
         4     6
         3     6
         9     2
         0     0];
 R{3}=[  0     0   
         9     5
         7     1
         4    10
         6    10
         5     5
         1     5
         3     4
         2    10
         2     4
         3     2
         0     0];
 R{4}=[  0     0    
         8     3
         4     4
         3     9
         5     1
         1     1
         2     2
        10     7
        10     8
         6     7
         1     5
         0     0 ];
 R{5}=[  0     0    
         6    10
         3     8
         8     5
         2     5
         7     5
         2     4
         4     6
         7     6
         8     9
         1     8
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