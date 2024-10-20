function model=CreateModel2060_10()

PredList={[],1,1,1,2,5,[2 3],2,5,8,[6 7],[5 10],[3 6 12],13,[6 7 9],[7 9 10],[4,13,16],[15,16],[11,15,17],[14,15,17],[13,18],[19,20,21]};

t=[0 8 4 1 8 5 10 8 4 7 2 9 8 9 8 7 3 5 1 7 1 0;0 8 10 3 7 10 6 1 3 5 9 1 8 7 5 3 6 10 1 2 2 0;0 8 5 2 10 6 4 4 1 2 7 6 8 3 10 8 8 9 3 9 1 0;0 4 2 4 4 5 6 8 2 9 6 4 2 1 1 8 8 8 2 5 3 0;0 6 9 3 5 5 10 2 5 1 7 1 4 3 1 5 4 3 4 6 8 0];
     
    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[45 43 48];
%     nR=numel(Rmax);
    R=cell(M,1);
    

   R{1}=[0     0     0           
         3     7     2
         2     1     7
         2     7     7
        10     9    10
         5     4     9
         8     5     2
         4     1    10
         1     6     2
         7     9     3
         4     3     1
         7     1     4
         9     2     3
         2     7     6
         6     8     4
         6     7     2
         6     5     4
         5     4     2
        10     7     9
         2     6     2
         6     7     7
         0     0     0      ];
   R{2}=[0     0     0      
         8     7     8
         1     5     3
         2     1     7
         1     2     8
         9     1     6
         1     7     9
         7     3    10
         5     2     7
         9     6     1
         4    10     2
         1     7     1
         3     7    10
         8     3     5
         6     3     8
         9     1     5
         8     7     5
         2     6     5
        10     5     9
         8     9     9
         1    10     7
         0     0     0      ];
 R{3}=[  0     0     0      
         3     6     9
         3     8     7
         3     4     2
         8     5     8
         8     6     5
         9    10     7
         9     5     7
         3     7     7
         9     5     1
         7     6     3
         3     1     2
         4     9    10
         5     7     6
         6     3     7
         6     1     7
         4     8     1
         3     6     3
         8     7     3
        10     7    10
         6     8     3
         0     0     0      ];
 R{4}=[  0     0     0      
         3     9     9
         7     7     9
         7     7     8
         8     6     8
         9     2     4
         8     5     2
         1     6     4
         6     9     7
        10     3    10
         1     6     1
         6     9     8
        10     4     1
         2     6     8
         6     8     5
         2     3     1
         8     7     9
         4     1     2
         2     6     2
        10     6     3
         8     1     4
         0     0     0     ];
 R{5}=[  0     0     0      
         7     6     1
         7     2     7
        10     6     9
        10     5     5
         8     4     7
         3     1     6
        10     3     3
         5     4     8
         3     4     3
         7     2    10
         1     4     3
         1     3     6
         2     9     4
         3     4     3
         8     9     6
         5     3     2
         9     8     2
         4     7     1
         9     1     4
         8     8     9
         0     0     0      ];

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