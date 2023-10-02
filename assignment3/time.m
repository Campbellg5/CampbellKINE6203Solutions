function [outTime] = time(year,unit)

switch nargin 
    case 1 
        outTime = year * 365;
    
    case 2 
        if unit == 'seconds'
          outTime = year * 86400

        elseif unit == 'minutes'
            outTime = year * 1440
      
        end 
        end 

