      
       G6=sensitivity(x,Xr);
       Rs=Rs1;Xs=Xs1;Rr=Rr1;s=s1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
       Xr=linspace(1.2*Xr1,0.2*Xr1,100      %rotor leakage inductance range (min,max,division)
       A6=subs(G6);
       plot(Xr,A6,'b-');
       legend('w.r.t. rotor leak. imp.')
       