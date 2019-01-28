syms('Rs', 'Rr','Rc', 'Xs', 'Xr','Xm','s','V','P','f','FL')
Zm=((Rc*1i*Xm)/(Rc+(1i*Xm)));
Zs=(Rs+(1j*Xs));
Zr=((Rr/s)+(1j*Xr));
Z=[(Zs+Zm) (-1*Zm);(-1*Zm) (Zr+Zm)];
Vs=[V;0];
I=(inv(Z))*Vs;
Is=I(1);
Ir=I(2);
Iphi=Is-Ir;
Pg=3*(((abs(Ir))^2)*Rr/s);
Pr=s*Pg;
Ps=3*(abs(Is))^2*Rs;
Pm=(1-s)*Pg;
E2=(V-(Is*Zs));
Pc=3*(abs(E2))^2/Rc;
Pculoss=Pr+Ps;
Ws=4*pi*f/P;
Wm=(1-s)*Ws;
Pin=Ps+Pc+Pg;
VA=3*abs(V*Is);

Psh=Pm-FL;
Te=Psh/Wm;
pf=(Pin)/(3*abs(V*Is));
eff=Psh/Pin;






