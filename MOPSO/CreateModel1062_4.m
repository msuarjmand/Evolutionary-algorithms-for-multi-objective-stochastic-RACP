function model=CreateModel1062_4()

PredList={[],1,1,1,2,4,[2 6],7,[2,4],[3 5 8],[5 8],[9,10,11]};
      t=[0     6    10     6     1     5     2    10     8     4     9   0
         0     5     1     7     1     2     4     4     6     1     6   0
         0     9    10     4    10     3     2     1     7     2     1   0
         0     4     2     7     7     3     9     4     9     8    10   0
         0     5     7     9     3     4     1     8     1     8     9   0];

    N=numel(t(1,:));
    M=numel(t(:,1));
    Rmax=[25 23 27];
%     nR=numel(Rmax);
    R=cell(M,1);   

    

   R{1}=[0     0     0     
        10     3     4
         8     5     6
         9     9     9
         6     7     2
         8    10     9
         4     3     9
         3     9     4
         4     7     5
         6     3     6
         9     5     8       
         0     0     0];
   R{2}=[0     0     0     
         8    10     7
         8     1     3
         4     6     5
         5     6     9
        10     1     2
         6    10     4
         9     9     5
         3     5     4
         7     8     8
         6     2    10
         0     0     0];
 R{3}=[  0     0     0      
         2    10     5
         3     6     7
         8    10    10
         4     8    10
        10     5     7
        10     7     2
         7     9     1
         9     2     7
         5     4     6
         7    10    10
         0     0     0];
 R{4}=[  0     0     0      
         8     9     9
         7     4     5
         6     3     8
         3     2     7
        10     4     8
         6     3     2
         1     7    10
         7     1     9
         6     3     1
         1     3     5
         0     0     0];
 R{5}=[  0     0     0    
         4     2    10
         7     5     8
         3     5     5
         6     6     4
         7     9     1
         6     8     8
         5     9     6
         1     1     2
         6     3     5
         5     5     2
         0     0     0];

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