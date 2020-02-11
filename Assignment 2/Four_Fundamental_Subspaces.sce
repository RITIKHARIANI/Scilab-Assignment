//Find the Four Fundamental Subspaces of a Matrix A
disp('Please enter the matrix A');
//Taking input of Matrix A
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
a=A;

disp(A,"A");
[m,n]=size(A); //Collecting the dimensions
disp(m,'m=');
disp(n,'n=');
[v,pivot]=rref(A); //rref computes the row Echelon form of matrix A by LU transformations
disp(rref(A));
disp(v);
r=length(pivot);
disp(r,'rank=');
column_space=A(:,pivot);
disp(column_space,'Column Space=');
null_space=kernel(A); //kernal computes the null space of the given matrix
disp(null_space,'Null Space=');
Row_space=v(1:r,:)';
disp(Row_space,'Row Space=');
Left_Null_space=kernel(A');
disp(Left_Null_space,'Left Null Space=');

