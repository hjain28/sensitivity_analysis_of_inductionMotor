Rs1=0.058;
Xs1=0.101;
Rr1=0.062;
Xr1=0.101;
Rc1=51.279;
Xm1=2.858;
P1=4;
s1=0.03;
f1=50;
FL1=0;
V1=1;
 syms ('Pin','VA','pf','Pg','Psh','Te','Ps','Pr','Pc','eff')
     Pa = [Pin pf Pg Psh Te  eff];
     
           variables;
           z=Pa(6);
           x=subs(z);
           G1=x; 
           Xs=Xs1;Rr=Rr1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1; 
           G(6)=subs(G1);
      
      s1=linspace(0.001,0.99,100);
      Rs1=linspace(0.9*Rs1,1.1*Rs1,10);
      [X,Y]= meshgrid(s1,Rs1);
      si =size(X);
      Z=zeros(si(1), si(2));

      for i = 1:(si(1)*si(2));
          s=X(i); Rs=Y(i);
          Z(i) =subs(G(6));
      end

      surf(X,Y,Z); 
       ylabel('stator resistance, "Rs" (in p.u.) ')
      xlabel('slip, "s" (in p.u.)')   
      zlabel('efficiency , "eff" (in p.u.)')  
      
      