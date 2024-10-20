function model=CreateModel2060_1()

PredList={[],1,1,1,4,4,2,[5,6],[2,5],[2,6],[3,5,10],[3,9],10,9,[6,14],[3,8,15],[11,13],[12,15],[8,9,17],[7,17,18],[13,16,18],[19,20,21],[]};

t=[0 4 3 7 7 1 9 4 4 4 10 7 10 4 6 8 5 4 7 9 5 0;0 2 8 7 10 8 9 4 5 8 9 10 3 4 9 3 5 3 2 10 3 0;0 2 7 7 7 3 3 1 7 7 4 5 5 10 9 3 3 1 3 2 4 0;0 9 2 2 3 2 8 1 7 6 7 3 2 5 2 5 2 5 8 6 2 0;0 5 2 9 1 1 3 5 7 9 10 7 3 6 7 4 3 10 8 3 1 0];
     
    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[45 43 48];
%     nR=numel(Rmax);
    R=cell(M,1);
    

   R{1}=[0     0     0     
         7     7     3
         5     8     1
         5     6     8
         8     6     2
         9     9     3
         8     4     3
         8     5     6
         6     3     6
         6     8     8
         7     6     9
         1     4     8
         3     8    10
         7     2     2
         4     1    10
         8     6     1
         3     7     3
         1     6     1
         3    10     7
         6     7    10
        10     6     6
         0     0     0   ];
   R{2}=[0     0     0  
         2     5     4
         6     1     3
         6     4     9
         2     4    10
         4     3     4
         8     9     1
         6     5     2
         2     9     6
         4     8     2
         4     3     3
         6     1     5
         1     1     4
         6     7     4
        10     5     5
         2    10     3
         8     5     1
        10     2     7
         7     6     2
         8    10     9
         4     7     5
         0     0     0 ];
 R{3}=[  0     0     0 
         4     1     2
         8     6     8
         8     7     5
         2     8     2
         2     3     8
         2     1     2
         7     2     9
         9     8     6
         6    10     6
         2     4     3
         8    10     8
        10     4     6
         3     2     6
         9     4     5
         3     6     8
         9     7     1
         9     6     6
         6     4     9
         5     2     5
         9     2     7
         0     0     0 ];
 R{4}=[  0     0     0
         4     5     9
         7     7     9
         3     5     2
         8    10     1
         8     4     1
        10     4     2
         5     9     2
         5     6     7
         6     8     1
         9     2     5
         1     5     7
         2     1     2
        10     7     3
        10     8     3
         5    10     2
         9     7     4
        10     7     9
         7     9     3
         4     5     8
         5     5     6
         0     0     0 ];
 R{5}=[  0     0     0 
         6     3     7
         8     4     3
         8     1     6
        10     6     2
         2    10     5
         8     9     1
         2     1     3
         1     7     3
         2     4     6
         2     2     3
         2     6     4
        10     5     8
         3     6     5
        10     9     1
         7     2     4
         9     5     5
         4     1     9
         3     4     4
         2     8     9
         6     1     6
         0     0     0 ];

     nR=size(R{1},2);

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