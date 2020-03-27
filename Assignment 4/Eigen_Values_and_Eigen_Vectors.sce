
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
lam = poly(0,'lam')
lam = lam
charMat = A - lam*eye(3,3)
disp(charMat,'The characteristic Matrix is')
charPoly = poly(A,'lam')
disp(charPoly,'The characteristic polynomial is')
lam = spec(A)
disp(lam,'The Eigen values of matrix A are')
function[x,lam]=eigenvectors(A)
    [n,m] = size(A);
    lam = spec(A)';
    x=[];
    for k = 1:3
        B = A - lam(k)*eye(3,3); //characteristic matrix
        C = B(1:n-1,1:n-1); //coeff matrix for the reduced system
        b = -B(1:n-1,n); //RHS vector for the reduced system
        y = C\b; //solution for the reduced system
        y=[y;1];//complete eigen vector
        y = y/norm(y); //make unit eigen vector
        x=[x y]; 
    end
endfunction
//End of function

//get f('eigenvectors')
[x,lam] = eigenvectors(A)
disp(x,'The Eigen vectors of A are');
