function [A,B,C] = extract_coefs_tridiag(M)
  global A B C;
  A = [0 ; diag(M,-1)];
  B = diag(M);
  C = [diag(M,1) ; 0];
endfunction