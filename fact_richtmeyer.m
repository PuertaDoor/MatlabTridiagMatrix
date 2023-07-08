function [L,U] = fact_richtmeyer(M)
  global L U;
  n=length(M);
  global A B C;
  E(1) = B(1);
  F(1) = C(1) / B(1);
  for i = 2:n
    E(i) = B(i) - A(i)*F(i-1);
    F(i) = C(i) / E(i);
  endfor
  L = diag(A(2:n),-1)+diag(E);
  U = eye(n)+diag(F(1:(n-1)),1);
endfunction