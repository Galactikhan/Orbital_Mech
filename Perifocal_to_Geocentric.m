function [r_ge]=Perifocal_to_Geocentric(Omega,w,i,r_pf)
R = [cosd(Omega)*cosd(w)-sind(Omega)*sind(w)*cosd(i),-cosd(Omega)*sind(w)-sind(Omega)*cosd(w)*cosd(i),sind(Omega)*sind(i);
     sind(Omega)*cosd(w)+cosd(Omega)*sind(w)*cosd(i),-sind(Omega)*sind(w)+cosd(Omega)*cosd(w)*cosd(i),-cosd(Omega)*sind(i);
     sind(w)*sind(i),cosd(w)*sind(i),cosd(i)]
 r_ge = R*r_pf
 