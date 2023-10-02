function [TF] = tri(threeRay)
%input needs to be a 3-element array
correct = sort(threeRay);

if (correct(1,1) + correct (1,2) >= correct(1,3))
    TF = false
    

elseif(correct(1,1) + correct (1,2) <= correct(1,3))
    TF = true
   
  
end


