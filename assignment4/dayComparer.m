function [dayIncrease]= dayComparer(SubjectID,Day1,Day2)
%In this function you will get one put from three different
% inputs. The output will show what subjects improved
%throughout the different days. In the for loop Day2 needs to be greater
% than Day1 to output the number of the subjectID. If there is no
% improvement there will be a zero instead of a subject number. 
%
for i = 1:length(SubjectID)
   if Day2(i) > Day1(i)
       dayIncrease(i) = SubjectID(i);
   end
end





