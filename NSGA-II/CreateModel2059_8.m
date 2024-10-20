function model=CreateModel2059_8()

PredList={[],1,1,1,[2 3],4,2,2,[3 8],6,[9 10],9,[4 5 8],[5 7 11],[11,12],[14,15],[7,11,13],[4,5,9],[14 17 18],[16,17,18],8,[19 20 21]};

t=[0 4 8 9 9 3 5 2 2 3 2 9 5 3 1 8 9 8 9 8 5 0;0 5 1 6 4 1 2 5 9 9 4 2 1 8 4 10 2 6 5 6 2 0;0 7 2 2 3 2 7 4 8 9 4 4 4 7 3 6 7 1 6 4 7 0;0 8 1 10 8 8 2 3 1 4 9 4 6 9 6 6 2 10 1 5 7 0;0 7 2 6 6 6 6 2 9 4 3 6 1 1 9 7 2 9 8 6 8 0];
      
    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[45 43];
%     nR=numel(Rmax);
    R=cell(M,1);
    

   R{1}=[0     0         
         4     2
         7     7
         1    10
         8     2
         5     9
        10     6
         3     5
         4     2
         2     3
        10     5
         5     6
         1     4
         8     8
         6     9
         4     8
         8     5
         9     7
         3     7
         6     2
         5     5
         0     0     ];
   R{2}=[0     0     
         4     6
         6     7
        10     4
         5     7
         1     8
        10     6
        10     7
         4     3
         3     9
         8     5
         6     7
         6     9
         7     3
         1     5
         9     6
        10     5
         1     1
         9     8
        10     1
         1     5
         0     0     ];
 R{3}=[  0     0     
         1     9
        10     9
         6    10
        10     4
         4     9
         9     2
         3     7
        10     7
         9     1
         4     6
         7     9
         6     3
         9     3
         3     9
         1     5
         9     2
         3     3
         3     7
         7     6
         4     3
         0     0     ];
 R{4}=[  0     0     
         7     2
         8     8
         3     9
         5     8
         4     2
         8     5
         2     1
        10     4
         3     2
         5     5
         8     6
         7     8
         2     5
         7     6
         2    10
        10     9
         9     6
         6    10
         7     1
        10     9
         0     0    ];
 R{5}=[  0     0     
         4     5
         3     7
         9     2
         4     6
         2     7
         1     1
        10     5
         7     9
         9     2
        10     5
         7     7
        10     3
         3    10
         9     7
        10     3
         4     6
         1     9
         8     6
         1     8
         8     9
         0     0    ];

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