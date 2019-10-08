function v=cinquefoil(aa,t,delay)
%This function plots a trefoil knot, with winding numbers a and b.  
%Typical application:
%
%v=trefoil(3,2,[0:0.01:10]',0.01);
%

N = numel(t);
x = (2-cos((2*t)/(2*aa+1))).*sin(t);
dx = diff(x);
ddx = diff(dx);
dddx = diff(ddx);
y =(2-cos((2*t)/(2*aa+1))).*cos(t);
dy = diff(y);
ddy = diff(dy);
dddy = diff(ddy);
z = -sin((2*t)/(2*aa+1));
dz = diff(z);
ddz = diff(dz);
dddz = diff(ddz);
v = [x y z];

figure(1);
clf;
plot3(x(1),y(1),z(1),'r.');
grid;
axis([-3,3,-3,3,-3,3]);
pause(delay);
hold on;
max_curv = 0;
min_curv = 10000000000000;
for i = 1:N-2
    plot3(x(i),y(i),z(i),'r.');
    d = [dx(i) dy(i) dz(i)];
    r = norm(d);
    d = d / r;
    k = diff(d);
    curv = norm([ddx(i) ddy(i) ddz(i)]) / r;
    if max_curv < curv
        max_curv = curv;
    end
    if min_curv > curv
        min_curv = curv;
    end
end
max_tor = 0;
min_tor = 10000000000000;
for i = 1:N-2
    plot3(x(i),y(i),z(i),'r.');
    d = [dx(i) dy(i) dz(i)];
    dd = diff(d);
    ddd = diff(dd);
    tor =  
    if max_tor < tor
        max_tor = tor;
    end
    if min_tor > tor
        min_tor = tor;
    end
    pause(delay);
end
max_curv
min_curv
max_tor
min_tor