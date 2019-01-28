B=0;
while (B~=9)
     B=menu('with respect to','slip (s)','stator resistance(Rs)', 'rotor resistance(Rr)','core loss resistance(Rc)',  ...
         'stator impedance(Xs)', 'rotor impedance(Xr)' ,'magnetizing impedance(Xm)','All above parameters','back' ) ;
     K=0;
if B==1
   while (K~=3)
       K=menu('choose','value','graph','back');
       if K==1
       G1=sensitivity(x,s);
       Rs=Rs1;Xs=Xs1;Rr=Rr1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
       s=input('slip value');
       A1=subs(G1)
        break;
       elseif K==2
           B1
           xlabel('slip')
           flag=1;
            break;
       end
   end
    break;
    
 elseif B==2
    while (K~=3)
       K=menu('choose','value','graph','back');
       if K==1
       G2=sensitivity(x,Rs);
       s=s1;Xs=Xs1;Rr=Rr1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
       Rs=input('stator resistance value');
       A2=subs(G2)
        break;
       elseif K==2
           B2
           xlabel('stator res.')
           flag=1;
            break;
       end
    end
     break;
       
 elseif B==3
    while (K~=3)
       K=menu('choose','value','graph','back');
       if K==1
       G3=sensitivity(x,Rr);
       Rs=Rs1;Xs=Xs1;s=s1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
       Rr=input('rotor resistance value');
       A3=subs(G3)
        break;
       elseif K==2
           B3
           xlabel('rotor res.')
           flag=1;
            break;
       end
    end
     break;
     
 elseif B==4
    while (K~=3)
       K=menu('choose','value','graph','back');
       if K==1
       G4=sensitivity(x,Rc);
       Rs=Rs1;Xs=Xs1;Rr=Rr1;Xr=Xr1;s=s1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
       Rc=input('core resistance value');
       A4=subs(G4)
        break;
       elseif K==2
           B4
           xlabel('core loss res.')
           flag=1;
            break;
       end
    end
     break;
           
 elseif B==5
     while (K~=3)
       K=menu('choose','value','graph','back');
       if K==1
       G5=sensitivity(x,Xs);
       Rs=Rs1;s=s1;Rr=Rr1;Xr=Xr1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
       Xs=input('stator leakage impedance');
       A5=subs(G5)
        break;
       elseif K==2
           B5
           xlabel('stator leak. imp.')
           flag=1;
            break;
       end
     end
      break;
       
 elseif B==6
     while (K~=3)
       K=menu('choose','value','graph','back');
       if K==1
       G6=sensitivity(x,Xr);
       Rs=Rs1;Xs=Xs1;Rr=Rr1;s=s1;Rc=Rc1;Xm=Xm1;P=P1;f=f1;FL=FL1;V=V1;
       Xr=input('rotor leakage impedance');
       A6=subs(G6)
        break;
       elseif K==2
           B6
           xlabel('rotor leak. imp.')
           flag=1;
            break;
       end
     end
      break;
       
 elseif B==7 
     while (K~=3)
       K=menu('choose','value','graph','back');
       if K==1
       G7=sensitivity(x,Xm);
       Rs=Rs1;Xs=Xs1;Rr=Rr1;Xr=Xr1;Rc=Rc1;s=s1;P=P1;f=f1;FL=FL1;V=V1;
       Xm=input('magnitizing inductance');
       A7=subs(G7)
        break;
       elseif K==2
           B7
           xlabel('magnitizing imp.')
           flag=1;
            break;
       end
     end
     break;
     
 elseif B==8
     flag=1;
       hold on;
       B1
       variables;
       B2 
       variables;
       B3
       variables;
       B4
       variables;
       B5
       variables;
       B6
       variables;
       B7
       variables;
       legend('w.r.t. slip','w.r.t. stator res.','w.r.t. rotor res.','w.r.t.core loss res.','w.r.t. stator leak. imp.','w.r.t. rotor leak. imp',....
                   'w.r.t. magnetizing imp.')
       break;
       

 
end
end


