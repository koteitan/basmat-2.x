A=9:dim B[Åá,Åá],C[Åá,Åá],D[Åá]
for E=0 to 9
 for F=0 to A
  B[1,F]=1:C[1,F]=1
 next
 for G=1 to 0 step -1
  A=A*A
  for H=0 to G
   for I=0 to F
    if B[G-H,I]<B[G,I]-D[I] | B[G,0]=0 then
     if B[G,I+1]=0 then I=F:J=H:H=G else D[I]=B[G,I]-B[G-H,I]
    else
     I=F
    endif
   next
  next
  for K=1 to J
   for L=K to 0 step -1
    if B[G-J+L,0]<B[G-J+K,0] then
     for M=0 to F
      if B[G-J,M]<B[G-J+K,M] & C[L+1,M]=1 then C[K+1,M]=1 else C[K+1,M]=0
     next
     L=0
    endif
   next
  next
  for N=1 to A
   for O=1 to J
    for P=0 to F
     B[G,P]=B[G-J,P]
     if C[O,P]=1 then B[G,P]=B[G,P]+D[P]
    next
    G=G+1
   next
  next
  for Q=0 to F
   D[Q]=0
  next
 next
next
print A
