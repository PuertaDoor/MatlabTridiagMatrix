function [X,L,U] = resol_tridiag(M,Y)
  global X L U;
  Z = inv(L)*Y;
  X = inv(U)*Z;
endfunction