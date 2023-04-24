function [] = generateFile(x1,y1,x2,y2,csvname)

nula = "black";
jednicka = "white";


nuly = repmat(nula, length(x1),1);
jednicky = repmat(jednicka, length(x2),1);

%slepeni 2 radku vysledku
M1 = [x1, y1, nuly; x2,y2, jednicky];

cell2csv(csvname,M1,',',1997,'.'); 
end

