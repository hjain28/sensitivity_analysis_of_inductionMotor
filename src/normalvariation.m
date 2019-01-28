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
B=0;
 while B~=8
     syms ('Pin','VA','pf','Pg','Psh','Te','Ps','Pr','Pc','eff')
     Pa = [Pin pf Pg Psh Te  eff];
     B=menu('graph with the variation of ','slip (s)','stator resistance(Rs)', 'rotor resistance(Rr)','core loss resistance(Rc)',  ...
         'stator inductance(Xs)', 'rotor inductance(Xr)' ,'magnetizing inductance(Xm)','back' ) ;
 if B==1
       for i=1:6
           variables;
           z=Pa(i);
           x=subs(z);
           G1=x; 
           Rs=Rs1;Xs=Xs1;Rr=Rr1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1; 
           G(i)=subs(G1);
       end
      s=linspace(0.001,0.99,100);                 %slip range (min,max,division)
      plot(s,subs(G(1)),'-y+',s,subs(G(2)),'-mo',s,subs(G(3)),'-rs',s,subs(G(4)),'-c*',s,subs(G(5)),'-gp',s,subs(G(6)),'-b^')
           
      legend('Pin'  ,'pf' ,'Pg' ,'Psh' ,'Te' ,'eff')
      xlabel('slip, "s" (in p.u.)')
      ylabel('parameters (in p.u.)')
      grid
      data_wrt_slip=[s;subs(G(1));subs(G(2));subs(G(3));subs(G(4));subs(G(5));subs(G(6))]';
      break;
      

 elseif B==2
       for i=1:6
           variables;
           z=Pa(i);
           x=subs(z);
           G1=x; 
           s=s1;Xs=Xs1;Rr=Rr1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
           G(i)=subs(G1);
       end
      Rs=linspace(0.7*Rs1,1.7*Rs1,10);                  %stator resistance range (min,max,division)
      plot(Rs,subs(G(1)),'-y+',Rs,subs(G(2)),'-mo',Rs,subs(G(3)),'-rs',Rs,subs(G(4)),'-c*',Rs,subs(G(5)),'-gp',Rs,subs(G(6)),'-b^')
           
      legend('Pin'  ,'pf' ,'Pg' ,'Psh' ,'Te','eff')
      xlabel('stator resistance, "Rs" (in p.u.) ')
      ylabel('parameters (in p.u.)')
      %axis([0.7*Rs1 1.7*Rs1 0 1.6])                          %stator resistance-  graph axis range [xmin xmax ymin ymax]
      grid
      data_wrt_str_res=[Rs;subs(G(1));subs(G(2));subs(G(3));subs(G(4));subs(G(5));subs(G(6))]';
      break;

    
 
 elseif B==3
       for i=1:6
           variables;
           z=Pa(i);
           x=subs(z);
           G1=x;
           Rs=Rs1;Xs=Xs1;s=s1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
           G(i)=subs(G1);
       end
      Rr=linspace(0.9*Rr1,1.1*Rr1,10);                   %rotor resistance range (min,max,division)
      plot(Rr,subs(G(1)),'-y+',Rr,subs(G(2)),'-mo',Rr,subs(G(3)),'-rs',Rr,subs(G(4)),'-c*',Rr,subs(G(5)),'-gp',Rr,subs(G(6)),'-b^')
          
      legend('Pin' ,'pf' ,'Pg' ,'Psh' ,'Te' ,'eff')
      xlabel('rotor resistance, "Rr" (in p.u.) ')
      ylabel('parameters (in p.u.)')
      %axis([0.7*Rr1 1.7*Rr1 0 1.6])                      %rotor resistance -  graph axis range [xmin xmax ymin ymax]
      grid
      data_wrt_rtr_res=[Rr;subs(G(1));subs(G(2));subs(G(3));subs(G(4));subs(G(5));subs(G(6))]';
      break;

       
 elseif B==4
      for i=1:6
           variables;
           z=Pa(i);
           x=subs(z);
           G1=x;
           Rs=Rs1;Xs=Xs1;Rr=Rr1;Xr=Xr1;s=s1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
           G(i)=subs(G1);
      end
      Rc=linspace(0.9*Rc1,1.1*Rc1,10);               %core resistance range (min,max,division)
      plot(Rc,subs(G(1)),'-y+',Rc,subs(G(2)),'-mo',Rc,subs(G(3)),'-rs',Rc,subs(G(4)),'-c*',Rc,subs(G(5)),'-gp',Rc,subs(G(6)),'-b^')
          
      legend('Pin' ,'pf' ,'Pg' ,'Psh' ,'Te', 'eff')
      xlabel('core loss resistance,, "Rc" (in p.u.) ')
      ylabel('parameters (in p.u.)')
     % axis([0.7*Rc1 1.7*Rc1 0 1.6])                     %core resistance -  graph axis range [xmin xmax ymin ymax]
      grid
      data_wrt_core_res=[Rc;subs(G(1));subs(G(2));subs(G(3));subs(G(4));subs(G(5));subs(G(6))]';
      break;

       
 elseif B==5
      for i=1:6
           variables;
           z=Pa(i);
           x=subs(z);
           G1=x;
           Rs=Rs1;s=s1;Rr=Rr1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
           G(i)=subs(G1);
       end
      Xs=linspace(1.2*Xs1,0.2*Xs1,10);                           %stator leakage inductance range (min,max,division)
      plot(Xs,subs(G(1)),'-y+',Xs,subs(G(2)),'-mo',Xs,subs(G(3)),'-rs',Xs,subs(G(4)),'-c*',Xs,subs(G(5)),'-gp',Xs,subs(G(6)),'-b^')
          
      legend('Pin' ,'pf' ,'Pg' ,'Psh' ,'Te','eff')
      xlabel('stator leak. reac., "Xs" (in p.u.) ')
      ylabel('parameters (in p.u.)')
     % axis([1.2*Xs1 0.2*Xs1 0 1.6])                             %stator leakage inductance -  graph axis range [xmin xmax ymin ymax]
      grid
      data_wrt_str_lkg_react=[Xs;subs(G(1));subs(G(2));subs(G(3));subs(G(4));subs(G(5));subs(G(6))]';
      break;

 elseif B==6
        for i=1:6
           variables;
           z=Pa(i);
           x=subs(z);
           G1=x; 
           Rs=Rs1;Xs=Xs1;Rr=Rr1;s=s1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
           G(i)=subs(G1);
       end
      Xr=linspace(1.2*Xr1,0.2*Xr1,10);                        %rotor leakage inductance range (min,max,division)
      plot(Xr,subs(G(1)),'-y+',Xr,subs(G(2)),'-mo',Xr,subs(G(3)),'-rs',Xr,subs(G(4)),'-c*',Xr,subs(G(5)),'-gp',Xr,subs(G(6)),'-b^')
          
      legend('Pin' ,'pf' ,'Pg' ,'Psh' ,'Te','eff')
      xlabel('rotor leak. reac, "Xr" (in p.u.) ')
      ylabel('parameters (in p.u.)')
      %axis([1.2*Xr1 0.2*Xr1 0 1.6])                          %rotor leakage inductance -  graph axis range [xmin xmax ymin ymax]
      grid
      data_wrt_rtr_lkg_react=[Xr;subs(G(1));subs(G(2));subs(G(3));subs(G(4));subs(G(5));subs(G(6))]';
      break;

    
 elseif B==7
        for i=1:6
           variables;
           z=Pa(i);
           x=subs(z);
           G1=x;
           Rs=Rs1;Xs=Xs1;Rr=Rr1;Xr=Xr1;Rc=Rc1;s=s1;P=P1;f=f1;FL=FL1;V=V1;
           G(i)=subs(G1);
       end
      Xm=linspace(1.2*Xm1,0.2*Xm1,10);               %rotor leakage inductance range (min,max,division)
      plot(Xm,subs(G(1)),'-y+',Xm,subs(G(2)),'-mo',Xm,subs(G(3)),'-rs',Xm,subs(G(4)),'-c*',Xm,subs(G(5)),'-gp',Xm,subs(G(6)),'-b^')
         
      legend('Pin' ,'pf' ,'Pg' ,'Psh' ,'Te','eff')
      xlabel('magnetizing reac., "Xm" (in p.u.) ')
      ylabel('parameters (in p.u.)')
     % axis([1.2*Xm1 0.2*Xm1 0 1.6])                    %rotor leakage inductance -  graph axis range [xmin xmax ymin ymax] 
      grid
      data_wrt_magn_react=[Xm;subs(G(1));subs(G(2));subs(G(3));subs(G(4));subs(G(5));subs(G(6))]';
      break;
      

  
 end
 end
 
 
 
       
       
       
       
 

        
 