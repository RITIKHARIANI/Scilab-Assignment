
disp('Please enter the matrix A');
a11=input("Enter a11: ");
a12=input("Enter a12: ");
a13=input("Enter a13: ");
a21=input("Enter a21: ");
a22=input("Enter a22: ");
a23=input("Enter a23: ");
a31=input("Enter a31: ");
a32=input("Enter a32: ");
a33=input("Enter a33: ");

A=[a11,a12,a13;a21,a22,a23;a31,a32,a33];

u0=[1 1 1]';//Initial vector
disp(u0,'The initial vector is');
v = A*u0;
a = max(u0);
disp(a,'First approximation to eigen value is');
while abs(max(v)-a)>0.002
    disp(v,"current eigen vector is ")
    a=max(v);
    disp(a,"current eigen value is ")
    u0=v/max(v);
    v=A*u0;
end
format('v',4);
disp(max(v),'The largest Eigen Value is:')
format('v',5)
disp(u0,'The corresponding Eigen Vector is ')
