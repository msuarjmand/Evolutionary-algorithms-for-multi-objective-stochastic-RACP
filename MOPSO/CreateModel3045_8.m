function model=CreateModel3045_8()

    PredList={[], 1, 1, 1, 3,[2,3], [4,5], 7, [3,4], 6, [5,6,9], 7, [8,10,12], [2,12], [9,10,14], [2,5,9], [4 6], [13 15 17], [8 11 17], 8, [11,16,20], [15 16 19], [13 14 17], [18 22 23], [21 24], [12 19 21], [14 26], 7,[10 27 28], [25 26 28], [11 16 28], [29 30 31]};

  t=[0 9 10 2 8 8 3 1 10 5 5 1 1 4 9 4 10 4 2 8 4 2 2 6 4 5 7 2 3 2 4 0;0 8 8 10 9 7 6 3 9 3 6 10 5 4 7 1 9 1 3 9 10 6 8 3 1 9 1 6 10 6 8 0;0 9 1 8 5 4 2 9 8 3 3 7 4 10 7 10 7 4 9 6 2 7 8 5 9 7 9 6 4 7 4 0;0 6 2 10 5 9 2 6 8 3 7 10 2 4 8 1 6 9 6 6 8 7 9 10 8 10 2 8 2 3 5 0;0 8 8 4 6 8 7 7 3 7 8 9 9 5 9 9 5 1 4 8 4 8 6 2 9 7 3 8 3 6 3 0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[45 43];
%     nR=numel(Rmax);
    R=cell(M,1);    
%     N=numel(t);
    
   
    

    

   R{1}=[0     0     
         4    10
         7     6
        10     7
        10     7
         6     8
        10    10
         5     8
         1     9
         3    10
         1     8
         9     2
         5     4
         1     1
         2     7
         3    10
         3     8
         9     8
         8     2
         4     4
         4     6
         6     5
         6     9
         4     9
         9     4
         3     5
        10     7
         4     6
         7     2
         3     1
         1     2
         0     0      ];
   R{2}=[0     0     
         3     7
         5     9
         6     1
        10     4
         8     3
        10     5
         1     4
         7    10
        10     2
         3     3
        10     9
        10     7
         2     4
         8     4
         2     7
         2     8
         4     8
         4    10
         4     1
         3     5
         4     1
         8     8
        10     8
         1     6
         3     1
         6     1
         9    10
         8     3
         6     9
         1     4
         0     0     ];
 R{3}=[  0     0      
         5     9
         2    10
         8     5
         5     8
         3    10
         4     9
         5    10
         5     5
         7     9
         7    10
         1     4
         1     2
         5     9
         8     6
         9    10
         7     5
         4     3
         9     7
         3    10
         1     7
         8     4
         8     5
         9     5
         8     1
        10     6
         6     9
        10     6
        10     3
         6     9
         9     8
         0     0       ];
 R{4}=[  0     0     
         8     9
         6     6
         6     2
         3     6
         6     8
        10     5
         5     3
         7     3
         5    10
         8     5
         3     9
         3     7
         1     9
         8    10
         9     7
         8     7
         8     7
         2     1
         6    10
         9     9
         9     7
         4     4
         3     4
         2     1
         7     6
         6     7
         1     8
         5     1
         5     2
         8     5
         0     0      ];
 R{5}=[  0     0      
         4     4
        10     9
        10     3
        10     1
         3    10
         2     7
         6     3
         6     5
         7     8
         4     6
         4     5
         4     7
         2     2
         1     9
         6     9
         4     5
        10     8
         8     5
         6     8
         8     2
        10     6
         5     7
        10     2
         9     1
         9     4
         1     5
         4     8
         3     2
         7    10
         2     3
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