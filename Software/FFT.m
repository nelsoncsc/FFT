function [Yr, Yi] = FFT(xr, xi)
  N = length(xr);
  if rem(N,2) == 0 
    for k=0:N/2-1
      xe_r(k+(1))=xr(2*k+(1)); 
      xo_r(k+(1))=xr(2*k+1+(1));

      xe_i(k+(1))=xi(2*k+(1)); 
      xo_i(k+(1))=xi(2*k+1+(1));
    end

    [Xer, Xei] = FFT(xe_r, xe_i);
    [Xor, Xoi] = FFT(xo_r, xo_i);
    [Yr, Yi] = butterfly(Xer, Xei, Xor, Xoi, N);
    
  else
    [Yr, Yi] = computeMatrix(xr, xi);
  end
end

