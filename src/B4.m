     
       G4=sensitivity(x,Rc);
       Rs=Rs1;Xs=Xs1;Rr=Rr1;Xr=Xr1;s=s1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
       Rc=linspace(0.7*Rc1,1.7*Rc1,100);          %core resistance range (min,max,division)
       A4=subs(G4);
       plot(Rc,A4,'r-');
       legend('w.r.t.core loss res.')
       