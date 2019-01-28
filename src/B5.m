       
       G5=sensitivity(x,Xs);
       Rs=Rs1;s=s1;Rr=Rr1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
       Xs=linspace(1.2*Xs1,0.2*Xs1,100);          %stator leakage inductance range (min,max,division)
       A5=subs(G5);
       plot(Xs,A5,'g-');
       legend('w.r.t. stator leak. imp.')
       