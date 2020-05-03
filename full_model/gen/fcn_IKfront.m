function [qf] = fcn_IKfront(q,p,pFtoe)

qf = zeros(2,1);

  qf(1,1)=acos((2*((q(1) - pFtoe(1) + (p(2)*...
         cos(q(3)))/2)^2/2 - (pFtoe(2) - q(2))^2/2 - (pFtoe(1) - q(1))^2/2 + (q(2) - pFtoe(2) + (p(2)*sin(q(3)))/2)^2/2 + p(2)^2/8))/(p(2)*((q(2) - pFtoe(2) + (p(2)*...
         sin(q(3)))/2)^2 + (q(1) - pFtoe(1) + (p(2)*cos(q(3)))/2)^2)^(1/2))) - pi/2 - acos(((q(1) - pFtoe(1) + (p(2)*...
         cos(q(3)))/2)^2/2 + (q(2) - pFtoe(2) + (p(2)*sin(q(3)))/2)^2/2 + p(3)^2/2 - p(4)^2/2)/(p(3)*((q(2) - pFtoe(2) + (p(2)*...
         sin(q(3)))/2)^2 + (q(1) - pFtoe(1) + (p(2)*cos(q(3)))/2)^2)^(1/2)));
  qf(2,1)=acos(((q(1) - pFtoe(1) + (p(2)*cos(q(3)))/2)^2/2 + (q(2) - pFtoe(2) + (p(2)*...
         sin(q(3)))/2)^2/2 - p(3)^2/2 - p(4)^2/2)/(p(3)*p(4)));

 