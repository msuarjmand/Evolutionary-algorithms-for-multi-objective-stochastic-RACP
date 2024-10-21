function sol=CreateRandomSolution(model)

    N=model.N;
    nR=model.nR;
    
      NV=N+nR;   %Number of Variables
      sol=rand(1,NV);
      
%       x=sol(1:N);
%       rR=sol(N+1:M);
%       
%       sol.x=x;
%       sol.rR=rR;



end