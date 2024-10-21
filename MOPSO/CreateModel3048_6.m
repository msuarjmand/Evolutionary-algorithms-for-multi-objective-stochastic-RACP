function model=CreateModel3048_6()

    PredList={[], 1, 1, 1, 2, 4, 2, 6, [5 8], 7, [5 6], 10, [4 12], [6 12], 2, [7 9 11], [8 11], [4 5 10], [9 13 14], [15 16 19], [3 18 20], [8 10 11], [3 7 17], [14 17 18], [3 12 22], [22 23 24], [13 15 24], [17 20 25], [9 24 25], [15 19 26], [21 27 28], [29 30 31]};

       t=[0 5 4 6 1 4 4 8 9 5 4 3 4 2 1 10 5 9 7 10 1 4 9 8 8 10 10 1 6 1 10 0
         0 8 9 1 2 2 1 8 3 10 3 10 6 8 2 1 3 2 3 10 7 9 5 4 4 2 10 9 3 1 1 0
         0 3 4 9 1 10 8 9 9 1 2 7 5 10 4 4 2 9 6 9 4 4 5 7 5 6 1 1 4 4 2 0
         0 1 9 7 5 3 4 4 10 7 1 10 7 4 8 8 9 1 10 5 10 6 7 3 3 4 10 1 2 8 8 0
         0 8 8 4 2 10 7 7 1 8 2 8 8 10 8 8 8 1 7 9 2 10 10 3 8 9 2 10 4 8 8 0
%          0 7 9 10 8 3 4 6 6 6 7 4 6 4 7 3 10 6 2 2 8 6 4 8 9 6 7 7 2 6 9 0
%          0 8 6 3 4 4 7 6 1 9 10 7 6 9 1 3 2 8 4 4 7 4 9 7 3 5 6 3 9 7 6 0
%          0 7 7 7 9 1 1 3 9 9 4 3 6 5 9 7 2 4 1 10 9 7 8 6 8 9 7 5 1 9 1 0
%          0 5 10 7 8 7 10 3 10 7 5 3 6 5 10 5 1 2 6 10 4 4 10 7 2 4 4 2 10 1 10 0
%          0 4 5 4 6 2 9 5 1 2 10 7 1 3 8 7 5 4 5 8 8 8 1 1 9 5 7 3 4 4 9 0
         ];
     
      N=numel(t(1,:));
    M=numel(t(:,1));
    
    Rmax=[44 45 45 47];
    nR=numel(Rmax);
    R=cell(M,1); 
    
   
%     N=numel(t);

    

 R{1}=[ 0    0    0    0
        2    4    7    9
        3    1    7    2
        1    3   10    2
        2    7    7    3
        5    8    1    5
        9    1    9    7
        2    9    7    3
        8    3    1    3
       10    5    1    2
        6   10    9    5
        6    7    2    5
        6    5   10    6
        8    2    9    1
        9    7    9    1
        1    5    7    9
        5    5    1    9
        5    3    2    2
        5    8    4    4
        3    5   10    5
        7    3    7    7
        2    3    2    5
        6    6    3    5
        7    5   10    9
        2    1    1    4
        4    3    1    1
        2    6    8    9
        4    4    7    7
        3   10    3   10
        6    2    9    8
        8    8    2    3
        0    0    0    0 ];
    
    R{2}=[0     0     0     0
          3     3     7     4
     1     1     5     5
     4     4     6     9
    10     2     1     6
     3     5     1     8
    10     9     3     5
     3     2     1     9
     5     8     9     2
     5     2    10     4
     3     3     8     3
     7     6     7     2
     6     6    10     7
     1    10     2     7
     4     9     9     3
     1     4     9     7
     9     8     6    10
    10     5     4     8
     7     5     5    10
    10     2     2     4
     1     4     3     2
     8     1     9     4
     3     1     1     7
     3    10     1     3
     3     6     3     4
     9     3     6     4
    10    10    10     9
     3    10     2     2
     4    10     5     4
     6     7     2     4
     2     4     8     2
     0     0     0     0 ];
 R{3}=[0     0     0     0
       5     4     6     7
    10    10     7     6
     6     7     3     1
     6    10     3     2
    10     8     6     7
     1     8     2     3
     5     5    10     8
     2     2     7    10
     9     4     1     9
     7    10     8     3
     8     8     6     3
     3     9    10     6
     2     1     3     3
     7     7     8     4
     6     3     5     6
     9     7     1     9
    10     9     8     8
     6     4     9     8
     9     6     4     3
     4     8    10     3
    10     7     4     2
     2     8     9     6
     6     2     6     1
     6     7     7     1
    10     5     1     2
     9     3     7     2
     7     3     6     7
    10     7     5     1
     2    10     1     8
     9     5     6     5
     0     0     0     0];
 R{4}=[0     0     0     0
        6    10     5    10
     2     9     2     5
    10     9     3     9
     3     6     5     7
    10    10     9     6
     1     7     2     7
    10    10     7     6
     1     7     4     4
     2    10     6     3
     2     5     2     4
     9     6     8    10
     9     1     6     5
     3     9    10     3
     1     2    10     1
     4     8     8     5
     9     4     3     2
     6     9     3     8
     9     8     8     1
     3     3     7     6
     6    10     1     3
     4     1     2     6
     8     8     2     8
     3     7     1     2
     2     7     9    10
     9     8     4     4
     5     6    10     6
     4     8     9     8
     3     1     7     3
     6     8     6     7
     9     6     9     5
     0     0     0     0];
 R{5}=[0     0     0     0
        5     9     9     3
     1     2     6     7
    10     2     1     9
     3     5     9    10
    10    10     5     1
     8     3     4     3
     4     7     6     2
     5     1     5     3
    10     6     5     1
     2     7     8    10
     2     1     4    10
     2     8     7     7
    10     7    10     5
     1     9     4     6
     4     8     2     8
     2     9     4     6
     6     9     9     2
     7     9     4     1
     9     6     7     7
     5    10     8     5
    10     7     1     9
     7     5     8     8
    10     3     7     1
     2     1     1     3
     8     7     4     4
     1     4     3     8
     2     9     8     2
     2     1     7     2
     4     9     4     4
     4     1     5     4
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
    model.N=N;
    model.M=M;
    model.t=t;
    model.PredList=PredList;
    model.nR=nR;
    model.R=R;
    model.Rmax=Rmax;
    model.Rmin=Rmin;

         

   
end