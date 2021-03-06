#  NLP written by GAMS Convert at 06/20/02 11:55:18
#  
#  Equation counts
#     Total       E       G       L       N       X
#        15       1       0      14       0       0
#  
#  Variable counts
#                 x       b       i     s1s     s2s      sc      si
#     Total    cont  binary integer    sos1    sos2   scont    sint
#         8       8       0       0       0       0       0       0
#  FX     0       0       0       0       0       0       0       0
#  
#  Nonzero counts
#     Total   const      NL     DLL
#        46      11      35       0
# 
#  Reformualtion has removed 1 variable and 1 equation


var x1 := 1500, >= 1500, <= 2000;
var x2 := 1, >= 1, <= 120;
var x3 := 3000, >= 3000, <= 3500;
var x4 := 85, >= 85, <= 93;
var x5 := 90, >= 90, <= 95;
var x6 := 3, >= 3, <= 12;
var x7 := 145, >= 145, <= 162;

minimize obj: 0.035*x1*x6 - 0.063*x3*x5 + 1.715*x1 + 4.0565*x3 + 10*x2 + 3000;

subject to

e2: 0.0059553571*x6^2 + 0.88392857*x3/x1 - 0.1175625*x6 <= 1;

e3: 1.1088*x1/x3 + 0.1303533*x1/x3*x6 - 0.0066033*x1/x3*x6^2 <= 1;

e4: 0.00066173269*x6^2 - 0.019120592*x6 - 0.0056595559*x4 + 0.017239878*x5
     <= 1;

e5: 56.85075/x5 + 1.08702*x6/x5 + 0.32175*x4/x5 - 0.03762*x6^2/x5 <= 1;

e6: 2462.3121*x2/x3/x4 - 25.125634*x2/x3 + 0.006198*x7 <= 1;

e7: 161.18996/x7 + 5000*x2/x3/x7 - 489510*x2/x3/x4/x7 <= 1;

e8: 44.333333/x5 + 0.33*x7/x5 <= 1;

e9:    0.022556*x5 - 0.007595*x7 <= 1;

e10:  - 0.0005*x1 + 0.00061*x3 <= 1;

e11: 0.819672*x1/x3 + 0.819672/x3 <= 1;

e12: 24500*x2/x3/x4 - 250*x2/x3 <= 1;

e13: 1.2244898e-5*x3/x2*x4 + 0.010204082*x4 <= 1;

e14: 6.25e-5*x1*x6 + 6.25e-5*x1 - 7.625E-5*x3 <= 1;

e15: 1.22*x3/x1 + 1/x1 - x6 <= 1;
