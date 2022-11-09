function [r_ge]=Perifocal_to_Geocentric(Omega,w,i,r_pf)
R = [cos(Omega)*cos(w)-sin(Omega)*sin(w)*cos(i), -cos(Omega)*sin(w)-sin(Omega)*cos(w)*cos(i), sin(Omega)*sin(i);
     sin(Omega)*cos(w)+cos(Omega)*sin(w)*cos(i), -sin(Omega)*sin(w)+cos(Omega)*cos(w)*cos(i), -cos(Omega)*sin(i);
     sin(w)*sin(i), cos(w)*sin(i), cos(i)]
 r_ge = R*r_pf
 