%a)
N=1000
X=linspace(0,1,N+1)
L = ( diag(-2*ones(1,N+1)) + diag(ones(1,N),-1) + diag(ones(1,N),1) );
L(1,1) = 1;
L(1,2) = 0;
L(N+1,N+1) = 1;
L(N+1,N) = 0;
dx = 1/N;
%sigma=1
b=normpdf(X,0.7,1)*dx^2;
A=0;
B=0;
b(1) = A;
b(N+1) = B;
b=b'
F=L\b;
plot(X,F); 
hold on
%simga=0.1
b=normpdf(X,0.7,0.1)*dx^2;
A=0;
B=0;
b(1) = A;
b(N+1) = B;
b=b'
F=L\b;
plot(X,F);
hold on
%simga=0.01
b=normpdf(X,0.7,0.01)*dx^2;
A=0;
B=0;
b(1) = A;
b(N+1) = B;
b=b'
F=L\b;
plot(X,F)
hold off
%b)
%xi=0.2
b=normpdf(X,0.2,0.01)*dx^2;
A=0;
B=0;
b(1) = A;
b(N+1) = B;
b=b'
F=L\b;
plot(X,F);
hold on
%xi=0.5
b=normpdf(X,0.5,0.01)*dx^2;
A=0;
B=0;
b(1) = A;
b(N+1) = B;
b=b'
F=L\b;
plot(X,F);
hold on;
%xi=0.7
b=normpdf(X,0.7,0.01)*dx^2;
A=0;
B=0;
b(1) = A;
b(N+1) = B;
b=b'
F=L\b;
plot(X,F)
hold off
%c)
det(L)
%d)
N=1000;
h = 0.001;
X=linspace(0,1,N+1);
dx = 1/N;
%Xi = 0.2
b=normpdf(X,0.2,0.01)*dx^2;
A=0;
B=0;
b(1) = A;
b(N+1) = B;
b=b'
F=L\b;
Y = diff(F)/h;
FP1 = Y(100);
FP2 = Y(300);
FP = FP2 - FP1
%Xi = 0.5
b=normpdf(X,0.5,0.01)*dx^2;
A=0;
B=0;
b(1) = A;
b(N+1) = B;
b=b'
F=L\b;
Y = diff(F)/h;
FP1 = Y(400);
FP2 = Y(600);
FP = FP2 - FP1
%Xi = 0.7
b=normpdf(X,0.7,0.01)*dx^2;
A=0;
B=0;
b(1) = A;
b(N+1) = B;
b=b'
F=L\b;
Y = diff(F)/h;
FP1 = Y(600);
FP2 = Y(800);
FP = FP2 - FP1
%e)
b=(1-X.^2)*dx^2;
A=0;
B=0;
b(1) = A;
b(N+1) = B;
b=b'
F=L\b;
plot(X,F)