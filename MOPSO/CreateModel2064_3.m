function model=CreateModel2064_3()

%     PredList={[], 1, 1, 1, 4, 3, [4 5], [2 7], [2 6], [2 9], [5 9], [3 6 9], [5 8 10], [4 11 12], [4 10 13], [6 7 13], [3 14 15], [8 10], [9 14 15], [11 12 18], [17 19 20], [19 20 21]};
PredList={[],1,1,1,3,3,[2,4],[6,7],5,4,3,6,[8,11,12],[6,10],[7,11,14],[8,14],[5,12,15],[13,17],[13,16,17],[5,10,13],[9,16,18],[19,20,21]};

      t=[0    8     7     4    10     7     1     1     1     5     3     4     8     7    10     5     6    10     5     1     3    0
         0    8     3    10     3     4     6     9     8    10     2    10     9     5     3     4     3     9     3     2     9    0
         0    3     5     8     7     3     8     9    10     8     9     7     4     2     2     1     4     7     1     6     7    0
         0    3     8     3     6    10     8     9     1     6     3     1     2    10     9     6     6    10     9     7     1    0
         0    6     1     2     1     5     6    10     5     5     5    10     5     7     8     4     8     5     6     9     2    0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[49 55 55 53];
    nR=numel(Rmax);
    R=cell(M,1);

    

    R{1}=[  0    0    0    0
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
         2     7     2     3
         6     3     8     8
         7     9     2     8
         1     1     2     8
         2     1     2    10
         5     2     6    10
         1    10     4     8
         1     7     2     6
         2     9     5     2
         4     8     5     7
        10     9     6     5
         9    10     4     8
        10     2     1    10
         2    10     1     2
         2    10     1     3
         8     3     4     6
         6     9     3     3
         8     1     4     6
         1     9     6     3
         7     1     4     4
         0     0     0     0];
 R{3}=[  0     0     0     0
         8     3     1     4
         7     5     4     2
         5     5     6     4
         4    10    10     7
         3     1     1     2
         3     6     1    10
         5     8     6     1
         7     1    10     8
         4     8     7    10
         7     2     4     1
         3     1     9     3
         7     3    10     8
        10     6     6     2
         9    10     3     4
         7     1     8     4
         9     6     7     2
         7    10     3     4
         3     5     6     3
         7     7     1     7
        10     8     3    10
         0     0     0     0];
 R{4}=[  0     0     0     0
         6     4     6    10
         5     9     9    10
        10     7     7     1
         4     9    10    10
         1     4     1     2
         7     3     1     3
         2    10     3     6
         9     4     4     3
         8     3     2     8
         1     2     2    10
         9     9     8     7
         4     7     7     2
         6     2    10     2
         7     2     8     2
         6     8     8     7
         8    10     8     5
        10     9     5     6
         8     5     4     7
         9     6     3     4
         4     9     3     7
         0     0     0     0];
 R{5}=[  0     0     0     0
        10     1     1     9
        10     4     5     9
         8     8     4     8
         6    10     7     3
         7     5    10    10
         7    10     2    10
         3     5     4     1
         2     5    10     2
         7     6     9     9
        10     7     9     2
         8     3     3    10
         8     8     2     2
         5     8     8     4
         3     5     1    10
         6     6     7     6
         9     3     9     1
         3     6     7     8
         7     8     8     6
         8     5     7     7
         4     9     8     8
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