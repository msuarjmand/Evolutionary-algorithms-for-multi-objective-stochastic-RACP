function model=CreateModel2064_9()

%     PredList={[], 1, 1, 1, 4, 4, 2, [3 6], 7, 2, 2, [5 7], [5 8], [5 8 10], 8, [3 9 12], [6 10 12], [11 13 15], [3 4 9], [14 16 19],[11 13], [19 20 21]};
PredList={[],1,1,1,[2,4],2,[4,6],[3,5,6],[5,7],[3,9],7,7,[3,4],11,[5,13,14],[9,15],[9,12],[12,16],[11,13,17],[6,13],[8,10,18],[19,20,21]};

       t=[0 9 9 2 1 1 2 2 7 1 5 7 2 3 3 2 4 9 3 8 6 0;0 1 9 3 8 3 6 4 6 2 3 3 4 4 1 7 6 5 1 8 6 0;0 6 3 1 8 3 3 8 9 3 3 5 2 1 10 3 9 9 8 9 1 0;0 9 7 8 6 10 5 9 8 3 10 4 7 9 3 10 6 8 5 1 3 0;0 6 2 10 3 3 2 10 1 2 4 8 4 5 7 7 1 6 7 8 2 0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[40 42 44 39];
    nR=numel(Rmax);
    R=cell(M,1);

    

    R{1}=[  0     0     0     0       
        10     6     7     1
         8    10     7     4
         3     1     1     9
         7    10     1     7
         2     1     2     7
         7     4     9     5
         9     8     3     2
         9     7     6    10
         4     5     6     9
         5     3     6     5
         7     2     4     9
         8     3     5     4
         5     2     5     4
         4     4    10     8
         3     2     1     1
         1     9     4    10
         5    10     8     1
         2     3     6     3
         4     8     4     1
        10     1    10     5
         0     0     0     0 ];
     R{2}=[0     0     0     0
            7     4     3     7
     7     3     3     6
     7     3     7     9
     8     3     8    10
     7     1     9     1
     6     9     1     9
     4     5     3     6
    10     6     5     2
     3     4     4     3
     6    10     4     8
     8    10     1     6
     3    10     8     6
     9     7     5    10
     6     8     7     6
    10     4     6     1
     4     6     1     2
    10     3     4     2
    10     8    10     2
     6     8    10     7
     2     1     4     7
     0     0     0     0];
 R{3}=[0     0     0     0
       4    10     2     5
     2     8     6     7
     4    10    10     1
     8     8     5     6
     4     3     6     8
     8     8     2     7
     3     7     2     6
     7     8     2     9
     9     8     1    10
     3     4     3     4
     5     6     3     8
     2     8     4     3
     2     6     2     1
     1    10    10     1
     1     2     6     4
     7    10     4     4
     5     8     3     1
     7     3     4     2
     9     7     4     5
     8     5    10     8
     0     0     0     0];
 R{4}=[0     0     0     0
        7     3     1     7
     8     4     8     6
     5     6     4     1
    10    10     9     3
    10     1     2     4
    10     8     7     2
     5    10     9     1
    10     9     8     5
     4     2     3     4
     7    10     4     9
     6     5     4     6
     9     9     3     9
     3     9     4     5
     7     4     1     1
     7     7     5     1
     7     9     5     2
     4     1     1     4
     4     1     7     8
     2     4     1     2
     2     2     2     3
     0     0     0     0];
 R{5}=[0     0     0     0
       7     8     8     9
     3     9    10    10
     4     3     4     5
     2     9     4     6
     4     7     2    10
     9     1     4     6
     9     4     6     8
     4     6     6     7
     7     7     2     5
     3     5     2     3
    10     9     4     7
     7     2     9     2
     3    10     2     2
     2     9     6     9
     6     4     2     2
     3     7     9     7
     1     4     8     5
     2     1     6     7
     1     6     4     8
     7     9     5     4
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