function [TF] = tri(threeRay)
%Input needs to be a 3-element array. Tri will calculate weather or not the
%3-element array is a valid triangle. If valid it will display true, if not
%it will display false. 

%sorts the input for calculations
correct = sort(threeRay);
%Checking to see if the first two sides are greater than the last side.If
%so, false. 
if (correct(1,1) + correct (1,2) >= correct(1,3))
    TF = false
    
%Checking to see if the first two sides are less than the last side. If so,
%true. 
elseif(correct(1,1) + correct (1,2) <= correct(1,3))
    TF = true
   
  
end
