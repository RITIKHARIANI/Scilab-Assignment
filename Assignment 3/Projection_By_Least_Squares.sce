//Projection By Least Squares
//Input of 3x2 matrix 
disp('Please enter the matrix A');
a11=input("Enter a11: ");
a12=input("Enter a12: ");
a21=input("Enter a21: ");
a22=input("Enter a22: ");
a31=input("Enter a31: ");
a32=input("Enter a32: ");


A=[a11,a12;a21,a22;a31,a32];

disp(A,'A=');

disp('Please enter the matrix B');
b1=input("Enter b1: ");
b2=input("Enter b2: ");
b3=input("Enter b3: ");

b=[b1;b2;b3];  //Constant matrix

disp(b,'b=');

x=(A'*A)\(A'*b);

disp(x,'x=');
C=x(1,1);
D=x(2,1);

disp(C,'C=');
disp(D,'D=');
disp('The line of best fit is b=C+Dt');
