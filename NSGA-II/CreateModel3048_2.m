function model=CreateModel3048_2()

    PredList={[], 1, 1, 1, 4, [3 5], 2, 5, 3, 5, 7, 8, 4, [2 10], [8 10 11], [8 11 13], [7 12 14], [2 4 9], [15 16 18], [6 17 19], [6 14 19], [6 12 14], [13 17 22], [9 17 22], [9 11 22], [16 18 23], [19 25 26], [24 27],[20 24 26], [20 21 28], [7 13 18], [29 30 31]};

     t=[0 1 2 6 3 2 10 7 3 4 5 2 2 7 1 4 3 7 5 2 3 6 8 9 2 7 2 4 10 7 6 0
         0 8 6 8 4 7 7 7 3 3 5 4 5 3 2 6 1 3 7 8 9 3 2 9 2 1 1 1 8 10 8 0
         0 8 10 2 8 9 9 2 10 2 8 7 2 5 5 7 6 6 4 3 6 7 2 6 10 6 1 2 7 2 9 0
         0 4 1 7 10 5 2 1 6 4 7 3 5 10 2 8 7 8 10 2 6 10 6 3 2 1 1 8 6 5 8 0
         0 5 6 3 2 7 4 7 1 3 8 6 5 8 8 1 7 10 6 9 3 10 1 10 4 9 7 1 4 7 5 0
%          0 10 6 5 3 10 10 6 7 7 2 7 6 5 4 9 9 5 10 8 7 8 9 1 9 4 6 3 7 3 10 0
%          0 6 1 9 8 6 5 10 6 1 10 6 9 4 10 1 1 1 1 3 8 3 8 4 5 9 2 3 2 8 3 0
%          0 9 10 2 4 10 7 8 1 3 9 5 8 1 1 3 9 1 3 3 5 7 10 10 7 3 8 2 2 6 6 0
%          0 3 9 4 10 8 10 7 9 3 1 1 9 8 9 2 6 7 8 4 5 2 5 4 6 6 7 9 1 5 10 0
%          0 7 5 5 10 5 10 6 4 9 5 6 1 6 7 10 7 8 10 9 5 2 7 4 7 10 1 7 10 3 3 0
         ];
     
     N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[43 44 48 34]; 
    nR=numel(Rmax);
    R=cell(M,1);
%     N=numel(t);
    
    
    

    

    R{1}=[ 0    0    0    0
        6    3    1    6
        6    5    9    6
        4    9    5    7
        9    2    5   10
        3    5    6    9
        7    7    3    1
        9    9    9    8
        2    8    1    5
        4    6    9    9
        8    5    5    9
        3    8    6    5
        9    4    4    8
        2    9    4    8
        5    8    2    1
        3    1    9    6
        1   10    7    8
        3    5    6    7
        5    3    2    4
        5    3   10    3
        7    8    1    3
       10    7    4    5
        5   10    8    1
        8    9    9    7
        8    4   10    2
       10    6    8    2
        8    1    4    5
        3    3   10    3
        5    5    7    5
        1    3    3    4
        7    6    2    5
        0    0    0    0 ];
    R{2}=[0     0     0     0
          5     6     2     5
     2    10     4     4
     8     4     3     1
     5     8    10    10
     7     9     7     7
     5     8     9    10
     7     2     6     9
     5     6    10     3
     8     4    10     4
     5     3     7     9
     2    10     8     2
     5     6    10     4
     6     5     6     5
     4     5     7     5
     4     4     5    10
     5     4    10     6
     4     6     3     9
     9    10    10     7
    10     1     1    10
     8     8     2     4
     5     6     9     7
     2     1     2     7
     5    10     9     3
     8     4     1     9
     7     9     6     6
     3     6     9     9
     2     7     3     3
    10     7    10     1
     7    10     1     8
     8     4     3     4
     0     0     0     0];
 R{3}=[0     0     0     0
       8     7     5     8
     8    10     4     6
     1     5     1     8
     1     7     6     7
    10     4     1     6
     1     3     5     9
     1     1     3     9
     8    10     8     8
     3     2     7     6
     6     3    10     4
     9     4     6     8
     2     5     9     2
     6     1     7     8
    10     7     6     9
    10     4     3     6
     5     8     3     3
     2     3     2     4
     2     3     1     9
     9     7     8     1
     6     6     5     2
     3     2     8     4
     4     5     7     2
     3     2     5     4
     8     6     9     6
     9     4     7    10
     2    10     3     5
     3     9     3     1
    10     5     3     3
     9     2     3     2
     2     6     6     5
     0     0     0     0];
 R{4}=[0     0     0     0
       5     4    10     9
     7     4     3     7
     2     4     2     5
     2     4     1     4
     2     2    10     1
     4     4     6     2
     1     4     1     4
     4     9     6     3
     8     7     3    10
     3     1     7     1
     5     1    10     7
     7     6     3     5
     7     3     3     3
     3     5     8     1
     4     9     8     7
     1     4     2    10
     1     8     7     7
     6     4     5     1
     6     3     2    10
     2     4     3     3
     7     3     3     6
     3     2    10     3
     9     7     8     3
     2     8     6     6
     9     8     2     3
     4     9     3    10
     6     8     5     3
     5     7     3     5
     1    10    10     8
     6     4     8     6
     0     0     0     0];
 R{5}=[0     0     0     0
       3     5     8     2
     4     3     8     8
    10     3     2     7
     1     2     3     9
     1     9     8     8
     3     6     9     2
     9    10     9     1
    10     5     2     7
     4     2     1     8
    10     5     9     7
     4     6     9     8
     8     6     3     7
    10    10     2     5
     6     2     8     2
     6     4     1    10
     4     7     8     7
     2     2     7     6
    10    10     4     1
     1     8     9    10
     4    10     9     2
     2     5     1     6
    10     3    10     7
     6     9    10     6
     3     2     8     7
     7     3     2     4
     5     7    10     6
     7     5     5     6
     4    10     9     1
     6     6     4     5
     6     6     7     1
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