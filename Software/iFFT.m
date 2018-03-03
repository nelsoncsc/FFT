function [Yr, Yi] = iFFT(xr, xi)
  N = length(xr);
  [Xi, Xr] = FFT(xi, xr);
  Yr = Xr/N;
  Yi = Xi/N;
end

