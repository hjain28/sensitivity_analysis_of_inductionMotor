     
       G2=sensitivity(x,Rs);
       s=s1;Xs=Xs1;Rr=Rr1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
       Rs=linspace(0.7*Rs1,1.7*Rs1,100);              %stator resistance range (min,max,division)
       A2=subs(G2);
       plot(Rs,A2,'m-');
       legend('w.r.t. stator res.')