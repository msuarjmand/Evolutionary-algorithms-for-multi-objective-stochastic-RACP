function model=CreateModel1062_6()

PredList={[],1,1,1,4,3,[2 4],6,[4,8],[5 6 7],[3 7],[9,10,11]};
      t=[0     5     8     4    10     5     3     3     4     6     8   0
         0     7     5     5     6     3     7     8     5     4     1   0
         0    10    10     3     6     9     7     3     7     5     7   0
         0     9    10     8     2     8     2     9     9     8     5   0
         0     5     9     9     9     9     5     9     7     9     5   0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23 27];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

   R{1}=[0     0     0     
         3     8    10
        10     3     6
         1     7    10
         3     2     2
         6     6     2
         3     9     3
         7    10     4
         8     5     5
         6     3     4
         7     7     7       
         0     0     0];
   R{2}=[0     0     0      
         1     6     5
         5     9     2
         3     1     6
         4    10     7
         2     2     3
         6     9     6
         3     9    10
         2    10     5
         1     2     7
         3     6     5
         0     0     0];
 R{3}=[  0     0     0     
         1     9     8
         3     2     9
         9     2     4
         4     9     1
         1     7     8
         6     1     4
         4     9     9
         8     6     4
         6     6     9
         9     7     2
         0     0     0];
 R{4}=[  0     0     0      
         2     2     1
         9     4     5
         1     4     1
         7     9     8
         8     3     8
         5     4     3
         4     5     7
        10     8     6
         4     2     9
         5     9     6
         0     0     0];
 R{5}=[  0     0     0     
        10     5     1
         5     2     9
         4     9     7
         5     6     2
         3     4     9
        10     3     2
         5     3     7
         3     6     6
         5     5     2
         8     8     1
         0     0     0];

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