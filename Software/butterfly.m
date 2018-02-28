function [Yr, Yi] = butterfly(Xer, Xei, Xor, Xoi, N)

  for k=0:N/2-1
    wr(k+1) = cos(-2*pi*k/N);
    wi(k+1) = sin(-2*pi*k/N);
  end
 
  for k=1:N/2
    G1(k) = wr(k)*Xor(k)-wi(k)*Xoi(k);
    G2(k) = wr(k)*Xoi(k)+wi(k)*Xor(k);
  end

   for k=1:N/2
     Yr(k) = Xer(k)+G1(k);
     Yr(k+N/2) = Xer(k)-G1(k);
     Yi(k) = Xei(k)+G2(k);
     Yi(k+N/2) = Xei(k)-G2(k);
   end
end
