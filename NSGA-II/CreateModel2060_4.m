function model=CreateModel2060_4()

PredList={[],1,1,1,2,4,6,[2 6],[5,7],6,[5,8],5,[4 12],[7 8],[10,12,14],8,[9,13,15],[9,12,16],[3,13,18],[7,11,16],[3,11,17],[19,20,21],[]};

t=[0 8 2 8 6 2 10 10 7 9 9 10 10 7 6 9 1 8 2 3 4 0;0 9 10 1 8 9 7 1 8 2 5 4 4 3 9 3 6 1 6 6 9 0;0 1 4 2 10 2 3 10 1 8 7 6 7 6 10 10 5 8 5 10 4 0;0 3 9 9 1 6 6 10 2 4 1 8 5 2 8 10 1 3 5 7 8 0;0 10 3 5 2 8 6 10 9 3 8 2 7 10 6 10 10 10 9 1 8 0];
      
    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[45 43 48];
%     nR=numel(Rmax);
    R=cell(M,1);
    

   R{1}=[0    0    0         
        10     3     8
         3     4     5
        10     3     3
         6     3     4
         6     7     4
        10     8     8
         8     3     1
         4     9     8
         1     8     9
         1     6     3
         9    10     7
         5     6     3
         4     3     7
         6     9     1
         9     9    10
         5     4     7
         7     4     4
         1     9     1
         4     5     9
         2     1     7
         0     0     0     ];
   R{2}=[0     0     0     
         9     6     7
         6     6     9
         1     7     1
        10    10     2
         5    10     5
         8    10     8
         2     7     9
         9    10     1
        10     2     2
         8     4     5
         8     1     8
         5     6     6
         8     8     8
         6     2     2
         6     5     7
         4     1     7
         8     4     1
         2     8     8
         1     6    10
         6     8     2
         0     0     0     ];
 R{3}=[  0     0     0     
         4     7     4
         2     7     3
         8     7     3
         2     8     3
        10     7     1
         1     6     9
         1     4     5
         9    10     6
         9     3     4
         6     6    10
         8     8    10
         6     3    10
         6     9     7
         2     6     8
         6    10     4
         1     4     6
         1    10     3
         4    10     8
         7     6     8
         9     2     1
         0     0     0     ];
 R{4}=[  0     0     0     
         3     7     4
         3     6     2
         7     9     4
         8    10     8
         9     1     4
         1     9     8
         3     6     3
         5     2     7
         4     3     9
         4     8     3
         1     6     5
         8     6     2
         5    10     2
         7     6     1
         6     1     1
         1     2     7
         4     2     5
        10     2     7
        10     7     9
         4     7     8
         0     0     0     ];
 R{5}=[  0     0     0     
        10     2     5
         8     6     7
        10    10     1
         8     5     6
         3     6     8
         8     2     7
         7     2     6
         8     2     9
         8     1    10
         4     3     4
         6     3     8
         8     4     3
         6     2     1
        10    10     1
         2     6     4
        10     4     4
         8     3     1
         3     4     2
         7     4     5
         5    10     8
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