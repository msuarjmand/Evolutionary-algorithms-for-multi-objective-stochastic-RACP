function model=CreateModel3048_3()

    PredList={[], 1, 1, 1, 4, 3, 5, 2, 2, 2, 5, [3 9], [5 8 10], 4, [4 10], [6 7 13], [3 14 15], [8 10], [9 14 15], [11 12 18], [17 19 20], [6 8 11], [12 14 18], [6 12 15], [13 20 23], [19 22 25], [11 13 18], [17 26 28],[21 24 28], [16 23 27], [7 21 28], [29 30 31]};

      t=[0 8 7 4 10 7 1 1 1 5 3 4 8 7 10 5 6 10 5 1 3 6 3 4 5 3 3 7 9 8 3 0
         0 8 3 5 5 6 1 5 10 10 7 2 5 7 8 5 9 5 3 9 10 10 8 6 8 3 4 5 6 9 6 0
         0 1 2 9 4 4 1 5 5 2 4 5 9 9 9 7 5 5 8 9 8 10 8 4 8 10 1 10 8 7 9 0
         0 9 2 7 6 1 3 1 3 8 9 9 1 2 1 10 1 4 7 6 10 5 6 7 4 1 3 1 4 10 2 0
         0 2 4 4 10 2 5 1 3 6 10 6 7 8 10 9 8 7 9 3 3 1 4 8 8 6 4 7 3 3 9 0
%          0 5 9 9 8 1 2 1 6 5 10 4 10 4 5 9 2 2 9 7 6 6 9 8 9 2 4 9 4 9 9 0
%          0 3 5 8 4 5 1 6 8 9 2 3 3 5 8 6 2 2 3 3 1 3 6 2 3 9 3 3 6 7 4 0
%          0 4 5 5 8 1 8 3 4 4 3 5 2 2 8 6 7 1 4 5 8 3 10 9 2 2 10 10 9 3 5 0
%          0 7 2 9 10 10 4 9 5 2 1 10 7 9 9 9 3 4 6 4 7 4 9 1 3 6 7 8 3 5 6 0
%          0 2 10 9 6 7 8 9 7 7 7 2 10 7 2 1 4 8 4 6 9 1 4 5 4 10 10 9 5 4 8 0
         ];
     
     N=numel(t(1,:));
    M=numel(t(:,1));
    
    Rmax=[49 55 55 53];
    nR=numel(Rmax);
    R=cell(M,1);
%     N=numel(t);
    
    

    

    R{1}=[ 0    0    0    0
        8    2    2    7
        7    5    5    4
        3   10    1    8
        7   10    8    7
        2   10   10   10
        4    6    1   10
        7    1   10    3
        6    5   10    2
        8   10    5    1
        7    9    5    5
        9    1   10    5
        5    3    7    6
        9    9    2    9
        2    9   10    3
        8    9    1    4
        5    7    7    3
        3   10    2    4
        1    4    6    3
        1    1    9    7
        7   10    9    1
        2    2    6    5
        6    5    4   10
        7    4    5    7
        7    6    3    2
        5    3    5    5
        8    3    5    9
        8    7    1    9
        1    5   10    2
        1    2    4    6
        9    2    4    4
        0    0    0    0 ];
    R{2}=[0     0     0     0
          1     4     5     9
     2     6     6     3
     6    10     5     5
     9     1     3     4
     9     3     4    10
     3     5     7     2
    10     3     9     8
     9     4     5     5
     9     7     7     4
    10    10     3     4
     1    10     9     8
     6     8     3     8
    10     6     4     7
    10     3     1     2
     1     7     4     1
     2     2     7    10
     5     2     8     1
     6     9     5     6
     2     8     9     2
     5     1     6     9
    10     2     3     2
    10     8    10     3
    10     2    10     9
     6    10     9     9
     6     7     2     1
    10    10     5     3
     6    10     9     4
     8     4     6     9
     9     7     4     4
     3     3     9     2
     0     0     0     0];
 R{3}=[0    0     0     0
       6     8     7     5
     6     5     2     1
     3     4     1     8
     7     4     9     2
     8    10     1     6
     4     6     1     4
     8     8     9     1
     4     9     9     7
     3     1     2     5
     6     6     4     8
     3     3     6     6
     7     9     6     9
     6     2     6     8
     1     9     6    10
     7     7     8     1
     9     9     3    10
     1     4     5     4
     1     2     1     6
     2     7     9     5
     8     1     3     3
     6    10     1     3
     2     5     1     7
     4     3     5     7
     9     1     2     5
     9     9     6     2
     3     8     6     8
     1     9     4     9
     1     1     8     1
     3     9     3     4
     1     9     3    10
     0     0     0     0];
 R{4}=[0     0     0     0
       8     3     6     4
     7     8    10     1
     1     9     9     2
     8     9     4     4
     7     1     8     3
     2     7     3     1
     9     8     1     6
     6     5     7    10
     3     8     4     9
     6     2    10     2
     7     7    10     1
     4     4     5     6
     9     8     7     4
     4    10    10     6
     2    10    10     6
     8     7     6     7
     7     4     9     5
     5     7     4     1
     3     8     4     7
     4     7    10     7
     2     3     5     1
     8    10     6    10
     3     8     6    10
     5    10     6    10
    10     5     7     6
    10    10     5     8
     4     1     2     3
     6     1     6    10
     2     4     6     1
    10     3     9     4
    0      0     0     0];
R{5}=[0     0     0     0
      5    10     8     9
     7     1    10     9
     3     2     9     9
     5     9     9     7
     1     6     6     9
     2    10    10     7
     6     7     6     3
     1    10    10    10
     5     2     5     5
    10     3     3     8
     4     7     8    10
     4    10     7     8
     7     7     8     7
     3     5     9     6
     6     1     4     1
     7     7     9     1
     7     8     5    10
    10     8     8    10
     6     9     4     3
     7     8     3     8
     2     2     9    10
    10     9     9     1
     7     3     3     7
     4     4     8     8
     2     8     9     6
    10     3     4     7
     7     1     9     4
     6     8     3     7
     5     3     3     9
     7     3     9     5
     0     0     0     0];

%      nR=size(R,2);

     
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