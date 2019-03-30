%Linear equation system 'Ax=b' by Gauss elimination method.
function root = gauss_elimination(n, A, b)

%=================================================================
disp('Solution of N-equation "[A][X]=[b]"')
% n=input ('Enter number of Equations :');
% A=input ('Enter Matrix [A]:');
% b=input ('Enter Matrix [b]:');
D=A;d=b;
%-----------------------------------------------------------------
%create upper triangular matrix
s=0;
for j=1:n-1
    if A(j,j)==0
        k=j;
        for k=k+1:n
            if A(k,j)==0
                continue
            end
            break
        end
        B=A(j,:); C=b(j);
        A(j,:)=A(k,:); b(j)=b(k);
        A(k,:)=B; b(k)=C;
    end
    for i=1+s:n-1
        L=A(i+1,j)/A(j,j);
        A(i+1,:)=A(i+1,:)-L*A(j,:);
        b(i+1)=b(i+1)-L*b(j);
    end
    s=s+1;
end
%-----------------------------------------------------------------
%Solution of equations
x(n)=b(n)/A(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+A(i,j)*x(j);
    end
    x(i)=(1/A(i,i))*(b(i)-sum);
end
%------------------------------
%Checking with matlab functions
p=inv(D)*d;
%------------------------------
%Output
disp('@----------------------------------------------------------@')
disp('Output [B][x]=[b]')
disp('Upper riangular Matrix [B] =');disp(A)
disp('Matrix [b] =');disp(b)
disp('solution of linear equations :');disp(x')
disp('solve with matlab functions(for checking):');disp(p)
