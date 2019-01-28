     
       G1=sensitivity(x,s);
       Rs=Rs1;Xs=Xs1;Rr=Rr1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
       s=linspace(0.001,0.990,50);                  %slip range (min,max,division)
       A1=subs(G1);
       plot(s,A1,'y-');
       legend('w.r.t. slip')
       