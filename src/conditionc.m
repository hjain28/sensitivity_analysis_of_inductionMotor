 B=0;
 while B~=8
     syms ('Pin','VA','pf','Pg','Psh','Te','Ps','Pr','Pc','eff')
     Pa = [Pin pf Pg Psh Te  eff];
     B=menu('with respect to','slip (s)','stator resistance(Rs)', 'rotor resistance(Rr)','core loss resistance(Rc)',  ...
         'stator inductance(Xs)', 'rotor inductance(Xr)' ,'magnetizing inductance(Xm)','back' ) ;
 if B==1
       for i=1:6
           variables;
           z=Pa(i);
           x=subs(z);
           G1=sensitivity(x,s); 
           Rs=Rs1;Xs=Xs1;Rr=Rr1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1; 
           G(i)=subs(G1);
       end
      s=linspace(0.001,0.99,50);                %slip range (min,max,division)
      plot(s,subs(G(1)),'-y+',s,subs(G(2)),'-mo',s,subs(G(3)),'-rs',s,subs(G(4)),'-c*',s,subs(G(5)),'-gp',s,subs(G(6)),'-b^')
           
      legend('S_s^P^i^n'  ,'S_s^p^f' ,'S_s^P^g' ,'S_s^P^s^h' ,'S_s^T^e' ,'S_s^e^f^f')
      xlabel('slip, "s" (in p.u.)')
      ylabel('sensitivity : S_s^P^i^n , S_s^p^f , S_s^P^g , S_s^P^s^h , S_s^T^e , S_s^e^f^f')
      %axis([0.0 0.1 0 2.0])                     %slip- graph axis range [xmin xmax ymin ymax]
      grid
      data_wrt_slip=[s;subs(G(1));subs(G(2));subs(G(3));subs(G(4));subs(G(5));subs(G(6))]';
      break;
      

 elseif B==2
       for i=1:6
           variables;
           z=Pa(i);
           x=subs(z);
           G1=sensitivity(x,Rs); 
           s=s1;Xs=Xs1;Rr=Rr1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
           G(i)=subs(G1);
       end
      Rs=linspace(0.7*Rs1,1.7*Rs1,10);           %stator resistance range (min,max,division)
      plot(Rs,subs(G(1)),'-y+',Rs,subs(G(2)),'-mo',Rs,subs(G(3)),'-rs',Rs,subs(G(4)),'-c*',Rs,subs(G(5)),'-gp',Rs,subs(G(6)),'-b^')
           
      legend(' S_R_s^P^i^n' , 'S_R_s^p^f' , 'S_R_s^P^g' , 'S_R_s^P^s^h' , 'S_R_s^T^e' , 'S_R_s^e^f^f')
      xlabel('stator resistance, "Rs" (in p.u.) ')
      ylabel('sensitivity : S_R_s^P^i^n , S_R_s^p^f , S_R_s^P^g , S_R_s^P^s^h , S_R_s^T^e , S_R_s^e^f^f')
      %axis([0.7*Rs1 1.7*Rs1 0 0.07])             %stator resistance-  graph axis range [xmin xmax ymin ymax]
      grid
      data_wrt_str_res=[Rs;subs(G(1));subs(G(2));subs(G(3));subs(G(4));subs(G(5));subs(G(6))]';
      break;

    
 
 elseif B==3
       for i=1:6
           variables;
           z=Pa(i);
           x=subs(z);
           G1=sensitivity(x,Rr);
           Rs=Rs1;Xs=Xs1;s=s1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
           G(i)=subs(G1);
       end
      Rr=linspace(0.7*Rr1,1.7*Rr1,10);           %rotor resistance range (min,max,division)
      plot(Rr,subs(G(1)),'-y+',Rr,subs(G(2)),'-mo',Rr,subs(G(3)),'-rs',Rr,subs(G(4)),'-c*',Rr,subs(G(5)),'-gp',Rr,subs(G(6)),'-b^')
          
      legend( 'S_R_r^P^i^n' , 'S_R_r^p^f' , 'S_R_r^P^g' , 'S_R_r^P^s^h' , 'S_R_r^T^e' , 'S_R_r^e^f^f')
      xlabel('rotor resistance, "Rr" (in p.u.) ')
      ylabel('sensitivity : S_R_r^P^i^n , S_R_r^p^f , S_R_r^P^g , S_R_r^P^s^h , S_R_r^T^e , S_R_r^e^f^f')
      % axis([0.7*Rr1 1.7*Rr1 0 1.8])            %rotor resistance -  graph axis range [xmin xmax ymin ymax]
      grid
      data_wrt_rtr_res=[Rr;subs(G(1));subs(G(2));subs(G(3));subs(G(4));subs(G(5));subs(G(6))]';
      break;

       
 elseif B==4
      for i=1:6
           variables;
           z=Pa(i);
           x=subs(z);
           G1=sensitivity(x,Rc);
           Rs=Rs1;Xs=Xs1;Rr=Rr1;Xr=Xr1;s=s1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
           G(i)=subs(G1);
      end
      Rc=linspace(0.7*Rc1,1.7*Rc1,10);      %core resistance range (min,max,division)
      plot(Rc,subs(G(1)),'-y+',Rc,subs(G(2)),'-mo',Rc,subs(G(3)),'-rs',Rc,subs(G(4)),'-c*',Rc,subs(G(5)),'-gp',Rc,subs(G(6)),'-b^')
          
      legend(' S_R_c^P^i^n' , 'S_R_c^p^f' , 'S_R_c^P^g' , 'S_R_c^P^s^h' , 'S_R_c^T^e' , 'S_R_c^e^f^f')
      xlabel('core loss resistance,, "Rc" (in p.u.) ')
      ylabel('sensitivity : S_R_c^P^i^n , S_R_c^p^f , S_R_c^P^g , S_R_c^P^s^h , S_R_c^T^e , S_R_c^e^f^f')
     % axis([0.7*Rc1 1.7*Rc1 0 2])           %core resistance -  graph axis range [xmin xmax ymin ymax]
      grid
      data_wrt_core_res=[Rc;subs(G(1));subs(G(2));subs(G(3));subs(G(4));subs(G(5));subs(G(6))]';
      break;

       
 elseif B==5
      for i=1:6
           variables;
           z=Pa(i);
           x=subs(z);
           G1=sensitivity(x,Xs);
           Rs=Rs1;s=s1;Rr=Rr1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
           G(i)=subs(G1);
       end
      Xs=linspace(1.2*Xs1,0.2*Xs1,10);              %stator leakage inductance range (min,max,division)
      plot(Xs,subs(G(1)),'-y+',Xs,subs(G(2)),'-mo',Xs,subs(G(3)),'-rs',Xs,subs(G(4)),'-c*',Xs,subs(G(5)),'-gp',Xs,subs(G(6)),'-b^')
          
      legend('S_X_s^P^i^n' , 'S_X_s^p^f' , 'S_X_s^P^g' , 'S_X_s^P^s^h' , 'S_X_s^T^e' , 'S_X_s^e^f^f')
      xlabel('stator leak. reac., "Xs" (in p.u.) ')
      ylabel('sensitivity : S_X_s^P^i^n , S_X_s^p^f , S_X_s^P^g , S_X_s^P^s^h , S_X_s^T^e , S_X_s^e^f^f')
     % axis([1.2*Xs1 0.2*Xs1 0 0.2])                 %stator leakage inductance -  graph axis range [xmin xmax ymin ymax]
      grid
      data_wrt_str_lkg_react=[Xs;subs(G(1));subs(G(2));subs(G(3));subs(G(4));subs(G(5));subs(G(6))]';
      break;

 elseif B==6
        for i=1:6
           variables;
           z=Pa(i);
           x=subs(z);
           G1=sensitivity(x,Xr); 
           Rs=Rs1;Xs=Xs1;Rr=Rr1;s=s1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
           G(i)=subs(G1);
       end
      Xr=linspace(1.2*Xr1,0.2*Xr1,10);           %rotor leakage inductance range (min,max,division)
      plot(Xr,subs(G(1)),'-y+',Xr,subs(G(2)),'-mo',Xr,subs(G(3)),'-rs',Xr,subs(G(4)),'-c*',Xr,subs(G(5)),'-gp',Xr,subs(G(6)),'-b^')
          
      legend('S_X_r^P^i^n' , 'S_X_r^p^f' , 'S_X_r^P^g' , 'S_X_r^P^s^h' , 'S_X_r^T^e' , 'S_X_r^e^f^f')
      xlabel('rotor leak. reac., "Xr" (in p.u.) ')
      ylabel('sensitivity : S_X_r^P^i^n , S_X_r^p^f , S_X_r^P^g , S_X_r^P^s^h , S_X_r^T^e , S_X_r^e^f^f')
     % axis([1.2*Xr1 0.2*Xr1 0 0.12])             %rotor leakage inductance -  graph axis range [xmin xmax ymin ymax]
      grid
      data_wrt_rtr_lkg_react=[Xr;subs(G(1));subs(G(2));subs(G(3));subs(G(4));subs(G(5));subs(G(6))]';
      break;

    
 elseif B==7
        for i=1:6
           variables;
           z=Pa(i);
           x=subs(z);
           G1=sensitivity(x,Xm);
           Rs=Rs1;Xs=Xs1;Rr=Rr1;Xr=Xr1;Rc=Rc1;s=s1;P=P1;f=f1;FL=FL1;V=V1;
           G(i)=subs(G1);       
       end
      Xm=linspace(1.2*Xm1,0.2*Xm1,10);                   %mutual inductance range (min,max,division)
      plot(Xm,subs(G(1)),'-y+',Xm,subs(G(2)),'-mo',Xm,subs(G(3)),'-rs',Xm,subs(G(4)),'-c*',Xm,subs(G(5)),'-gp',Xm,subs(G(6)),'-b^')
         
      legend( 'S_X_m^P^i^n' , 'S_X_m^p^f' , 'S_X_m^P^g' , 'S_X_m^P^s^h' , 'S_X_m^T^e' , 'S_X_m^e^f^f')
      xlabel('magnetizing reac., "Xm" (in p.u.) ')
      ylabel('sensitivity : S_X_m^P^i^n , S_X_m^p^f , S_X_m^P^g , S_X_m^P^s^h , S_X_m^T^e , S_X_m^e^f^f')
      %axis([1.2*Xm1 0.2*Xm1 0 1.5])                     %mutual inductance -  graph axis range [xmin xmax ymin ymax]
      grid
      data_wrt_magn_react=[Xm;subs(G(1));subs(G(2));subs(G(3));subs(G(4));subs(G(5));subs(G(6))]';
      break;
      

  
 end
 end
 
 
 
       
       
       
       
 

        
 