function model=CreateModel3045_10()

    PredList={[], 1, 1, 1, [2,4],3, 6, 4, [3,8], 7, [2,6], [8,11], [7,9,12], [4,10,11], [2,3], 12, [5,8,11], [7 12], [5 6 9],[16 18], [5,13,20], [10 15 21], [9 15 16], [16 17 19], [13 23], [19 22 25], [10 21 23], [26 27],[18 24 25], [18 24 25], [14 17 28], [29 30 31]};

    t=[0 8 1 2 6 1 3 5 6 5 1 8 4 5 1 3 9 4 4 10 8 7 5 3 2 3 6 3 4 10 2 0;0 4 9 4 10 4 1 3 4 6 4 8 2 4 8 3 9 9 8 3 2 7 2 9 3 1 10 1 5 6 1 0;0 4 6 10 5 1 2 7 6 2 6 7 1 3 3 4 6 2 5 8 9 3 7 10 2 8 8 7 8 6 5 0;0 10 9 6 9 6 2 2 4 7 5 1 10 3 9 10 7 3 8 1 9 5 10 4 1 6 10 9 6 6 3 0;0 6 8 4 2 10 6 3 1 10 10 7 3 7 5 2 4 5 1 9 1 10 5 8 6 9 8 2 1 7 7 0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[45 43];
%     nR=numel(Rmax);
    R=cell(M,1);    
%     N=numel(t);
    
   
    

    

   R{1}=[0     0     
         5     1
         8     8
         1     4
         6     7
         5     5
         1     4
         5     4
         9     2
         7     4
         8     4
        10     5
         4     8
         8     7
         9     9
         5     6
         6     9
         7     5
         5     3
         2     7
         3     6
         5     6
         1     4
         8     5
         1     2
         5     3
         6     1
         7    10
         5     7
         1     9
         3     5
         0     0     ];
   R{2}=[0     0     
         5     9
         6     4
         6     8
         6     4
         6     4
         2     6
         8    10
         7     3
         4    10
         4     8
         3     1
         2     9
         4     7
         9     6
         3     4
         1     4
         5     1
         2     5
         5     7
         1     6
         8     5
         4    10
         6     4
         7    10
         7     1
         8     5
         4     8
         1     8
         7     6
         3     7
         0     0      ];
 R{3}=[  0     0     
         8     4
         9     3
         4     2
         6     2
         9     1
         6     8
         6     6
         9     8
         7     8
         2     3
         6     2
         1     1
         5     5
        10     8
         1    10
        10     6
         2     1
         4     6
         3     3
         1     6
         5     5
         3     2
         2     4
         5     8
         3    10
         4     7
         6    10
         6     2
         5     7
         4     4
         0     0      ];
 R{4}=[  0     0     
         6     4
         2     5
         4     8
         4    10
         4     7
         4    10
         2     8
         6     6
         9     9
         4     9
         5     2
         2     8
         6     7
         6     4
         4     9
         9     1
         4     1
         5    10
         3     4
         8     6
         3    10
         6     4
         6     7
         9     8
        10     3
         1     6
        10     5
         7     7
         1     6
         3     6
         0     0      ];
 R{5}=[  0     0     
         3     9
         9     7
        10     2
         9     6
        10    10
         6     9
         2     8
         7     8
         2     3
         9     1
        10     5
         2     2
         3     2
         8     5
         5     7
         5    10
         1     3
         6     6
         6    10
         8     2
         1     8
         8     2
         2     9
         6     6
        10    10
        10     8
        10     8
         4     1
         8     3
         3     3
         0     0      ];

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