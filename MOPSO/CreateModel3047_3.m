function model=CreateModel3047_3()

    PredList={[], 1, 1, 1, 3,[3 4], [5 6], 2, 3, [2 5], [6,10], 2, 7, [6,9,12], 10, [9,12,15], [4 8 16], [7 14], [4 12],[18 19], [7,9,15], [11 13 18], [5 8 19], [11 17 20], [16 21 23], [16 21 23], [10 20 23], [11 14 26],[13 24 26], [13 15 27], [22 25 28], [29 30 31]};

   t=[0 2 4 7 6 9 9 4 9 6 7 8 6 1 8 3 4 5 10 1 7 9 8 4 4 1 9 9 10 6 4 0;0 4 3 8 6 3 8 8 2 10 4 6 5 1 3 7 3 8 3 2 2 8 8 9 8 9 1 9 4 4 3 0;0 5 2 9 5 2 7 3 3 5 7 7 2 4 6 7 8 6 10 9 7 7 4 3 8 6 9 2 8 4 8 0;0 6 6 7 2 6 4 10 5 7 4 5 5 10 1 2 4 10 1 7 5 3 1 10 6 1 9 7 1 10 9 0;0 6 4 3 4 4 1 1 6 7 4 2 5 7 9 8 6 2 6 9 10 8 8 10 2 3 4 7 1 8 4 0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[45 43 48];
%     nR=numel(Rmax);
    R=cell(M,1);    
%     N=numel(t);
    
   
    

    

  R{1}=[ 0     0     0     
         8     2     5
         6     8     7
         1     6     4
         2     1     6
         1    10     3
        10     9     2
         9     1     3
         5     7     8
        10     9     3
         8     4     3
         5     7     5
         2     5     3
         3     5     4
         9     1     7
         4     9     8
         8    10     5
         2     5     7
         8     6     4
         1    10     4
         8     5     2
         2     3     9
        10     9     3
         6     7    10
         3     2     2
         5     1     7
        10     2     3
         6     3     6
         1    10     6
         7     8     1
         5     2     5
         0     0     0      ];
   R{2}=[0     0     0      
         3     9     6
        10     5    10
         7     3     8
         2     2     4
         4     9     6
         4     8     6
         4     7     6
         6     2     2
         8     9     3
         5     5     6
         8     7     2
         5    10     5
         8     2     6
         4     7     9
        10     1     5
         8     1     7
         1    10     8
         8     6     2
        10     7     7
         4     3     8
         1     7     5
         9     1     5
         1     7     5
         6     2     3
        10     7     9
         6    10     6
         1     7     2
         5     4     4
         7     5     9
         3     1     2
         0     0     0      ];
 R{3}=[  0     0     0      
         7     2     5
         8     1    10
         8     2     5
         2     4     7
        10     1     1
         5    10     8
         6     4     8
         1    10     3
         5     1     4
         2     4     3
         4     3     1
         2     4     3
         4     8     5
         7     5     6
         6     1     9
         8     1     5
         6     6     5
         1     8    10
         3     7     4
        10    10     2
         9     8     7
        10     8    10
         4     4     5
        10     6     6
         7     7     1
         7     6     2
         7     7     8
         8     3     7
         7    10     8
         4     1     9
         0     0     0     ];
 R{4}=[  0     0     0      
         7     5     9
         1     1     1
         9     4     6
         2     4     3
         6     3    10
         6     3     6
         1     8     1
        10     2     9
         7     9     1
         7     4     2
         5     4     3
         8     7     8
         5     1     4
         5     8     1
        10     7     9
         5    10     4
         2     1     8
         9     7     9
         4     8     7
         4     9     6
         4     6     9
         9     9     1
         6     1     1
         1     8     1
         3     7     4
         8     9     2
         5     4    10
         3     6     5
         2     5     8
         3     2     7
         0     0     0      ];
 R{5}=[  0     0     0      
         8    10     5
        10     1     4
         4     9     5
         3     6     8
         1     1     8
         6     2    10
         6     6     3
         7     8     4
         6     1     8
         5     2     2
         2     3     4
         8     8     9
        10     8     3
         2     6     4
         9     9     5
         9     5     4
         1    10     1
         5     3     6
         8     7     3
         8     6     6
         9     3     1
         6     3     7
         6     7     5
         4     9     7
         6     1     4
         1     4     3
         8     9     5
         9    10     6
         9    10     2
         1     5     2
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