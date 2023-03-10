unit Polin;

interface

function Pol(N:Byte; p,x:Real):Real;

implementation

function Pol(N:Byte; p,x:Real):Real;
var
  Pol1,pom: single;
begin
  Case N of
    (********???? ??? ?????????********)
    1:
    begin { ????????? ???? [???/??] ? ??????? ???????? [???] ? ??????????? [[??]]}
      Pom:=exp(0.019226*abs(x-74.8-1.428*p));
      Pom:=1.3966*Pom;
      Pol:=0.759*p+4.2002*x+Pom-3.145;
    end;
    2:
    begin {??????????? ???? [??] ? ??????? ???????? [???] ? ????????? [???/??] }
      Pom:=1.3331*exp(0.011622*abs(0.23885*x-80.178-1.3042*p));
      Pol:=2.27+0.23803*x-0.1813*p-Pom;
    end;
    3:
    begin { ???????? ????? ???? [?3/??] ? ??????? ???????? [???] ? ??????????? [??]}
      Pom:=0.4*Exp(483.54/(x-400));
      Pom:=0.993-36.103/(x-400)-Pom;
      Pom:=Pom+(17.652-p)*0.00032656;
      Pom:=Pom+(17.652-p)*0.000016405*Exp(0.01842*x);
      Pom:=Pom+exp(Ln(abs(0.0017143*x-0.25715))*2.6761);
      Pom:=Pom-Exp(0.027861 *x-12.668);
      Pol:=Pom*0.001;
    end;
    4:
    begin { ???????? o???? ?o?? [?3/??] ? ??????? ???????? [???] ? ????????? [???/??]}
      Pom:=0.000000636*exp(Ln(x)*2.173);
      Pol:=0.001 *( 1.0084+Pom-0.0010197*p);
    end;
    5:
    begin { ????o??o?o??o??? ?o?? [??/??] ? ??????? ???????? [???] ? ??????????? [??]}
      Pom:=0.031416*x-4.398;
      Pom:=0.4652*sin(Pom)+35.5;
      Pom:=Pom+0.059296*p;
      Pom:=Pom-(17.652-p)*exp(Ln(abs(0.0035974*x-0.50363))*3);
      Pom:=Pom+0.1163 *sqrt(97781 -sqr(x-41));
      Pol:=0.01*(Pom-16.939/exp(0.018813*x)); End;
    6:
    begin { ???????????? ????o??? ?o?? ? ??????? ???????? [???] ? ??????????? [??] }
      Pom:=20675-38.746*x; Pom:=123250/Exp(0.024292*x)+Pom;
      Pom:=Pom-0.341 *( 17.652-p)*exp(Ln(x)*0.7975);
      Pol:=0.00000001*Pom;
    end;
    7:
    begin { ????o ???????? ?o?? ? ??????? ???????? [???] ? ??????????? [??] }
      Pom:=p*(0.012139-0.00013873*x);
      Pom:=exp(2.047-0.041789*x+Pom);
      Pol:=6.3-0.02*sqrt(75625-sqr(245-x))+Pom;
    end;
    (********?o?? ?? ????? ?????????**************)
    8:
    begin { ??????????? ????????? [?C] ? ??????? ???????? [???] }
      Pom:=98.99+95.209*exp(Ln(p)*0.34687);
      Pom:=Pom-26.782/exp(0.618*p);
      Pol:=Pom-28.9/exp(5.411*p);
    end;
    9:
    begin { ???????? ????????? [???] ? ??????? ??????????? [??] }
      Pom:=0.000000000322*exp(Ln(x)*4.21);
      Pol:=Pom+0.0026576*x/exp(0.025559*x);
    end;
    10:
    begin {????????? ????????o? ?o?? [???/??] ? ??????? ??????????? ????????? [??] }
      Pom:=4.2002*x+0.62308*Exp(0.016565*x);
      Pol:=Pom+exp(Ln(x/343.32)*54.3)-4.2705;
    end;
    11:
    begin {????????? ????????o? ?o?? [???/??] ? ??????? ???????? [???] }
      Pom:=40.666*p+1003.7-Exp(6.0859-0.4409*p);
      Pol:=Pom-Exp(5.5417-4.3414*p);
    end;
    12:
    begin { ??????????? ????????? ?o?? [??] ? ??????? ?? ????????? [???/??]}
      Pom:=0.23885*x+0.15;
      Pol:=Pom-0.00000000001935*exp(Ln(x)*3.85);
    end;
    13:
    begin { ???????? o???? ????????o? ?o?? [? /??] ? ??????? ??????????? [??]}
      Pom:=exp(Ln(x/392.41)*6.64);
      Pol:=0.001 *(0.9437+0.001 *x+Pom);
    end;
    14:
    begin { ???????? o???? ????????o? ?o?? [?3/??] ? ??????? ???????? [???] }
      Pom:=Exp(0.3961*p-9-2073)-0.0948/Exp(1.6788*p);
      Pol:=0.001*( 1.1153+0.034199*p+Pom);
    end;
    15:
    begin { ????o??o?o??o??? ????????o? [??/??] ?o?? ? ??????? ??????????? [??]}
      Pom:=0.69937-0.0039219*Exp(0.012042*x);
      Pol:=Pom+0.013026*sin(0.2618*x-2.88);
    end;
    16:
    begin { ???????????? ????o??? ????????o? ?o?? [?-?/?2] ? ??????? ??????????? [??]}
      Pom:=1.0E-8*(18730-32.65*x+130460/Exp(0.023255*x));
      Pol:=Pom+(-4.389E-7*exp(0.0586*x))* 1E-8;
    end;
    17:
    begin { ????o ???????? ????????o? ?o?? ? ??????? ??????????? [??]}
      Pom:=-0.01*sqrt(25921-sqr(x-242.2))-0.8387E-4*x;
      Pol:=2.4754+Pom+3.993E-12*exp(0.07207*x);
    end;
    (******************??? ?? ????? ?????????*********************)
    18:
    begin { ????????? ????????o?o ???? [???/??] ? ??????? ??????????? [??] }
      Pom:=2.0934*sqrt(73170-sqr(x-278));
      Pol:=2248.3-Pom-exp(Ln(x/184.37)*8.445);
    end;
    19:
    begin { ????????? ????????o?o ???? [???/??] ? ??????? ???????? [???] }
      Pom:=0.419417*Exp(ln(p)*2.263);
      Pol:=2805-131.88/exp(1.7319*p)-Pom;
    end;
    20:
    begin {???????? o???? ????????o?o ???? [?3/??] ? ??????? ???????? [???]}
      Pom:=7.99382E-7*exp(ln(p)*2.37);
      Pom:=0.00768879/exp(ln(p)*0.085)-Pom;
      Pol:=0.203904/exp(ln(p)*0.92)-Pom;
    end;
    21:
    begin { ????o??o?o??o??? ????????o?o ???? [??/??] ? ??????? ??????????? [??] }
      Pom:=13.345+0.11106*x+0.023466*Exp(0.023198*x);
      Pom:=0.9304*sin(0.031416*x-6.915)+Pom;
      Pol:=0.001*Pom;
    end;
    22:
    begin { ???????????? ????o??? ????????o?o ???? [?-?/?2] ? ??????? ??????????? [??]}
      Pom:=845.82+3.6039*x+0.00025223*Exp(0.041254*x);
      Pol:=1.0E-8*Pom; End;
    23:
    begin { ????o ???????? ????????o?o ???? [-] ? ??????? ??????????? }
      Pom:=0.0001528*Exp(0.026019*x)+Exp(0.2073*x-73.897);
      Pol:=0.795+0.0019*x+Pom;
    end;
    (************?????????? ???*********************)
    24:
    begin { ????????? [???/??] ? ??????? ???????? [???] ? ??????????? [??] }
      Pom:=0.0355776/exp(ln(p)*0.2035)-0.0046742/p;
      Pom:=exp((320-x)*Pom);
      Pom:=(0.249983*exp(ln(p)*2.73)-0.041058/(p-0.085808))*Pom;
      Pom:=(2.0934+0.059451*p-0.000363751*exp(ln(p)*2.6))*(x-520)-Pom;
      Pol:=3533.7-10.695*p+Pom;
    end;
    25:
    begin { ??????????? ???? [?C] ? ??????? ???????? [???] ? ??????????? [??] }
      Pom:=30*ln(p+1.6475)-23.414; Pom:=Pom*exp(0.007085*(2805.1-x));
      Pom:=Pom/exp(0.51808*cos( 1.186*ln(p)+2.754));
      Pom:=Pom+520;
      Pol1:=2.0934+0.05945*p-0.000363723*exp(ln(p)*2.6);
      Pol1:=(x-3533.6+10.695*p)/Pol1;
      Pol:=Pom+Pol1; End;
    26:
    begin { ???????? o???? [?3/??] ? ??????? ???????? [???] ? ??????????? [??] }
      Pom:=3.43999*exp(ln(p)*0.367);
      Pom:=Exp(ln(680/x)*Pom);
      Pom:=(0.12271+0.00046826*x-8.8259E-5*Pom)/p;
      Pol:=9.05E-6*x-0.0073425+Pom; End;
    27:
    begin { ???????? o???? ???? [?3/??] ? ??????? ???????? [???] ? ????????? [???/??] }
      Pol:=(0.00022816*x-0.438457)/p-0.00038829;
    end;
    28:
    begin { ????o??o?o??o??? ???? [??/??] ? ??????? ???????? [???] ? ??????????? [??] }
      Pom:=2.2097+0.736675*exp(ln(p)* 1.143)+0.12968*x;
      Pom:=80.4916*exp(ln(p)*2.08)/exp(0.019571*x)+Pom;
      Pol:=0.001*(Pom+24.539/exp(0.0098315*x));
    end;
  end
end;
end.


