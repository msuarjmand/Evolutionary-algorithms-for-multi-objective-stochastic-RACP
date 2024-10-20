clc;
clear;
close all;


S_List={[2 3 4],[8 11],[5 10],[7 10 11],[6 11],8,8,9,12,12,12,[]};

   P=zeros(12,12);
   PP=cell(1,12);
   
   for i=1:12
       for j=1:12
           
           if ismember(i,S_List{j}(:)); 
               P(i,j)=1;
           end           
       end
   end
   
   for i=1:12
       
            
       PP{i}=find(P(i,:)==1);
            
       
   end
   
   
   disp(PP);