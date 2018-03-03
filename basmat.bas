A=9:dim B[Åá,Åá],C[Åá]
for D=0 to 9
 for E=0 to A
  B[2,E+1]=1
 next
 for F=2 to 1 step -1
  A=A*A
  for G=0 to F
   for H=1 to E
    if B[F-G,H]<B[F,H]-C[H] | B[F,1]=0 then
     if B[F,H+1]=0 then H=E:I=G:G=F else C[H]=B[F,H]-B[F-G,H]
    else
     H=E
    endif
   next
  next
  for J=1 to A
   K=I
   for L=1 to I
    for M=I to K
     if B[F-M,1]<B[F-I,1] | L=1 then
      for N=1 to E
       B[F,N]=B[F-I,N]
       if B[F-M,N]<B[F-M+I,N] & B[F-K,N]<B[F-I,N] | L=1 then B[F,N]=B[F,N]+C[N]
      next
      F=F+1:K=K+1:M=K
     endif
    next
   next
  next
  for O=1 to E
   C[O]=0
  next
 next
next
print A
