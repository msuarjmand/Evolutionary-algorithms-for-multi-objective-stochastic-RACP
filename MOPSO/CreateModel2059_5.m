function model=CreateModel2059_5()

PredList={[],1,1,1,[3 4],3,6,[5 6],[3 4],7,[2 7],[10 12],10,[5 6],[9,10,12],[9,11,13],[14,15,16],[11,13,15],[17 18],[8,9,14],[19,20,21],[]};

t=[0 5 5 2 10 10 10 2 10 4 7 7 6 9 10 4 4 1 1 6 1 0;0 4 1 4 10 4 8 9 1 6 9 9 4 8 6 3 1 5 9 3 5 0;0 5 2 2 1 3 9 7 3 4 5 7 10 3 5 6 4 3 3 8 1 0;0 10 9 3 10 10 9 5 1 10 1 8 3 8 6 8 5 2 5 10 2 0;0 5 4 7 2 9 4 10 9 7 9 9 3 7 10 1 2 6 8 2 1 0];
     
    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[45 43];
%     nR=numel(Rmax);
    R=cell(M,1);
    

   R{1}=[0     0        
         2     5
         5     9
         3     2
        10     8
         4     7
         9     1
         3     5
         9    10
         2     2
         8     8
         1     7
         7     6
         6     5
         4     6
         3     5
         8     1
         2     3
         5     6
         1     7
         2    10
         0     0   ];
  R{2}=[ 0     0     
        10     4
         1     5
         7     8
         7     6
         5     4
         4    10
         5    10
         7     7
        10     2
         1     7
         8     4
         6    10
        10     3
         2     8
         3     6
         1     2
         6     7
         8     1
         3     2
         3     1
         0     0    ];
 R{3}=[  0     0     
         9     8
         9     4
         2     9
         5     8
         2     7
         6     4
        10     4
         3     1
        10     4
         4     6
         3     5
         7     7
        10     6
         7     9
         1     1
         4     5
         2     6
         3     2
         1     7
        10     1
         0     0    ];
 R{4}=[  0     0     
         6     9
         9     5
         5     8
         5     1
         2     3
         1     7
         8     2
         8     7
         3     4
         2     8
         4     7
         9     4
         9     4
         7     4
        10    10
        10     5
         2     5
         7     5
         5    10
         1     3
         0     0    ];
 R{5}=[  0     0     
         9     2
         1     4
         4     7
         8     4
         4     9
         7     3
         5     2
         1     7
         6     3
         7     9
         7     8
         4     5
         5     1
         8     2
         9     3
         1     9
         1     7
         7     4
         8     3
        10     5
         0     0     ];

     nR=size(R{1},2);

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