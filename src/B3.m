     
       G3=sensitivity(x,Rr);
       Rs=Rs1;Xs=Xs1;s=s1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
       Rr=linspace(0.7*Rr1,1.7*Rr1,100);          %rotor resistance range (min,max,division)
       A3=subs(G3);
       plot(Rr,A3,'c-');
       legend('w.r.t. rotor res.')