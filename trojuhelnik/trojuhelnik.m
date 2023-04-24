clear;
clc;
allPoints = rand(2,1000)*100; 
X = allPoints(1,:)';
Y = allPoints(2,:)';
plot(X,Y,'o');

prom = ( (Y>1.5*X+5) | (Y < 20) | (Y>-1.5*X+155) );


idx = find (prom)
x1 = X(idx);
y1 = Y(idx);

idx = find(not(prom))    
x2 = X(idx);
y2 = Y(idx);

plot(x1,y1,'o',x2,y2,'*')

rozdil = (prom);
hotovo = [allPoints' rozdil];
csvname = 'data\trojuhelnik.csv';
generateFile(x1,y1,x2,y2,csvname)