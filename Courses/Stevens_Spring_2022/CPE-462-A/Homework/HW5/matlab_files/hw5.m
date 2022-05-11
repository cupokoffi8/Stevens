IMG=readjpg('cpl.jpg');
size(IMG);

x = 3000;
y = 4000;

r=zeros(x,y); g=zeros(x,y); b=zeros(x,y); 
r=IMG(:,:,1); g=IMG(:,:,2); b=IMG(:,:,3);

rn = r*0.299;
gn = g*0.587;
bn = b*0.114;
Y = rn + gn + bn;

dispimg(Y)

diary off