%% Obtaining Input Points
prompt='Input x coordinate of first point:';
a(1)=input(prompt);
prompt='Input y coordinate of first point:';
a(2)=input(prompt);
prompt='Input z coordinate of first point:';
a(3)=input(prompt);
prompt='Input x coordinate of second point:';
b(1)=input(prompt);
prompt='Input y coordinate of second point:';
b(2)=input(prompt);
prompt='Input z coordinate of second point:';
b(3)=input(prompt);
prompt='Input x coordinate of third point:';
c(1)=input(prompt);
prompt='Input y coordinate of third point:';
c(2)=input(prompt);
prompt='Input z coordinate of third point:';
c(3)=input(prompt);
prompt='Input x coordinate of fourth point:';
d(1)=input(prompt);
prompt='Input y coordinate of fourth point:';
d(2)=input(prompt);
prompt='Input z coordinate of fourth point:';
d(3)=input(prompt);
prompt='Input x coordinate of fourth point:';
e(1)=input(prompt);
prompt='Input y coordinate of fourth point:';
e(2)=input(prompt);
prompt='Input z coordinate of fourth point:';
e(3)=input(prompt);
%% Checking for Coincidence of points

%% Setting up arrays for control points
x= [a(1),b(1),c(1),d(1),e(1)];
y= [a(2),b(2),c(2),d(2),e(2)];
z= [a(3),b(3),c(3),d(3),e(3)];
plot3(x,y,z,'x')
hold 'on';
%% Casteljau Interpolation
for u=0:100
    %x-coordinates of points created by dividing lines ab,bc,cd,de
    f1=a(1)+(b(1)-a(1))*u/100;
    g1=b(1)+(c(1)-b(1))*u/100;
    h1=c(1)+(d(1)-c(1))*u/100;
    i1=d(1)+(e(1)-d(1))*u/100;
    %y-coordinates of points created by dividing lines ab,bc,cd,de
    f2=a(2)+(b(2)-a(2))*u/100;
    g2=b(2)+(c(2)-b(2))*u/100;
    h2=c(2)+(d(2)-c(2))*u/100;
    i2=d(2)+(e(2)-d(2))*u/100;
    %z-coordinates of points created by dividing lines ab,bc,cd,de
    f3=a(3)+(b(3)-a(3))*u/100;
    g3=b(3)+(c(3)-b(3))*u/100;
    h3=c(3)+(d(3)-c(3))*u/100;
    i3=d(3)+(e(3)-d(3))*u/100;
    %x-coordinates of points created by dividing lines fg,gh,hi
    j1=f1+(g1-f1)*u/100;
    k1=g1+(h1-g1)*u/100;
    l1=h1+(i1-h1)*u/100;
    %y-coordinates of points created by dividing lines fg,gh,hi
    j2=f2+(g2-f2)*u/100;
    k2=g2+(h2-g2)*u/100;
    l2=h2+(i2-h2)*u/100;
    %z-coordinates of points created by dividing lines fg,gh,hi
    j3=f3+(g3-f3)*u/100;
    k3=g3+(h3-g3)*u/100;
    l3=h3+(i3-h3)*u/100;
    %x-coordinates of points created by dividing lines jk,kl
    m1=j1+(k1-j1)*u/100;
    n1=k1+(l1-k1)*u/100;
    %y-coordinates of points created by dividing lines jk,kl
    m2=j2+(k2-j2)*u/100;
    n2=k2+(l2-k2)*u/100;
    %z-coordinates of points created by dividing lines jk,kl
    m3=j3+(k3-j3)*u/100;
    n3=k3+(l3-k3)*u/100;
    %x-coordinates of points on curve created by dividing lines mn
    o1(u+1)=m1+(n1-m1)*u/100;
    %y-coordinates of points on curve created by dividing lines mn
    o2(u+1)=m2+(n2-m2)*u/100;
    %x-coordinates of points on curve created by dividing lines mn
    o3(u+1)=m3+(n3-m3)*u/100;
