function model=CreateModel3047_1()

    PredList={[], 1, 1, 1, [2,4],2, [5 6], 7, [3,4,6], 5, 8, 7, 4, [8,12,13], 5, [7,13,15], 8, [9 14 17], [9 11 14],[15 17], [11,12,17], [3 11 20], [10 21 22], [3 14 21], [9 13 20], [10 16 24], [10 18 19], [19 22 26],[25 27 28], [15 24 27], [23 26 27], [29 30 31]};

    t=[0 10 10 10 6 5 10 4 9 8 4 2 7 7 8 4 7 8 2 10 7 2 1 3 9 8 7 10 9 7 9 0;0 3 7 8 4 8 3 2 1 2 2 5 6 2 7 9 2 5 5 9 6 7 6 6 10 7 6 2 8 7 5 0;0 8 6 9 3 5 1 2 6 2 9 9 6 10 8 10 5 7 10 3 5 8 2 3 9 5 8 5 3 5 5 0;0 7 1 9 5 7 9 2 3 5 3 5 5 5 3 3 2 8 9 10 3 9 10 1 4 2 7 6 2 7 4 0;0 6 1 8 1 6 9 6 3 2 6 9 9 6 4 10 7 3 1 3 1 3 3 10 1 4 1 7 9 4 6 0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[45 43 48];
%     nR=numel(Rmax);
    R=cell(M,1);    
%     N=numel(t);
    
   
    

    

   R{1}=[0     0     0     
         1     8     1
         8     9     3
         9     7     6
         4     2     8
         2     5     2
         7     7    10
         9     1     5
         7     1     1
         2     3     7
         4    10     3
         7     6     8
         6     9    10
        10     4     7
         3     9     5
         9     6     1
         4     9     3
         2     2     6
         1     3     1
         8     8     3
         4     4     6
         4     1     2
         4     4     2
         3     4     7
         3     4     6
         5     2     6
        10     3    10
         4     6     7
        10     6     4
         2     2     6
        10    10     9
         0     0     0      ];
   R{2}=[0     0     0      
        10     9     8
         9     4     7
         4     1     7
         8     4     3
        10     9     6
         7     3     7
         5     8     9
         3     6     1
         6     2     3
         4     6    10
        10     3     9
         5     8     7
        10     8     7
         7     5     9
         8     2     3
        10     2     7
        10     3     1
         9     7     6
         2     9     6
         9     7     9
         5     3     2
         3     2    10
         6     3    10
         9     7     4
         6     1     7
         3     5     6
         4    10     5
         2    10     4
         4     6     4
         2     8     1
         0     0     0      ];
 R{3}=[  0     0     0      
         4     5     3
         3     9     3
         5     4     3
         8     5     1
         2     1    10
         9     7     7
        10     8     3
         9     4     5
         5     4     8
         7     8     4
         5    10     3
         5     7     8
         1     1     8
        10     5     7
         1     7     7
         5     6     8
         4     2     6
         6     3     4
        10    10     1
        10     8     6
         1    10     2
         8     4     2
         5     3     2
         4     7     6
         9     4     1
         9     5     5
        10    10     1
         2     9     5
         9     4     2
         4     8     6
         0     0     0      ];
 R{4}=[  0     0     0      
         9     7     8
         1     5     9
         3     2    10
         3     7    10
         4    10    10
         5     4     3
         2     7     1
         5     9     9
         7     5     2
         6     7     1
         4     5     8
         7     2     6
         7     2     4
         2     2     6
         5     5     9
        10    10     7
         6     7     5
         6    10     6
         8     1     2
         3     4     3
         7    10     3
         3     1     3
         6     2    10
         7     8     7
         4     9     9
         3     7     4
        10     6     2
         5    10     8
         6     8     9
         7     8     4
         0     0     0      ];
 R{5}=[  0     0     0      
         2     1    10
        10     1     1
        10     8    10
         2     5     4
        10     3     7
         5     9    10
         3     7     1
         2     3     7
         3     7     5
         6     3     2
         1     2     5
         6     4     5
         1     6     9
         5    10     7
         4     8     3
        10     2     7
         4     1     7
         5     2     9
         7    10     9
         4     7     4
         2     2     5
         1    10     9
         4     2    10
         9     5     9
         7     4     5
         3     5     6
        10     1    10
         5     4     2
         9     3     4
         6     3     3
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