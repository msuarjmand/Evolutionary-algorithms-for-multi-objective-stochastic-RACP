function model=CreateModel3047_6()

    PredList={[], 1, 1, 1, 3,3, 2,[6 7],6,2, [5 8 10], 3, 6, 5, [11,13], [2,14],[4,5,10], [8 10 12], [4,16,18], [11 17 19], [4 14 15], [9 12 21],[9 13 16], [8,12,13], [11,16,18], [14 17 18], [9 25 26], [17 22 23], [15 24 27], [20 25 28], [19 23 24],[29 30 31]};

  t=[0 1 3 6 1 9 5 7 1 2 3 10 5 9 1 3 4 7 10 7 5 9 8 5 10 4 10 7 10 8 1 0;0 2 9 8 2 1 1 8 1 9 3 7 9 9 7 4 1 6 2 6 6 5 4 5 1 9 3 2 1 1 4 0;0 8 9 4 4 3 8 9 9 1 3 7 4 4 10 7 9 10 9 2 9 9 3 10 1 10 1 8 3 8 2 0;0 2 10 10 1 1 8 4 6 7 6 5 9 1 7 5 5 1 9 7 2 3 3 8 3 1 1 4 5 4 4 0;0 6 4 5 9 6 2 9 9 1 7 4 9 3 5 9 3 8 7 4 10 6 6 3 3 5 3 4 8 5 10 0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[45 43 48];
%     nR=numel(Rmax);
    R=cell(M,1);    
%     N=numel(t);
    
   
    

    

   R{1}=[0     0     0     
         9     5     1
         1     2    10
         7     5     1
         3     9     3
         9     7     4
         3    10     5
         4     4     2
        10     5    10
         9     8     2
         9    10     8
        10     7     7
         2     2     4
         4     4     2
         8     3    10
         7     3     9
         9     8     2
         3     4     4
         4    10     5
         3     9     8
         1     7     9
         7     9    10
         3     4     8
         1     7     7
         3     7     9
         2     4     4
         1     6     9
         6     2     8
         1     8    10
         9     9     5
         1     7     1
         0     0     0      ];
   R{2}=[0     0     0      
        10     4     1
         7     1     3
         8     2     4
         6     7     8
        10     6     2
         2     7     5
         8     5     7
         2     8     9
         1     5     6
         7     9    10
         6     1    10
         8     7     7
         1     9    10
         1     4     9
         6     6     4
         8     9    10
         2     6     9
         6     8     4
         6     6     8
         7     9     4
         1     5     2
         3     1     8
         2    10     7
         6     5     6
         8     6     3
        10     7     3
         1     1     8
         9     4     6
         9     8     4
         5     1     3
         0     0     0      ];
 R{3}=[  0     0     0      
         3     1     7
         6     6     2
         6     6     7
         1     1     1
         2     4     6
         6     8     5
         6     6     7
         6     5     5
         2     6     1
         2     4     5
         5     1     5
         7     8     1
         8     8     6
         7     6     4
         6     7     9
        10     6    10
         6     7     3
         3     3     3
         2     8     1
         3     8     8
         5     8     8
         6     2     7
        10     1     4
         4     8     7
         3     9     6
         7     6     7
         3     1     9
         2     4     4
         1    10     6
         6     9     1
         0     0     0      ];
 R{4}=[  0     0     0      
         3     5    10
         8     1     4
         3     6    10
         1     8     2
         7     9     1
         7     3    10
         7     8    10
         9     7     6
         2    10     1
         7     5     9
         4     1     9
         7     4     6
         4     4     5
         7     5     1
         4     1     4
        10     1     8
         4     3     6
         7     8     5
         8     9     9
         2     7     1
         7     4     3
         8     3     2
         8     1     1
         2     9     3
         2     3     9
         9    10     2
        10     2    10
         8     6     2
        10     4     5
         7     8     4
         0     0     0      ];
 R{5}=[  0     0     0      
         7     7    10
         9     6    10
         3     1     7
         3     9     2
         1    10     6
         2     2     5
         8     1     1
        10    10     4
         7     5     9
         6     8     8
         8    10     2
         1     9     5
         9    10     8
         7     3     3
         2     8     6
         6    10     1
         6     9     7
         7     9     9
        10     1     7
         6    10     4
         6     7     5
        10     6     3
         1     8     3
         7     6     8
         1     9     6
         7     2     6
         9     7    10
         1     6     8
         6     6     6
         3     3     8
         0     0     0     ];

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