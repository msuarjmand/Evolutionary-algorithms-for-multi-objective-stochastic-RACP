function model=CreateModel3045_9()

    PredList={[], 1, 1, 1, 3,2, 5, 2, [3,4,8], 4, [3,6], [5,6], 4, [8,13], [7,14], [10,12,13], [14 16], [2 10], [9 17],[6 10 14], [5,8,18], [12 13 18], [16 20 22], [11 12 18], [15 20 22], [19 20 21], [11 22 26], [23 24 26],[7 27 28], [16 21 25], [9 11 15], [29 30 31]};

  t=[0 5 1 6 10 7 3 4 10 4 5 1 2 6 5 7 9 3 8 7 10 3 7 6 10 5 1 7 7 5 9 0;0 7 7 3 1 10 6 9 8 3 5 5 8 3 8 10 9 1 6 3 1 6 9 4 4 9 7 8 8 7 2 0;0 1 6 7 5 3 5 7 1 6 9 2 7 6 10 10 10 10 8 1 2 1 8 3 5 3 3 9 5 7 3 0;0 2 9 10 6 6 4 3 6 8 6 7 1 7 4 4 5 10 1 8 10 7 1 1 4 7 2 5 4 4 1 0;0 2 5 6 8 1 2 5 7 1 7 8 10 3 4 6 3 8 1 5 9 7 1 2 7 6 5 6 4 6 8 0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[45 43];
%     nR=numel(Rmax);
    R=cell(M,1);    
%     N=numel(t);
    
   
    

    

   R{1}=[0     0    
         4     9
         5    10
        10     7
         2     9
         9    10
         6     7
         4     8
         9     5
         6     5
         5     1
         9     9
         4     4
        10     9
         6    10
         8     5
         7     4
         3     1
         9    10
         9     8
         1     5
         7    10
         3     8
         8     7
         5     6
         8     9
         6     1
         6     5
         3     4
         4     2
         3     2
         0     0     ];
   R{2}=[0     0      
        10    10
         1     5
        10     9
         7     9
         1     4
         1    10
         9     3
         5     2
         9     5
         3     3
         9     1
         3     7
        10     7
        10     7
         6     7
        10     9
         7     1
         8     7
         6     6
         2     7
        10     9
         6     3
        10     1
         4     4
         3     8
         8     5
         4     5
         2     2
         9     3
         7     7
         0     0      ];
 R{3}=[  0     0      
         9     4
         8     6
         6     3
        10     7
         5     4
         5     5
         3     5
         7     4
         5     3
         3     8
         7     3
         8    10
        10    10
         8     3
         6     3
         5     3
         2     3
         3     3
         8     5
        10     9
         7     7
         9     2
         3     9
         7    10
         4     2
         1     9
         9     3
         5     5
         1     4
        10     5
         0     0      ];
 R{4}=[  0     0      
         4     8
         1     1
         7     3
         1     3
         3    10
         5     7
         3     6
         5     8
         6     2
         1     9
         9     6
         9     1
         1     2
         2     3
         1     1
         6     7
         8     1
         8     5
         3     5
        10     3
         5     6
         1     3
         2    10
         4     1
         9     6
         1     4
         4     4
         7     1
         9     7
         1     6
         0     0      ];
 R{5}=[  0     0      
         8     2
         8     7
         3     1
         2     2
         4     2
         8     6
         2     5
         5     5
         1     8
         1     6
         8     7
         9     5
        10     4
        10     3
         7    10
         2     3
         1     8
         8     5
         8     4
         7     7
         8     1
         3     1
         8    10
        10    10
         5     9
         3    10
         5     7
         7     8
         9     7
        10     2
         0     0     ];

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