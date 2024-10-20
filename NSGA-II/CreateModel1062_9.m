function model=CreateModel1062_9()

PredList={[],1,1,1,3,4,4,3,[2,4,8],[5 7 8],[6 7],[9,10,11]};
      t=[0     1     9     2    10     6     6    10     6     9     5   0
         0     5     1     6    10     6     2     7     7     5     9   0
         0     9    10     1     6     8    10     5     4     2     5   0
         0     7     2     8     3     1     6     9     3     5     4   0
         0     6     6     9     2     7     5     6     6     4     4   0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23 28];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

R{1}=[   0     0     0     
         4     4     1
         3     8    10
         9     6     6
         9     8     7
         5     3     4
         1     7     1
         6     1     9
         2     9     2
         6     7     4
         4    10     7       
         0     0     0      ];
  R{2}=[ 0     0     0     
        10     4    10
         6     4     5
        10    10     1
         3     8     1
         4     5     2
         7     1     9
         1     8     5
         8     7     6
         5     1     5
         9     2     1
         0     0     0     ];
 R{3}=[  0     0     0     
         9     3     6
         3     5     6
         3     1     7
         6     9     4
         5     7     1
         4     3     5
         7     6     1
        10     1     8
         7     9     1
         3     5    10
         0     0     0     ];
 R{4}=[  0     0     0     
         8     6     9
        10     5     4
         6     8     5
         3     3     9
         3     1     8
         8     5     3
        10     7     8
         4     2     3
         8     5     3
         2     7     1
         0     0     0     ];
 R{5}=[  0     0     0     
         4     5    10
         5     3     6
         4    10     3
         3     2     6
         3     9    10
        10     1     9
         9     4     5
         4     8     5
         5     7     4
         6     2     1
         0     0     0     ];

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