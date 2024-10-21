function [z sol]=MyCost(sol,model)

    global NFE;
    NFE=NFE+1;
    
  %    if ~isfield(sol,'MRI')
%  
%         y1=LocalSearch2(sol,model);
%         y2=ParseSolution(sol,model);
%         
%         a1=[y1.MCmax sum(y1.r)];
%         a2=[y2.MCmax sum(y2.r)];
%         
%         if  all(a1<=a2) && any(a1<a2)
%             z=a1';
%         elseif all(a2<=a1) && any(a2<a1)
%             z=a2';
%         else
            y=rand;
        
            if y>0.5
                sol=LocalSearch2(sol,model);
%                   z=a1';
            else
                sol=ParseSolution(sol,model);
%                   z=a2';
            end
%         end

            
%     end
    
              z1=sol.MCmax;
              r=sol.r;
%               c=[1 1 1 1];
              c=ones(size(r));
              z2=sum(c.*r);
         
               z=[z1 z2]';
%       
     
end