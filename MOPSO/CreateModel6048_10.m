function model=CreateModel6048_10()

    PredList={[], 1, 1, 1, 2, 2, 2, 5, 6, 5, 5, 9, 11, 12, [8 11], 12, [10 12], 6, 7, 13, 19, 4, 14, 14, 17, 13, [13    18    22], [9    15], [16    17    23], [8    14    20], [4     9    19], [21    24    26],...
              [4    29    30],[17    22    32],[16    23    24],[10    24],[16    27    28],[23    27    31],[26    28    29],[30    31    35],[7    10    22],[36    37],[ 18    39    40],[ 11    25    36],...
              [39    41    44],[33    38    40],[8    31    44],[3    42    45],[3    32    40],[6    21],[20    25    34],[25    41    46],[21    45    52],[3    26    42],[34    44    49],[29    41    42],[37    50    55],...
              [43    47    51],[53    57    58],[7    30    54],[19    48    56],[59    60    61]};

       t=[0 1 9 3 6 7 4 1 3 4 2 10 2 1 5 4 4 10 9 8 2 10 7 4 1 3 8 4 2 3 6 3 4 10 3 4 10 3 5 6 7 9 3 2 2 4 8 4 4 2 2 9 8 2 10 4 10 10 8 4 8 0
         0 9 7 10 10 5 7 7 7 3 7 5 2 8 7 10 8 9 2 9 2 4 10 4 6 6 2 2 7 3 6 2 9 3 2 9 9 5 2 10 4 8 1 6 9 7 6 7 8 5 6 7 4 7 5 3 4 10 3 7 3 0
         0 10 1 10 5 10 1 8 2 1 4 4 5 8 2 4 3 10 3 3 3 9 3 6 8 5 8 7 8 10 10 10 9 9 3 6 7 1 3 10 10 4 2 1 1 8 3 2 1 5 6 4 10 6 3 2 10 10 5 8 4 0
         0 2 3 2 9 8 9 8 8 1 10 8 5 3 2 6 6 6 9 10 7 6 8 1 10 1 4 3 5 2 1 1 1 5 2 6 4 3 5 5 4 3 10 3 1 7 8 4 10 5 9 9 9 3 9 3 5 5 6 3 5 0
         0 10 6 10 2 10 10 4 1 9 1 8 7 7 5 3 7 2 3 4 5 6 8 1 2 4 6 7 1 9 5 8 4 10 2 2 6 2 1 5 2 5 10 4 2 5 2 7 8 4 8 6 6 4 2 5 2 2 3 2 6 0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[51   54   66   62];
    nR=numel(Rmax);
    R=cell(M,1);
    

    R{1}=[ 0    0    0    0
        3    5    3    1
        5    1    9    1
        2    2    1    9
        1    1    2    6
        4   10   10   10
        4    2    5    9
        5    4    1    9
        4    8    5    6
        8    3    9    5
        6    3   10    1
        8    2    2    1
        4    4    2    8
        7    8    3    2
        6    2    7   10
        3    8    3    2
       10    9   10    9
        2    3   10    8
        1    3   10   10
        1    8    5    5
       10    8    8    9
        1    6    3    5
        8    3    2    9
        9    7    1    5
        1    8    6    4
        7    3    1    7
        9    5    3    9
        5    6    2    6
        1    4    3    4
        1    1    1    9
        8    1   10    3
       10    2    5    1
        2   10    8    4
        4    3    6   10
        9    6    9    9
        4    9    6    6
        6    2    7    5
        3   10   10    1
        6   10    5    2
        7    4    7    3
        7   10    9    6
        4    1    5    6
        4    6    1    3
       10    3    6    5
        7    4    4   10
        4   10    8    9
        9    1    4    6
       10    5    7    6
       10    6    7    2
        9    4    5    4
       10    5    8    1
        1    7    8    4
        1    9    8    8
       10    5    1    2
        3    7    2   10
       10   10    1    6
       10    3    4    4
       10    2    3    7
        6    5    7    6
        5    5    1    5
        7    8    9    1
        0    0    0    0];
    R{2}=[0     0     0     0
        5     6     6     6
     7     5     5     7
     8    10     9     4
     6     9     4     2
     6     5     5     5
     6     9    10     4
     6     2     1     8
     1     4    10     8
     8    10     2     7
    10    10     7     2
     4     8     6     1
    10     7     7     6
     4     4     4     4
     9    10     7    10
     5     2     9    10
     5     8     1     3
     3     7     1     9
     2     9    10     9
     4     4     7     6
     8     8     3     9
     8     9     5    10
     7     4     2     6
     1     6     3     8
     9    10     3     6
    10     6     4     1
     8     4     2     5
     1     7     4     7
     4     4     2     6
     8     8     9     4
     8     5     1    10
     3     5    10     9
     3     7     4     9
     7    10     1     4
     5     4     4     6
     7     9     8     9
     3     8     8    10
     2    10     6     7
     9     1     7     3
     8     4     9     7
    10     7     1     1
     2     3     4     5
     2     3     1     7
     1     8     2    10
     5     7     8     9
     2     6     8     5
     9     7     9     8
     1     1     6     5
     1     4     1    10
     6     5    10    10
     8     3     9     9
     4     8     3     4
     2     9     6     5
     4     3    10     3
     3     8     8     8
     6     2     9     9
    10     9     5    10
     7     2     5     6
     2     6     6     6
     4     4     3     2
     1     9     8     9
     0     0     0     0];
 R{3}=[0     0     0     0
       5    10     7     2
     3     6     6     3
     9     6     3     1
     8     4     6     5
     9     5     2     3
     3     5     7     3
     7     1     6     5
     7     9     1     2
     2     1     1     5
     5     5     2     8
     3     9     1     3
     8     4     5     8
     3     7     9     1
     9     9     7     4
     9     9     6     1
     4    10     9     3
     5     2     1     1
     7     3    10     2
     9     9     2     2
     7     6     6     3
     6     6     2     2
     4     7     6     2
     5     9     1     6
     8     6     8    10
     9     3     9    10
     8     5    10     3
     1     5    10     5
     7    10     6     4
     5     7     3     6
     5     7     2     3
     2     8     6     1
     9     4     6     5
     4     6     8     2
     3     6     1     1
     4     2     7    10
     4     6     6     5
     6     7     2    10
     6     5    10     8
     4     9     6     1
     4     8     5     7
     6     4    10     8
     7     5     7     7
    10     4     5     6
     8     8     9     3
     5     8     6     8
     9     5     6     3
     2     7     7     4
     1    10     4     9
     1     8     3     9
     2     8     6     5
     4     2     9     4
     4     4     5     7
     1     6     2    10
     6     5     5    10
     1     1     4     6
     2     3     5     4
     7     9     9     9
     9     1     5     5
    10     9     4    10
     6     1     4     1
     0     0     0     0];
 R{4}=[0     0     0     0
       6     8     6     8
     8     4     9    10
     2     6     9     2
     4     2     8     8
     2     1     4     2
     4    10     5    10
     5     3     8     9
     6     6     2     5
     1    10     2     8
     6     2     3     5
     3     2     6     9
     3     4    10     4
     3    10     8     1
     2     4     4     6
    10     3     3    10
    10     2     9     2
     9     4    10     5
     8     4     7     8
     2     2     3     1
     4     5     1    10
     2     1     9     8
     1     7     6     6
     4     1    10     2
     7     6     1     5
     7     8     6     6
     6     3     3    10
     5     5     9     9
     3     6     2    10
     6     1     5     7
     8     5     4     5
     8     7     9    10
     6     3     7     5
     8     9     3     3
     7    10     4     4
     2     9     2     8
     6     6     7     6
     4     3     6     8
     1     8     2    10
     2     3     2    10
     2    10     5     6
     7     7    10    10
     5     7     6     2
     7     2     1     1
     3     1     1     4
     1     3     9     6
     6     9     5     6
     3    10     4    10
    10     7     8     6
    10     8     4     5
     4     3     6     6
     1     6     8     8
     7     9     9     1
     9     5     4     9
    10    10     7     2
     1     1    10     5
     5     4     1     3
     6     6     6     4
     7     1     5     7
     8     8     4     2
     7     6     3     3
     0     0     0     0];
 R{5}=[0     0     0     0
       2     5     9     8
     2     7     6     6
     4    10     6     4
     9     2     9     9
     5     8     1     6
     5     6     9    10
     2     5     5     9
    10     9     1     4
     5     4     8     6
     9     2     2     4
     7     7     2     7
     4     7     7     8
     9     4     3     8
     8     9     4     2
     5    10     5     9
     9    10     5     1
     9     2     4     5
     5     3     7     8
     4     1     2     8
     6     7     2     4
    10     2     1     8
     8     5     4     9
     4     9     8     3
     8     6     3     2
    10     4     8     3
     6     3     7     4
     6     5     9     3
     4    10     9    10
     1     2     3     1
     2     5     4     6
     1     9     6     2
     5     1     4     9
     1     7     9     2
    10    10     9     6
     7     3     6    10
     1     2     3     4
     1     7     7     1
     3    10     3     3
     5     7     5     4
     2     9     4     4
     1     2     6     3
     8     8    10    10
     4     4     8     7
     8     5    10    10
     5     2     3     5
     5     9     6    10
     1     7     1     1
     1     8     8     7
     1     9     7     9
     6     1     9     3
     3    10    10    10
     9     5    10     8
     9     8     5     9
    10     8     1     6
     5     9     6     8
     3     2     3     4
     3     5     3     3
     6     7     4     4
     8    10     1     6
     4     9     8     9
     0     0     0     0];

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
    model.M=M;
    model.T=T;
    model.N=N;
    model.t=t;
    model.PredList=PredList;
    model.nR=nR;
    model.R=R;
    model.Rmax=Rmax;
    model.Rmin=Rmin;

         

   
end