end
%% Curve plot
plot3(o1,o2,o3,'-')
%% Plot of points for parameter u=0.37
    %x-coordinates of points created by dividing lines ab,bc,cd,de
    f(1)=a(1)+(b(1)-a(1))*37/100;
    g(1)=b(1)+(c(1)-b(1))*37/100;
    h(1)=c(1)+(d(1)-c(1))*37/100;
    i(1)=d(1)+(e(1)-d(1))*37/100;
    %y-coordinates of points created by dividing lines ab,bc,cd,de
    f(2)=a(2)+(b(2)-a(2))*37/100;
    g(2)=b(2)+(c(2)-b(2))*37/100;
    h(2)=c(2)+(d(2)-c(2))*37/100;
    i(2)=d(2)+(e(2)-d(2))*37/100;
    %z-coordinates of points created by dividing lines ab,bc,cd,de
    f(3)=a(3)+(b(3)-a(3))*37/100;
    g(3)=b(3)+(c(3)-b(3))*37/100;
    h(3)=c(3)+(d(3)-c(3))*37/100;
    i(3)=d(3)+(e(3)-d(3))*37/100;
    %x-coordinates of points created by dividing lines fg,gh,hi
    j(1)=f(1)+(g(1)-f(1))*37/100;
    k(1)=g(1)+(h(1)-g(1))*37/100;
    l(1)=h(1)+(i(1)-h(1))*37/100;
    %y-coordinates of points created by dividing lines fg,gh,hi
    j(2)=f(2)+(g(2)-f(2))*37/100;
    k(2)=g(2)+(h(2)-g(2))*37/100;
    l(2)=h(2)+(i(2)-h(2))*37/100;
    %z-coordinates of points created by dividing lines fg,gh,hi
    j(3)=f(3)+(g(3)-f(3))*37/100;
    k(3)=g(3)+(h(3)-g(3))*37/100;
    l(3)=h(3)+(i(3)-h(3))*37/100;
    %x-coordinates of points created by dividing lines jk,kl
    m(1)=j(1)+(k(1)-j(1))*37/100;
    n(1)=k(1)+(l(1)-k(1))*37/100;
    %y-coordinates of points created by dividing lines jk,kl
    m(2)=j(2)+(k(2)-j(2))*37/100;
    n(2)=k(2)+(l(2)-k(2))*37/100;
    %z-coordinates of points created by dividing lines jk,kl
    m(3)=j(3)+(k(3)-j(3))*37/100;
    n(3)=k(3)+(l(3)-k(3))*37/100;
    %x-coordinates of points on curve created by dividing lines mn
    o1(37)=m(1)+(n(1)-m(1))*37/100;
    %y-coordinates of points on curve created by dividing lines mn
    o2(37)=m(2)+(n(2)-m(2))*37/100;
    %x-coordinates of points on curve created by dividing lines mn
    o3(37)=m(3)+(n(3)-m(3))*37/100;
    %% Defining Array and plotting of required plot points
    p=[f(1),g(1),h(1),i(1),j(1),k(1),l(1),m(1),n(1),o1(37)];
    q=[f(2),g(2),h(2),i(2),j(2),k(2),l(2),m(2),n(2),o2(37)];
    r=[f(3),g(3),h(3),i(3),j(3),k(3),l(3),m(3),n(3),o3(37)];
    plot3(p,q,r,'*')
    pts = [f; g];    
    line(pts(:,1), pts(:,2), pts(:,3))
    pts = [g; h];    
    line(pts(:,1), pts(:,2), pts(:,3))
    pts = [h; i];    
    line(pts(:,1), pts(:,2), pts(:,3))
    pts = [j; k];    
    line(pts(:,1), pts(:,2), pts(:,3))
    pts = [k; l];    
    line(pts(:,1), pts(:,2), pts(:,3))
    pts = [m; n];    
    line(pts(:,1), pts(:,2), pts(:,3))