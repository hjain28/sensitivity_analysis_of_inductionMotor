# sensitivity_analysis_of_inductionMotor

** script description  :
    + main_code_file.m      : main selection menu script (+ motors steady state parameters)   for senstivity analysis 
        + senstivity.m  : senstivity formulae
        + varibles.m   : equations of I-m motors 
        + condition_B.m     : menu script for individual selection (for one parameter  sensitivity)
            + B1.m  : range & graph script  for slip senstitvity 
            + B2.m  : range & graph script  for stator resistance (Rs) senstitvity 
            + B3.m  : range & graph script  for rotor resistance  (Rr) senstitvity 
            + B4.m  : range & graph script  for core resistance (Rc) senstitvity
            + B5.m  : range & graph script  for stator leakage inductance (Xs) senstitvity 
            + B6.m  : range & graph script  for rotor leakage inductance (Xr) senstitvity  
            + B7.m  : range & graph script  for mutual inductance (Xm) senstitvity                          
        + condtion_C.m      :  menu script  ( + range and graph) for different parameters correspond to one variable
            
    + noramalvariation.m  : menu (+range &grapgh) script for normal varition of different parametrs correspond to input variable








**** HOW TO RUN   : 
   1. save all code script in a directory  
   2.a) for sentivity 
             Run main_code_file.m
      b) for noraml  variation
             Run noramal_variation.m
   3. ENJOY !!!


   
   

**** HOW TO chnge the range  :
    for senstivity range  
        1. for individual selection :
            -> change correponds to B(i).m file in range comment . (i) -> 1,2,3,4,5,6,7
        2 . for combined graphs
            -> change corresponds to condition_c.m file in range comment.
            -> change axis range also in axis range comand in same file .
    for normalvariation  range  
        change occurs in range anf asis range  in normalvariation.m 
    

(for adjustment of graph axis range remove the comment sign  "%" from the front of "axis")
