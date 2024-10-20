function model=CreateModel3047_4()

    PredList={[], 1, 1, 1, 2,3, 5, 6, [4,7], 6, [6,7], 3, [4 8 11], [5,10], [12 13 14], [5,10], [2 3 4], [8 9 17], [12 14 18],[8 16 17], [10,18], 14, [9 12 17], [7 20 22], [9 11 22], [18 20 25], [16 21 25], [13 23 27],[15 24 28], [15 26 27], [13 19 21], [29 30 31]};

   t=[0 1 5 5 3 8 5 6 7 4 8 5 5 5 5 9 1 5 8 2 2 5 1 4 10 6 3 2 3 7 6 0;0 6 7 6 10 4 6 9 4 7 10 5 5 8 3 6 8 1 3 4 1 5 4 4 5 4 2 5 7 2 3 0;0 5 3 4 1 9 9 8 4 1 8 3 6 8 10 4 1 3 1 3 5 2 7 10 8 10 8 9 4 5 4 0;0 3 6 10 3 10 10 6 2 2 5 9 8 7 7 7 3 4 10 6 2 9 2 2 1 6 8 3 10 7 6 0;0 5 6 7 9 8 6 6 8 10 7 10 1 8 8 7 8 8 6 7 10 9 4 2 3 2 9 7 3 1 10 0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[45 43 48];
%     nR=numel(Rmax);
    R=cell(M,1);    
%     N=numel(t);
    
   
    

    

  R{1}=[ 0     0     0     
         3     4    10
         2     2     2
         1     6     1
         2     2     9
         7     4     9
         6    10     4
         6     8     1
        10     3     7
         7     8     5
         8     4    10
         5     4     9
         3     5     7
        10     3     9
         9     3     3
         8     3     3
         1     5     1
        10     5     1
         7    10     6
        10     9     3
         6     3     8
         4    10     7
         1     8     2
         5     9     3
         4     6     2
         9     1     6
        10    10     2
         1     7     9
         4     1     1
        10    10     9
         5     3     3
         0     0     0      ];
   R{2}=[0     0     0     
         8     7     8
         1     5    10
         8     6     8
         2     8     6
        10     6     5
         6     2     7
         6     3     4
         3    10     5
         4     6     7
         6     6     9
         6    10     4
         5     3     7
         2    10     6
         3     6     2
         7     8     4
         7     7     2
         2     2     9
         9    10     7
         6     5     9
        10     1    10
         3     2     7
        10    10     6
         7     6     6
         8     5    10
         1     7     7
         6     3     9
         9     7     5
         6     3     1
         6     7     3
         8    10     6
         0     0     0      ];
 R{3}=[  0     0     0      
         2     3     7
         5     8    10
         2     7     9
         4     7     3
         2     7    10
         5    10     5
         8     2     9
         8     7     5
        10     5     6
         8     6     1
         4     3     8
         9     8     5
         6     3     2
         3     2     6
         2     9     1
         1     1    10
         2     1     7
        10     5     3
         2     1     8
         9    10     7
         2     7     3
         9     7     6
         6     4     1
         2     5     7
         8     1    10
         8     3     5
         1     9     4
         2     1    10
         7     4     1
         4     9    10
         0     0     0      ];
 R{4}=[  0     0     0      
         7     5     8
         9     7     3
         9     6     3
         2     3     8
         8     1    10
         6     3     2
         6     7     4
         4     2     1
         2     3    10
         4     9     9
         7     7     8
         6     7     8
         7     1     6
         8     3     4
         2     8     2
         5     7     9
         8     1    10
         4     7     8
         9     6     4
         7    10     5
         4     1     7
         6     8     3
         9     4     2
         3     7     4
         1     1     4
         7     8     2
         6     1     3
         3     7     6
        10     6     1
        10     6     5
         0     0     0      ];
 R{5}=[  0     0     0      
         8     9     5
         9     2     5
         7     8     3
         5     1     3
         9     7     8
         4     1     9
         4    10     8
         2     2     1
         7     1     6
         1     4     6
         3     7     3
        10     3     4
        10    10     9
        10     1     4
         1     5     5
         2     7     8
         5     5     5
         6     1     9
         5     7     7
         7     3     1
         6     7    10
         8     4     6
         8     8     3
         6     9     1
         2     8     1
         7     8     1
        10     5     4
        10     7     6
         8     1     9
         2     4     7
         0     0     0      ];

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
     
     
    model.T=T;
    model.M=M;
    model.N=N;
    model.t=t;
    model.PredList=PredList;
    model.nR=nR;
    model.R=R;
    model.Rmax=Rmax;
    model.Rmin=Rmin;

         

   
end