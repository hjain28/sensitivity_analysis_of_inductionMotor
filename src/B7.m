      
       G7=sensitivity(x,Xm);
       Rs=Rs1;Xs=Xs1;Rr=Rr1;Xr=Xr1;Rc=Rc1;s=s1;P=P1;f=f1;FL=FL1;V=V1;
       Xm=linspace(1.2*Xm1,0.2*Xm1,100);        %mutual inductance range (min,max,division)
       A7=subs(G7);
       plot(Xm,A7,'k-');
       legend('w.r.t. magnetizing imp.')
       