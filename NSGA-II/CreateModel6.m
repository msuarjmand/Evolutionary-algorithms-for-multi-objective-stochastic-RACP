function model=CreateModel6()

    PredList={[], 1, 1, 1, 4, 2, 3, 3, 4, 4, 2, 8, 3, [9 12], 2, 10, [13 14], 13, 8, [5 11 18], 16, [16 17 18], [20 22], [19 23], [10 15 20], 11, [7 8], [21 27], 19, [6 24 25], [26 28], [29 30 31]};

    t=[0    1     1     5     3     7     9     7    10     5     3     4     3    10     8     4     4     3     2     2     7    10     6     3     3     8     6     5     9     8     9     0
       0    7     2     2     8     3     7     2     6     7     5     5     1     7     5     7    10     9     7     2     8     8     4     9     9     2     4     7     9     2     6     0
       0    2     5     2     9     3     5     8     2    10     2     9     1     4     4     6     9     7     9     8     4     4     6     5     3     9     4     9     1     9     1     0
       0    4     9     3     2     5     4     9     8     8     5     9     6     3     2     2     9     6     8     6     5     1     7     4     2     3     8     6     4     2     7     0
       0    5     9     5     6     2     6     1     7     9     6     3     4     3     3     1     3     3     6     4    10     8     8     2    10     9     1     3     4    10     8     0];  




    N=numel(t(1,:));
    M=numel(t(:,1));

  %% stochastic resource demand
  
  Rmax=[150 140 120 130];
  nR=numel(Rmax);
  R=cell(M,1);
  
  for m=1:M
      R{m}=zeros(N,nR);
      for i=2:N-1
          for j=1:nR
  
               R{m}(i,j)=randi([1 20]);
  
          end
      end
  end
  
  %%
     
     
     
     Rmin=zeros(M,nR);
     for m=1:M
         for i=1:nR
             Rmin(m,i)=max(R{m}(:,i));   
         end
     end
     
     
     T=zeros(M,1);
   
     for m=1:M
         T(m)=sum(t(m,:)); 
     end
     
     
     
    model.N=N;
    model.M=M;
    model.t=t;
    model.T=T;
    model.PredList=PredList;
    model.nR=nR;
    model.R=R;
    model.Rmax=Rmax;
    model.Rmin=Rmin;
end