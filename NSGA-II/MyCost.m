function [z sol]=MyCost(sol,model)

    global NFE;
    NFE=NFE+1;
         

    if ~isfield(sol,'MRI')
        sol=ParseSolution(sol,model);
    end
    
              z1=sol.MCmax;
              r=sol.r;
%               c=[1 1 1 1];
              c=ones(size(r));
              z2=sum(c.*r);
         
              z=[z1 z2]';
              
              
     
end