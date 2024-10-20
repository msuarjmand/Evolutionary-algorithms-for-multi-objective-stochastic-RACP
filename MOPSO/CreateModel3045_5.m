function model=CreateModel3045_5()

    PredList={[], 1, 1, 1, 4,[2 3], 4, 4, 8, 2, [3 7], [7,8], [5,9], 7, [6 8 10], [9, 11], [9,10], [13 14 15], [6 16 17], [16 17], [12,19,20], [6 12 14], [5 11 22], [15 20 23], [5 21 22], [15 23 25], [2 11 13], [13 23 25],[18 27 28], [18 24 27], [18 26 28], [29 30 31]};

 t=[0 9 8 4 9 7 8 3 1 5 3 10 7 4 8 1 6 10 4 7 9 3 10 6 7 10 8 8 9 2 2 0;0 1 6 10 6 10 5 1 9 8 7 1 2 1 1 7 1 9 1 3 2 4 8 6 7 7 8 9 1 4 3 0;0 10 10 9 8 4 10 6 2 6 8 1 6 2 5 7 3 10 8 2 3 4 7 2 4 4 2 3 3 1 1 0;0 4 6 2 8 5 7 3 8 7 9 6 9 7 6 4 5 9 4 10 9 5 10 7 9 2 3 9 9 6 1 0;0 6 7 7 2 3 4 6 2 10 7 4 2 10 4 5 2 4 2 9 9 1 2 5 8 10 10 9 10 5 2 0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[45 43];
%     nR=numel(Rmax);
    R=cell(M,1);    
%     N=numel(t);
    
   
    

    

  R{1}=[ 0     0    
         7     1
        10     3
         2     6
        10     8
         6     7
         2     4
         8     5
         7     9
         4     7
         6     3
         1     6
         1     9
         8     2
         2     9
         7     2
         8     1
         8     1
         8     1
        10    10
         3     9
        10     1
         6     7
         7    10
        10     3
         3     1
        10     4
         2     8
        10     7
        10     5
         2    10
         0     0     ];
   R{2}=[0     0     
         1     1
         6     8
         2     6
         6     1
         6     6
         7     5
         3     5
         4     7
         4     6
         7     8
         6    10
         7     8
         2     5
         7     1
         8    10
         4     4
         4     8
         7     9
         3     9
        10     6
         2     4
         6     8
         1     5
         4     6
         4     5
        10     5
         3     2
         5     3
         5     9
         9     9
         0     0     ];
 R{3}=[  0     0     
         5     6
         7    10
         8     7
         2     2
         6     1
         2     1
         1     2
         1     6
        10     2
         6     1
         2     6
         7    10
         6     2
         4     2
         7     2
         4     1
         3     8
         3     5
         4     6
         1     7
         4     9
         6     2
         6     3
         1     1
         6     2
         5     1
         7     2
         8     8
         2     9
        10     6
         0     0     ];
 R{4}=[  0     0     
         9     9
         3     7
         5     4
         4     1
         7     2
        10     3
         3     9
         8    10
         6     5
         8    10
         9     1
         3     9
        10     6
         1    10
         6     9
         9     2
         2     4
         5     1
         4     5
         6     5
         9     4
         4    10
         7     5
        10     8
         9     7
         9     9
        10     3
         2     8
         7     5
         8     1
         0     0     ];
 R{5}=[  0     0    
         9     7
        10     8
         2     7
         6     8
         8     6
         2     8
         1     6
         5    10
         2     2
        10     9
        10     2
        10     8
        10     5
         7     7
         8     4
         4     5
         1     8
         5    10
         6     9
         6     7
         8    10
         7     7
        10     8
         7     9
         9     3
         2     2
         9     9
        10     5
         3     8
        10    10
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