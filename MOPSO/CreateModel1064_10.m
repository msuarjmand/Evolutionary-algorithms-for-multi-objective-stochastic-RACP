function model=CreateModel1064_10()

%     PredList={[], 1, 1, 1, 2, 5, [3 5], [3 6], [3 5], [5 6 7], [4 7 8 9], [9 10 11]};
 PredList={[],1,1,1,3,5,4,[2,6,7],8,[3,4],[2,4,5],[9,10,11]};
     t=[0    7    10     2     6     8     1     8     1     7     4    0
         0   10     3     7     8     7    10     6     4     1     7    0
         0    6     2     8     2     1     7     8     9     4     8    0
         0    3     4    10     5    10     7     2     4     5     8    0
         0    7     5     2     4     5     6     1     2     5     5    0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[23 20 24 25];
    nR=numel(Rmax);
    R=cell(M,1);
    

 R{1}=[  0     0     0     0
         3    10     4     4
         5     8     9     8
         4     4     3     9
         7     5     9    10
         4     7     3     4
         2     6     9     7
         3     7     9     8
        10     4     8     3
        10    10     3     1
         4     1     4     5        
         0     0     0     0];
   R{2}=[0     0     0     0
         3     7     4     2
        10     6     5     8
         3     8     1     7
        10     7    10     9
         7    10     3     8
         2     5     7     9
         8     9     2     3
         2     1     4     8
         5    10     3     2
        10     9     4    10
         0     0     0     0];
 R{3}=[  0     0     0     0
         4     7    10     4
         9     1     6     1
         7    10     8     5
         3     9     2     8
         2     9     3     2
         9     2     5     9
         3     6     8     6
        10     2     8     1
         9     5     7     9
         2     4     3     7
         0     0     0     0];
   R{4}=[0     0     0     0
         6     2     6     7
         8     8     6    10
         8     3     7    10
         1     7     6     4
         6     2     7     2
         1     6    10     3
         8     8     2    10
         4     4     7     3
         3    10    10     5
         1     7     7     8
         0     0     0     0];
 R{5}=[  0     0     0     0
         7     4     8     3
         1     7     6     3
         1    10     4     4
         5     4     8     3
         5     1     8    10
         4     5     2     8
         1     1     7     9
         3     6     9     1
         1    10    10     1
         3     5     4     5
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
%     model.Rmin2=Rmin2;
         

   
end