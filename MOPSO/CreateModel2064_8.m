function model=CreateModel2064_8()

%     PredList={[], 1, 1, 1, 4, [3 4], 6, [2 7], [5 6], [2 6], [6 9 10], [2 5], [10 11 12], [4 13], [8 10 13], [3 9 12], [7 13 16], [8 12 16], [5 11 15], [2 9 17], [17 19 20], [19 20 21]};
 PredList={[],1,1,1,4,[3,5],6,[3,5],5,6,4,[7,10],[2,7],[6,8],[9,11,14],[3,4],[9,12,13],[11,16,17],[2,15,16],[14,18],[11,16,17],[19,20,21]};

      t=[0     4     5     3     6     6     1     1    10     5     6     5     3     9     9     7     9     6     2     4     1     0
         0     8     3     5     2     7     9     2     6     6     3     3     9     9     1     5     3     5     8    10     3     0
         0     7     7     8    10     5     2     4     8     4     8     3     5     6     5     4     7     4     2     5     2     0
         0     6    10     1     8     6    10     7     1     4     7     4     6     8     2     2     2     5     1     3    10     0
         0     7    10    10    10     5     6    10     6     4     1     8     1     2     3     3     1     2     7     1     1     0];

     N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[42 43 41 44];
    nR=numel(Rmax);
    R=cell(M,1);

    

    R{1}=[ 0    0    0    0        
        3    1    9    4
        6   10    3    7
        1    6    8    7
        6    9    3    6
        6    1   10    8
        3    2    5    6
        1    9    1   10
        4    3    8   10
        4    6    2    7
        5    2    9    5
       10    7    1    1
        3    1    3    4
        2    7   10    4
        2    2    5    9
        9    5    2    7
        5    6    9    9
        1    9    7    3
        2    7   10    8
        6    9    4    5
        9    6    7    9
        0    0    0    0 ];
   R{2}=[0     0     0     0
         8     4     3     7
         4    10     8     1
         2     3     1     9
         8     8    10    10
         7     7     1     6
         4     4     1     1
         3     8     6     5
         1     4    10     3
         3     3     4     5
         6     4     5     8
        10     9     3     3
        10     8     5     4
         3     9     9    10
         6     2     5     6
         8     9    10     6
         3     4     4     9
         7     8     9     7
         4     9     5     6
         9     6    10     4
         9     3     6    10
         0     0     0     0];
 R{3}=[  0     0     0     0
         3     8     9     3
         7     2     1     5
         1     3    10     5
         3     1    10     4
        10    10     7     9
         4     1     4     4
         8     2     4     7
         6     3     5     6
         5     9     7     4
         7     1     5     4
         3     1     1     2
         2    10     2     1
         2    10     9     9
         7    10     1     1
         6     1     7     7
         9     5     1     1
         7     4     6     9
         6     8     5     9
        10     2     5     6
         3     1     6     1
         0     0     0     0];
 R{4}=[  0     0     0     0
         1     6     9     4
         5     9     4     6
         2     4     6     8
         2     5     3     6
        10    10     7     8
        10     6     2     9
         8     9    10     4
         2     7     5     5
        10     2     6     5
         7     6     3     4
         1     9     7    10
         8     9    10     2
         3     3    10     6
         1     6     8     3
         8     6    10    10
         8     3     3     5
         1     5     1    10
        10     6     2     1
         6     8     6     1
         3     8     5     7
         0     0     0     0];
 R{5}=[  0     0     0     0
         4     1     9     6
         5     6     1     3
         1     6     6     6
         6     1     9     6
        10     4     2     1
         3     7     3     3
         1     8     4     5
        10     9    10     5
         5    10     3     8
         1     2     7     8
         5     5     2     1
         4     5     4     6
         4     2     4     6
        10     3     6     5
         5     6     4     7
         2     9     5     1
         2    10     6     7
         2     4     6     4
         9    10     9     3
         6     4     7     2
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