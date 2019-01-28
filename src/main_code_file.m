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

A=0;
while A~=12
    variables;
    flag =0;
    A=menu('sensitivity of','input real power (Pin)', 'apparent power(VA)','poer factor (pf)', 'air gap poer(Pg)',' shaft power (Psh)',...
        'torque developed(Te)','stator cu loss(Ps)','rotor cu loss(Pr)','core loss(Pc)','efficiency(eff)','all above parameters','exit') ; 
    if  A==1
        x=Pin;
        condition_B;
        if flag==1
            ylabel('input real power sensitivity')
            grid
        end
        
    elseif A==2
        x=VA;
        condition_B;
        if flag==1
            ylabel('input apparent power sensitivity')
            grid
        end
    elseif A==3
        x=pf;
        condition_B;
        if flag==1
            ylabel('input power factor sensitivity')
            grid
        end
    elseif A==4
        x=Pg;
        condition_B;
        if flag==1
            ylabel('air gap power sensitivity')
            grid
        end
    elseif A==5
        x=Psh;
        condition_B;
        if flag==1
            ylabel('shaft power sensitivity')
            grid
        end
    elseif A==6
        x=Te;
        condition_B;
        if flag==1
            ylabel('Torque generated sensitivity')
            grid
        end
    elseif A==7
        x=Ps;
        condition_B;
        if flag==1
            ylabel('stator copper loss sensitivity')
            grid
        end
    elseif A==8
        x=Pr;
        condition_B;
        if flag==1
            ylabel('rotor copper loss sensitivity')
            grid
        end
    elseif A==9
        x=Pc;
        condition_B;
        if flag==1
            ylabel('core loss sensitivity')
            grid
        end
    elseif A==10
        x=eff;
        condition_B;
        if flag==1
            ylabel('efficiency sensitivity')
            grid
        end
    elseif A==11
        conditionc;
        
    end
end
