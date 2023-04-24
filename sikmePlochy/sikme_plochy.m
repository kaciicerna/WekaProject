clear;
clc;
allPoints = rand(2,1000)*100;
X = allPoints(1,:)';
Y = allPoints(2,:)';
plot(X,Y,'o');

idx = find(Y<X);   
x1 = X(idx);
y1 = Y(idx);

idx = find(not(Y<X));    
x2 = X(idx);
y2 = Y(idx);

plot(x1,y1,'*',x2,y2,'o')

rozdil = (Y>X);
hotovo = [allPoints' rozdil];
csvname = 'data\sikme_plochy.csv';
generateFile(x1,y1,x2,y2,csvname)