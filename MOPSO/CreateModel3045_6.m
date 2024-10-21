function model=CreateModel3045_6()

    PredList={[], 1, 1, 1, 2,2, [3,4], [5,6], 3, 4, 2, [5,6,9], 8, [10,13], [4 8 11], [7, 13], 11, [8 17], [9 14 16], [7 12 18], [3,14,18], [6 7 17], [10 12 22], [13 15 22], [9 14 24], [12 18 25], [20 21 26], [5 10 22],[16 27 28], [21 23 26], [15 19 28], [29 30 31]};

t=[0 7 4 2 8 1 9 8 2 9 6 1 7 6 8 1 2 5 2 7 10 8 10 7 2 4 8 1 7 2 9 0;0 6 1 1 5 8 2 1 2 8 6 4 7 5 1 3 4 10 3 8 1 10 10 5 9 5 7 3 7 7 1 0;0 10 3 1 3 4 4 9 4 7 1 6 6 2 8 8 9 6 2 2 9 2 10 8 7 9 7 2 3 10 4 0;0 7 5 8 3 1 6 10 4 5 10 7 3 9 4 10 2 6 8 10 7 1 7 3 4 9 5 3 8 4 10 0;0 5 4 3 3 4 6 8 7 4 5 8 8 2 5 8 9 9 7 2 9 1 2 10 9 3 2 10 1 8 6 0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[45 43];
%     nR=numel(Rmax);
    R=cell(M,1);    
%     N=numel(t);
    
   
    

    

   R{1}=[0     0     
         3     8
         4    10
         6     7
         6     3
         7    10
         6    10
         2     5
         5     8
         4     6
         1    10
         3     4
        10     9
        10     9
         8     4
         2     8
         6    10
         1    10
         7     1
         9     1
        10     6
         2     1
         4     2
         8     1
         5     8
         6     2
         9    10
        10     8
         1     9
         4     5
         6     4
         0     0       ];
   R{2}=[0     0      
         7     7
         9     3
         9     8
         9     2
         9     6
         5     1
         5     2
         1     5
         5     8
         6     7
         2     3
         4     7
         3     7
         6     4
         5     9
         5     2
         1     3
         3     6
         3     9
         8     9
         7     6
         2     1
         2    10
         1     8
         8     4
         6     9
         9     7
         2     3
         3     2
         1     9
         0     0      ];
 R{3}=[  0     0      
         4     3
         4     1
         5     7
         8     3
         2     5
         7     2
         7     9
         9     4
         4     3
         2     8
         9     1
         8     1
         6     6
         8    10
         8     7
         6     7
         9     7
         7    10
         6     3
         7     9
        10     1
         7     9
         9     1
         2     5
         8     6
         3     2
         5     8
         8     3
         4     2
         1     7
         0     0      ];
 R{4}=[  0     0     
         6     6
         8     9
         3     6
         3     4
         4     9
         9     1
         1     8
         3    10
         4     5
         4     5
         8     2
         9    10
         1     9
         1     5
         1     5
         2     2
         1    10
         5     1
         3     2
        10     4
         8     1
         5     2
         1     8
         6     5
         7     4
         7     3
         5     5
         2     2
         9     4
         3     3
         0     0      ];
 R{5}=[  0     0      
         9     2
         7     9
         4     8
         6     1
         3     9
         3     3
         3     2
         7     7
         6    10
         1     9
         1     7
         3     4
         5     3
         3     5
         7     4
        10     9
         8     1
         7     7
         8     4
         8     4
         6     7
         8    10
         4     9
         7    10
         3     1
         3     2
         1    10
         4     1
         2     7
         5    10
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