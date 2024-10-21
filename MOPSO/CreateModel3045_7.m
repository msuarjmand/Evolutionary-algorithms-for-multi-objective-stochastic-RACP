function model=CreateModel3045_7()

    PredList={[], 1, 1, 1, 2,5, [2,3], 7, [4,6,7], [2,4], [4,6], 11, [9,12], [8,13], 6, [3, 12], [14 15 16], [7 11 15], [13 16], [3 5], [9,10,11], [5 8], [9 10 12], [16 20 21], [17 19 24], [13 21 23], [8 15 26], [10 19 22],[21 23 28], [18 19 27], [18 23 25], [29 30 31]};

   t=[0 9 1 3 1 9 8 6 5 6 9 3 5 5 7 10 2 3 1 10 9 3 5 1 1 10 1 7 4 4 8 0;0 9 3 3 9 5 7 3 4 5 3 2 8 1 3 9 1 1 2 10 10 8 4 1 5 10 6 3 2 2 5 0;0 8 2 6 2 10 6 2 9 1 10 9 5 9 2 5 2 1 2 3 7 7 6 1 10 7 10 7 1 1 8 0;0 10 2 4 7 1 6 9 9 5 6 8 10 7 4 4 3 4 10 3 3 6 7 1 6 1 6 4 8 9 4 0;0 7 3 3 1 7 5 2 1 5 9 8 6 4 2 7 10 9 10 4 1 9 1 10 3 3 5 7 9 3 6 0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[45 43];
%     nR=numel(Rmax);
    R=cell(M,1);    
%     N=numel(t);
    
   
    

    

   R{1}=[0     0     
         2     5
         9    10
         1     8
         4     4
         3     7
        10     8
         9     2
         8     6
        10     9
         8     7
         9     3
         4     4
         8     6
         7     1
         3     5
         4     3
        10     5
         1     9
         7     4
         3     6
         9     1
         3    10
         1     3
         7     4
         2     7
         8     8
        10     2
         4     6
         3    10
         1     8
         0     0     ];
   R{2}=[0     0      
         1     5
         1     4
         5     3
         5    10
         5     3
         2     4
         4     3
         9     3
         8     5
         5    10
        10    10
         1     6
         2     6
        10     1
         2     6
         4     9
         3     5
         1     4
         2     2
         5     7
         3    10
         8     7
         3     5
        10     7
         4     6
         2     8
         6     7
         8     6
         5    10
        10     7
         0     0      ];
 R{3}=[  0     0      
         7    10
         8     6
         9     1
         4     5
         8     2
         6    10
         4     6
         5     9
         7     7
         3     5
        10     1
        10    10
         3     7
         4     2
        10     4
         8     9
         8     6
         7     6
         9     5
         5     2
         9     3
         2     3
         6     6
         8     6
         3     5
         6    10
         4     4
         9     7
         7     3
        10     3
         0     0       ];
 R{4}=[  0     0      
         4     8
         9     2
         6     6
         6     9
         3     2
         2     7
         7     1
        10     5
         2     8
         2     2
         1     9
         9     7
         5     9
         5     7
        10     5
         5     7
         6     5
         7     1
         1     7
         6    10
         5     5
         9     7
         7     6
         2     3
         7     7
         2     2
         4     8
         6     3
         9     2
         7     8
         0     0      ];
 R{5}=[  0     0      
         3     5
         2     5
         7     1
         3     7
         3     6
         9     3
         4     5
         2     2
         2     3
         4     8
         9     1
         6     3
         3    10
         4     5
         9     2
        10     9
         5     1
         3     2
         6     3
         2     8
         9     9
         3     3
         2     7
         1     9
         4    10
         6     9
         9     4
         9    10
         1     5
         4     2
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