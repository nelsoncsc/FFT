function [Yr, Yi] = computeMatrix(xr, xi)
    N = length(xr);

    for k=0:N-1
      for j=0:N-1
        Fr(k+1,j+1) = cos(-2*pi*k*j/N);
        Fi(k+1,j+1) = sin(-2*pi*k*j/N);
      end
    end
    Yr = zeros(N,1); 
    Yi = zeros(N,1);
    for k=0:N-1
      for j=0:N-1
        Yr(k+1) = Yr(k+1)+Fr(k+1,j+1)*xr(j+1)-Fi(k+1,j+1)*xi(j+1);
        Yi(k+1) = Yi(k+1)+Fr(k+1,j+1)*xi(j+1)+Fi(k+1,j+1)*xr(j+1);
      end
    end
end


