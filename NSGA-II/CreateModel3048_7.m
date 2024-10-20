function model=CreateModel3048_7()

    PredList={[], 1, 1, 1, 4, 5, 6, [2 4], 2, [3 9], [5 9], [7 8], 8, [12 13], [3 4], [2 6], 13, [7 10 11], [6 8 11], [3 12 13], [15 19 20], [17 19 20], [5 10 17], [14 21 23], [9 14 16], [11 20 25], [22 23 25], [12 16 17], [24 26 27], [19 25 28], [18 24 27], [29 30 31]};

      t=[0 1 8 6 6 4 8 7 9 4 1 6 5 6 10 10 2 6 6 5 3 2 9 10 9 2 8 7 3 7 2 0
         0 8 2 6 10 2 10 9 5 7 8 7 6 7 8 8 5 2 2 7 1 1 6 10 2 6 2 8 2 9 1 0
         0 1 1 9 6 4 2 1 2 1 1 6 5 2 3 4 2 8 10 5 1 2 2 2 4 4 1 8 7 8 10 0
         0 9 10 4 8 1 8 3 10 1 1 4 9 8 8 3 8 3 2 5 5 2 3 3 2 3 3 8 9 2 7 0
         0 10 4 5 10 6 8 1 4 8 7 1 8 2 10 1 2 7 3 7 7 2 1 4 8 5 4 2 6 6 10 0
%          0 10 3 1 3 4 6 5 3 10 7 8 8 2 9 8 3 10 8 1 8 4 10 1 9 5 7 7 8 4 2 0
%          0 9 4 2 5 2 2 1 1 6 6 4 1 7 1 3 3 5 5 4 6 4 8 7 4 4 10 5 2 6 10 0
%          0 8 5 7 5 3 6 9 3 2 8 7 1 4 4 4 6 7 8 8 2 3 6 5 7 6 10 3 10 4 8 0
%          0 6 7 4 8 10 3 2 1 9 8 8 1 7 4 6 1 8 4 7 7 3 4 10 3 8 5 1 6 5 6 0
%          0 2 1 9 9 7 2 1 6 4 8 2 8 8 7 3 5 5 3 2 2 9 2 5 6 5 3 9 7 2 5 0
         ];
     
     N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[41 44 44 41];
    nR=numel(Rmax);
    R=cell(M,1);
    
    
    
%     N=numel(t);

    

 R{1}=[ 0    0    0    0
        4    6    3    4
        2    6    6    2
        6    7    7    6
        1    9    6    2
        7    9    5    6
        9    6    1    6
        7    3    8    2
        7    5    1    7
        5    4    7    8
        7    7    2    5
        4    5    9    5
        4    2    2    7
        2    5    6    3
        5    7    4   10
        6    8    2    1
        4    9    8    1
       10   10    7    3
        7    5    8    3
        2    8    3    5
        6   10    6    2
        2   10    4    8
        6    6    7    3
        9    5    9    4
       10    8    8    5
       10    9    8    9
        1   10    7    4
        7    1    1    7
        8    5    5    3
        5   10   10    7
        8    2    3    6
        0    0    0    0 ];
   R{2}=[0     0     0     0
         7     8     4     8
         1     8     7     7
        10     6     7    10
         9     4     1     3
         6     6     5     2
         1     5    10     2
         5     7     2     2
         2     3     1     2
        10    10     1     4
         4     9     3     5
         9     2     7     6
         2     3     6     9
         8     1     8     4
         8     1     3     7
         4     3     1    10
         6     3     8     3
         6     9    10     8
         1     8     4     5
         9     1     1     4
         9     6     1     8
         9     3     1     3
         7     2     1     6
         3     8     7     4
         2     5     9    10
         4    10     4     7
         4     3    10     9
         7     1     3     1
         6     3     4     1
         3     1     2     7
         9     1     7     3
         0     0     0     0];
 R{3}=[  0     0     0     0
        10     4     5     7
         6     2     4     9
         1     5     5     5
         4     5     4     1
         9     8     4    10
         5     9     2     4
         4     5    10     4
         3    10    10     9
         9     2     8    10
        10     7    10    10
         5     8     3     4
         6     3     7     5
         4     4     8    10
         2     8     8     3
        10     6     4     2
         6     9     4     9
         2     2     2     7
         4    10     9     1
         1    10     4     4
         7    10     9     5
         3    10     9     8
         9    10     2     5
        10    10     9     2
         5     6     2     6
         7     4     9     6
         3     2     6     2
         3     7     3     4
        10     5     1     4
         6     1     9     3
         7     8     3     7
         0     0     0     0];
 R{4}=[  0     0     0     0       
         3     4     7     7
         6     2     7     2
         8     4     2     4
         4     4     7     7
         9     2     9     1
         5     6     4     2
         6     9     9     4
         7     8     6     9
         6     9     9     4
         6     8     8     3
         7     9     6     1
        10    10    10     9
         7     7     6     8
         4     9     8     3
         5     9     5     3
         4     8     1     6
         1     2     6     4
         7     7     9     1
         3     9     5     9
         6    10     8     3
         3     1     2     5
         1     2     9     8
         9     2     1     6
         1     6     3     8
         3    10     7     5
         8     9     2     2
         9     3     9     8
         9     1    10    10
         7     2     1    10
        10    10     5    10
         0     0     0     0];
 R{5}=[  0     0     0     0
         4     7    10    10
        10     1     2     6
         3     8    10     3
         3    10     9     2
         8     8     2     8
         6     5     5     5
         5     4     9     8
         3     2     5     7
         4     2     3     5
        10     4     2     5
        10     6     2     2
         6     5     1     7
         6    10    10     7
         7    10     1    10
         5     3     5    10
         8     8     4     6
         2     1     1     4
         7     8     1     6
         8    10     7     1
         8    10     4     1
         4     3     4     8
        10     2     8     4
         8     3     4     6
         1     2     5     9
         6     8     6     7
         4     5     5     8
         7     9     4    10
        10     9     7     2
         4    10     2     4
         9     1     1     4
         0     0     0     0];

%      nR=size(R,2);

     
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