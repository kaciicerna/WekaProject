clear;
clc;
allPoints = rand(2,1000)*100;
X = allPoints(1,:)';
Y = allPoints(2,:)';
plot(X,Y,'o');

prom = ((0.5*(X-50).^2+0.5*(Y-50).^2) < 500) ;

%ještě jsem našla tento způsob, ale s tím si nevím úplně rady jak přetvořit na správný výpis
%th = 0:pi/50:2*pi;
%xunit = r * cos(th) + x;
%yunit = r * sin(th) + y;
%h = plot(xunit, yunit);

idx = find (prom); 
x1 = X(idx);
y1 = Y(idx);

idx = find(not(prom));    
x2 = X(idx);
y2 = Y(idx);

plot(x1,y1,'*',x2,y2,'o')


rozdil = (prom);
hotovo = [allPoints' rozdil];
csvname = 'data\kruh.csv';
generateFile(x1,y1,x2,y2,csvname)
