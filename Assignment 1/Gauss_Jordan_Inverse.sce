//Gauss Jordan Method to find Inverse of a matrix
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

n=length(A(1,:));
Aug = [A, eye(n,n)];

disp('The Augmented matrix is:' );
disp(Aug);
//Forward Elimination

for j=1:n-1
    for i=j+1:n
        Aug(i,j: 2*n) = Aug(i,j:2*n)-Aug(i,j)/Aug(j,j)*Aug(j,j:2*n);
    end
end

//Backward Elimination

for j=n:-1:2
    Aug(1:j-1,:)=Aug(1:j-1,:)-Aug(1:j-1,j)/Aug(j,j)*Aug(j,:);
end
//Diagnol Normalization
for j=1:n
    Aug(j,:)=Aug(j,:)/Aug(j,j);
end
Inv_A = Aug(:,n+1:2*n);
disp(Inv_A, 'The inverse of A is: ');
