function model=CreateModel2064_4()

%     PredList={[], 1, 1, 1, [2 3], 2, [3 4], 7, [6 7], [5 6], [4 5], [2 8], [4 11 12], [4 9 12], [11 12 13], [8 10 15], [5 8 9], [3 6 14], [10 11 13], [12 16 19], [4 15 16], [19 20 21]};
PredList={[],1,1,1,4,5,5,5,[6,7,8],7,9,10,[2,6,7],[9,10],[11,12,14],[6,10],[3,13,16],[12,16],[2,8,16],[8,17,18],[2,3,15],[19,20,21]};

      t=[0    5     8     2     8     6     2     2     3     4     1     9     4     8     9     7     6     4     7     5    10    0
         0    1     7     4    10     6     3     9     4     4     4     4     5     4     8     2     9    10     8     1     8    0
         0    6     9     8     3     4     7     9     7     5     2     1     3     4     4     1    10     3     8     4     1    0
         0    1     9     5     9     2     1    10     6     4     3     1     5     3     7     8     1    10     9     8     6    0
         0    7     8     1     7    10     1     4     9     7     1     4     5     5     6     7     9     8     5     2    10    0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[38 43 54 55];
    nR=numel(Rmax);
    R=cell(M,1);

    

    R{1}=[ 0    0    0    0       
        6    5    2    9
        8    6    2    4
        4    3    3    7
        5    6    9   10
        5    5   10    1
        7    8    9    4
       10    9    5    5
        4   10    7    5
        9    1    7    6
        3    1    5    8
        7    9   10    8
        1    1    6    8
        5    7    7    5
        9   10    6    9
        7    7    9    4
       10    4    7    1
        2    1    5    9
        9    4    3    7
        6    6    7    2
        1    1    7    2
        0    0    0    0 ];
   R{2}=[0     0     0      0
         5     3     8     3
         9     3     3     7
         4     9     9     8
         6     4     7     3
         9     6     6     3
         4     1     5     4
         7     6     6    10
        10     1     9     8
         9     9     4     5
         1     1     4     8
         5    10     3     1
         4     6     2     7
         1     9     1     4
         5     3     5     5
         1     9     5     5
        10    10     9     9
         4    10     3     9
         3    10     1     4
        10     5     1     1
         6     3    10     5
         0     0     0     0];
 R{3}=[  0     0     0     0
         2     3     1     9
         6     6     5     8
         4     3     8     7
         5     5    10    10
         6     7     3     7
         2     6     1     7
         3     4     6    10
        10     1     8     9
         1     5     4     6
         6     1     4     5
         9     7     6     6
         9     7     6     2
         8     7     3     4
         9     5     8     3
         6     6    10    10
        10     7     9     7
         8     7     2     5
         5     7    10     9
         5     2    10     6
         9     3     8     9
         0     0     0     0];
 R{4}=[  0     0     0     0
         2     8     6     8
         7     6     9     6
         7     9     3     7
         8     2     9    10
         4     3     6     6
         9     8     8     3
         9     3     8     7
         9     9     4     2
         3     6     3     5
         1    10     7     4
         9     5     2     8
         6     1     6     3
         6     7     8     6
         5     6     2    10
         4     7     8     3
         6     1     8     1
         6     6     4     5
         2     4    10     7
         6     8     6     3
         3     3     6     2
         0     0     0     0];
 R{5}=[  0     0     0     0
         7     4     9     6
         5     5     4     8
         4    10     5     7
         9     8    10     7
         2     1    10     7
        10     6     8     4
         2     7     9    10
         9    10     7     2
         9     6     9     2
         2     5     5     7
         6     3     6     5
         2     6    10     3
         6    10    10     6
         7    10     7     9
        10     7     1     1
         1     3     9     5
         2     7     4     5
         6     5     7     4
         7     9     2     3
         4     8     7     3
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