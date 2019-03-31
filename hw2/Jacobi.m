%% Jacobi Method
%% Solution of x in Ax=b using Jacobi Method
% * _*Initailize 'A' 'b' & intial guess 'x'*_
function T = Jacobi(A, x, b, n)

normVal=Inf;
% * _*Tolerence for method*_
tol=1e-5; itr=0;
%% Algorithm: Jacobi Method
while normVal>tol
    xold=x;
    for i=1:n
        sigma=0;
        for j=1:n
            if j~=i
                sigma=sigma+A(i,j)*x(j);
            end
        end
        x(i)=(1/A(i,i))*(b(i)-sigma);
    end
    itr=itr+1;
    normVal=abs(xold-x);
end
fprintf('Using Jacobi method, solution of the system is: \n');
disp(x);
fprintf('in %d iterations\n', itr);
