unit plmn;

interface

uses SysUtils;

function pul(n:byte; p,x:extended):extended;

implementation
//**********************************************
// ������ ���������� ���� � ���� � �����������
//*******************�� �������� � �����������
function pul(n:byte; p,x:extended):extended;
var
  n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,h: extended;
  na: array [1..34] of extended;
  nb: array [1..43] of extended;
  nc: array [1..40] of extended;
  na2: array [1..20] of extended;
  nb2: array [1..34] of extended;
  nb3: array [1..38] of extended;
  nb4: array [1..23] of extended;
  nb5: array [1..46] of extended;
  nb6: array [1..44] of extended;
  nb7: array [1..30] of extended;
  nm: array [0..5,0..6] of extended;

  ia,ja: array [1..34] of integer;
  ib,jb: array [1..43] of integer;
  ic,jc: array [1..40] of integer;
  ia2,ja2: array [1..20] of integer;
  ib2,jb2: array [1..34] of integer;
  ib3,jb3: array [1..38] of integer;
  ib4,jb4: array [1..23] of integer;
  ib5: array [1..46] of extended;
  jb5: array [1..46] of integer;
  ib6,jb6: array [1..44] of integer;
  ib7,jb7: array [1..30] of integer;

  n0: array [1..9] of extended;
  j0: array [1..9] of integer;

  function fn(x:extended;n:integer):extended;
  var
    m: integer;
    s: extended;
  begin
    m:=abs(n);

    case m of
      0: s:=1;
      1: s:=x;
      2: s:=sqr(x);
      3: s:=sqr(x)*x;
      4: s:=sqr(sqr(x));
      5: s:=sqr(sqr(x))*x;
      6: s:=sqr(sqr(x)*x);
      7: s:=sqr(sqr(x)*x)*x;
      8: s:=sqr(sqr(sqr(x)));
      9: s:=sqr(sqr(sqr(x)))*x;
      10: s:=sqr(sqr(sqr(x))*x);
      11: s:=sqr(sqr(sqr(x))*x)*x;
      12: s:=sqr(sqr(sqr(x)*x));
      13: s:=sqr(sqr(sqr(x)*x))*x;
      14: s:=sqr(sqr(sqr(x)*x)*x);
      15: s:=sqr(sqr(sqr(x)*x)*x)*x;
      16: s:=sqr(sqr(sqr(sqr(x))));
      17: s:=sqr(sqr(sqr(sqr(x))))*x;
      18: s:=sqr(sqr(sqr(sqr(x)))*x);
      19: s:=sqr(sqr(sqr(sqr(x)))*x)*x;
      20: s:=sqr(sqr(sqr(sqr(x))*x));
      21: s:=sqr(sqr(sqr(sqr(x))*x))*x;
      22: s:=sqr(sqr(sqr(sqr(x))*x)*x);
      23: s:=sqr(sqr(sqr(sqr(x))*x)*x)*x;
      24: s:=sqr(sqr(sqr(sqr(x)*x)));
      25: s:=sqr(sqr(sqr(sqr(x)*x)))*x;
      26: s:=sqr(sqr(sqr(sqr(x)*x))*x);
      27: s:=sqr(sqr(sqr(sqr(x)*x))*x)*x;
      28: s:=sqr(sqr(sqr(sqr(x)*x)*x));
      29: s:=sqr(sqr(sqr(sqr(x)*x)*x))*x;
      30: s:=sqr(sqr(sqr(sqr(x)*x)*x)*x);
      31: s:=sqr(sqr(sqr(sqr(x)*x)*x)*x)*x;
      32: s:=sqr(sqr(sqr(sqr(sqr(x)))));
      33: s:=sqr(sqr(sqr(sqr(sqr(x)))))*x;
      34: s:=sqr(sqr(sqr(sqr(sqr(x))))*x);
      35: s:=sqr(sqr(sqr(sqr(sqr(x))))*x)*x;
      36: s:=sqr(sqr(sqr(sqr(sqr(x)))*x));
      37: s:=sqr(sqr(sqr(sqr(sqr(x)))*x))*x;
      38: s:=sqr(sqr(sqr(sqr(sqr(x)))*x)*x);
      39: s:=sqr(sqr(sqr(sqr(sqr(x)))*x)*x)*x;
      40: s:=sqr(sqr(sqr(sqr(sqr(x))*x)));
      41: s:=sqr(sqr(sqr(sqr(sqr(x))*x)))*x;
      42: s:=sqr(sqr(sqr(sqr(sqr(x))*x))*x);
      43: s:=sqr(sqr(sqr(sqr(sqr(x))*x))*x)*x;
      44: s:=sqr(sqr(sqr(sqr(sqr(x))*x)*x));
      45: s:=sqr(sqr(sqr(sqr(sqr(x))*x)*x))*x;
      46: s:=sqr(sqr(sqr(sqr(sqr(x))*x)*x)*x);
      47: s:=sqr(sqr(sqr(sqr(sqr(x))*x)*x)*x)*x;
      48: s:=sqr(sqr(sqr(sqr(sqr(x)*x))));
      49: s:=sqr(sqr(sqr(sqr(sqr(x)*x))))*x;
      50: s:=sqr(sqr(sqr(sqr(sqr(x)*x)))*x);
      51: s:=sqr(sqr(sqr(sqr(sqr(x)*x)))*x)*x;
      52: s:=sqr(sqr(sqr(sqr(sqr(x)*x))*x));
      53: s:=sqr(sqr(sqr(sqr(sqr(x)*x))*x))*x;
      54: s:=sqr(sqr(sqr(sqr(sqr(x)*x))*x)*x);
      55: s:=sqr(sqr(sqr(sqr(sqr(x)*x))*x)*x)*x;
      56: s:=sqr(sqr(sqr(sqr(sqr(x)*x)*x)));
      57: s:=sqr(sqr(sqr(sqr(sqr(x)*x)*x)))*x;
      58: s:=sqr(sqr(sqr(sqr(sqr(x)*x)*x))*x);
    end;

    if n<0 then
      s:=1/s;
    fn:=s;

  end;

  function ps(t:extended):extended;
  var
    et,A,B,C: extended;
  begin
    et:=t+273.15+n9/(t+273.15-n10);
    A:=sqr(et)+n1*et+n2;
    B:=n3*sqr(et)+n4*et+n5;
    C:=n6*sqr(et)+n7*et+n8;
    ps:=sqr(sqr(2*C/(-B+sqrt(sqr(B)-4*A*C))));
  end;

  function ts(p:extended):extended;
  var
    be,E,F,G,D: extended;
  begin
    be:=sqrt(sqrt(p));
    E:=sqr(be)+n3*be+n6;
    F:=n1*sqr(be)+n4*be+n7;
    G:=n2*sqr(be)+n5*be+n8;
    D:=2*G/(-F-sqrt(sqr(F)-4*E*G));
    ts:=(n10+D-sqrt(sqr(n10+D)-4*(n9+n10*D)))/2-273.15;
  end;

  function pg(t:extended):extended;
  var
    te: extended;
  begin
    te:=t+273.15;
    pg:= 0.34805185628969E+03+
        -0.11671859879975E+01*te+
         0.10192970039326E-02*sqr(te);
  end;

  function tg(p:extended):extended;
  begin
    tg:=0.57254459862746E+03+
        sqrt((p-0.13918839778870E+02)/
        0.10192970039326E-02)-273.15;
  end;

  function v1(p,t:extended):extended;
  var
    i: integer;
    pim,tam,s: extended;
  begin
    pim:=7.1-p/16.53;
    tam:=1386/(t+273.15)-1.222;

    s:=0;
    for i:=1 to 34 do
      s:=s+na[i]*ia[i]*fn(pim,ia[i]-1)*fn(tam,ja[i]);
    v1:=-s*0.461526*(t+273.15)/16530;
  end;

  function h1(p,t:extended):extended;
  var
    i: integer;
    pim,tam,s: extended;
  begin
    pim:=7.1-p/16.53;
    tam:=1386/(t+273.15)-1.222;
    s:=0;
    for i:=1 to 34 do
      s:=s+na[i]*ja[i]*fn(pim,ia[i])*fn(tam,ja[i]-1);
    h1:=s*0.461526*1386;
  end;

  function s1(p,t:extended):extended;
  var
    i: integer;
    pim,tam,s: extended;
  begin
    pim:=7.1-p/16.53;
    tam:=1386/(t+273.15)-1.222;

    s:=0;
    for i:=1 to 34 do
      s:=s+na[i]*ja[i]*fn(pim,ia[i])*fn(tam,ja[i]-1);
    s:=s*1386/(t+273.15);
    for i:=1 to 34 do
      s:=s-na[i]*fn(pim,ia[i])*fn(tam,ja[i]);
    s1:=s*0.461526;
  end;

  function t1(p,h:extended):extended;
  var
    i: integer;
    pim,etm,s: extended;
  begin
    pim:=p;
    etm:=h/2500+1;

    s:=0;
    for i:=1 to 20 do
      s:=s+na2[i]*fn(pim,ia2[i])*fn(etm,ja2[i]);
    t1:=s-273.15;
  end;

  function v2(p,t:extended):extended;
  var
    i: integer;
    pim,tam,s: extended;
  begin
    pim:=p;
    tam:=540/(t+273.15)-0.5;

    s:=1/pim;
    for i:=1 to 43 do
      s:=s+nb[i]*ib[i]*fn(pim,ib[i]-1)*fn(tam,jb[i]);
    v2:=s*0.461526*(t+273.15)/1000;
  end;

  function h2(p,t:extended):extended;
  var
    i: integer;
    pim,tam,ta,s: extended;
  begin
    pim:=p;
    ta:=540/(t+273.15);
    tam:=540/(t+273.15)-0.5;

    s:=0;
    for i:=1 to 9 do
      s:=s+n0[i]*j0[i]*fn(ta,j0[i]-1);
    for i:=1 to 43 do
      s:=s+nb[i]*jb[i]*fn(pim,ib[i])*fn(tam,jb[i]-1);
    h2:=s*0.461526*540;
  end;

  function s2(p,t:extended):extended;
  var
    i: integer;
    pim,tam,ta,s: extended;
  begin
    pim:=p;
    ta:=540/(t+273.15);
    tam:=540/(t+273.15)-0.5;

    s:=0;
    for i:=1 to 9 do
      s:=s+n0[i]*j0[i]*fn(ta,j0[i]-1);
    for i:=1 to 43 do
      s:=s+nb[i]*jb[i]*fn(pim,ib[i])*fn(tam,jb[i]-1);
    s:=s*ta-ln(pim);
    for i:=1 to 9 do
      s:=s-n0[i]*fn(ta,j0[i]);
    for i:=1 to 43 do
      s:=s-nb[i]*fn(pim,ib[i])*fn(tam,jb[i]);
    s2:=s*0.461526;
  end;

  function p3(r,t:extended):extended;
  var
    i: integer;
    de,ta,s: extended;
  begin
    de:=r/322;
    ta:=647.096/(t+273.15);

    s:=nc[1]/de;
    for i:=2 to 40 do
      s:=s+nc[i]*ic[i]*fn(de,ic[i]-1)*fn(ta,jc[i]);
    p3:=s*0.461526E-3*de*r*(t+273.15);
  end;

  function h3(r,t:extended):extended;
  var
    i: integer;
    de,ta,s1,s2: extended;
  begin
    de:=r/322;
    ta:=647.096/(t+273.15);

    s1:=0;
    for i:=2 to 40 do
      s1:=s1+nc[i]*jc[i]*fn(de,ic[i])*fn(ta,jc[i]-1);
    s2:=nc[1]/de;
    for i:=2 to 40 do
      s2:=s2+nc[i]*ic[i]*fn(de,ic[i]-1)*fn(ta,jc[i]);
    h3:=(ta*s1+de*s2)*0.461526*(t+273.15);
  end;

  function s3(r,t:extended):extended;
  var
    i: integer;
    de,ta,s: extended;
  begin
    de:=r/322;
    ta:=647.096/(t+273.15);

    s:=0;
    for i:=2 to 40 do
      s:=s+nc[i]*jc[i]*fn(de,ic[i])*fn(ta,jc[i]-1);
    s:=s*ta-nc[1]*ln(de);
    for i:=2 to 40 do
      s:=s-nc[i]*fn(de,ic[i])*fn(ta,jc[i]);
    s3:=s*0.461526;
  end;

  function t2a(p,h:extended):extended;
  var
    i: integer;
    pim,etm,s: extended;
  begin
    pim:=p;
    etm:=h/2000-2.1;

    s:=0;
    for i:=1 to 34 do
      s:=s+nb2[i]*fn(pim,ib2[i])*fn(etm,jb2[i]);
    t2a:=s-273.15;
  end;

  function t2b(p,h:extended):extended;
  var
    i: integer;
    pim,etm,s: extended;
  begin
    pim:=p-2;
    etm:=h/2000-2.6;

    s:=0;
    for i:=1 to 38 do
      s:=s+nb3[i]*fn(pim,ib3[i])*fn(etm,jb3[i]);
    t2b:=s-273.15;
  end;

  function t2c(p,h:extended):extended;
  var
    i: integer;
    pim,etm,s: extended;
  begin
    pim:=p+25;
    etm:=h/2000-1.8;

    s:=0;
    for i:=1 to 23 do
      s:=s+nb4[i]*fn(pim,ib4[i])*fn(etm,jb4[i]);
    t2c:=s-273.15;
  end;

  function t2sa(p,s:extended):extended;
  var
    i: integer;
    pim,sig,s2: extended;

    function fn2(x,n:extended):extended;
    var
      m: integer;
      f: extended;
    begin
      f:=frac(n);
      m:=0;
      if (f>0.4) and (f<0.6) then
        m:=1;
      if (f>0.2) and (f<0.3) or (f>0.7) and (f<0.8) then
        m:=2;

      if m=0 then
        fn2:=fn(x,round(n))
       else
       if m=1 then
         fn2:=sqrt(fn(x,round(2*n)))
       else
         fn2:=sqrt(sqrt(fn(x,round(4*n))));
    end;

  begin
    pim:=p;
    sig:=s/2-2;

    s2:=0;
    for i:=1 to 46 do
      s2:=s2+nb5[i]*fn2(pim,ib5[i])*fn(sig,jb5[i]);
    t2sa:=s2;
  end;

  function t2sb(p,s:extended):extended;
  var
    i: integer;
    pim,sig,s2: extended;
  begin
    pim:=p;
    sig:=10-s/0.7853;
    s2:=0;
    for i:=1 to 44 do
      s2:=s2+nb6[i]*fn(pim,ib6[i])*fn(sig,jb6[i]);
    t2sb:=s2;
  end;

  function t2sc(p,s:extended):extended;
  var
    i: integer;
    pim,sig,s2: extended;
  begin
    pim:=p;
    sig:=2-s/2.9251;

    s2:=0;
    for i:=1 to 30 do
      s2:=s2+nb6[i]*fn(pim,ib6[i])*fn(sig,jb6[i]);
    t2sc:=s2;
  end;

  function r3(p,t:extended):extended;
  var
    y,y1,y2,z:extended;
  begin
    y:=1/v2(pg(t),t);
    z:=p3(y,t);
    if z>p then
    begin
      y2:=y;
      while z>p do
      begin
        y:=y/1.01;
        z:=p3(y,t);
      end;
      y1:=y;
    end
    else
    begin
      y1:=y;
      while z<p do
      begin
        y:=1.2*y;
        z:=p3(y,t);
      end;
      y2:=y;
    end;
    y:=(y1+y2)/2; z:=p3(y,t);
    while abs(z-p)>0.001 do
    begin
      if z>p then
        y2:=y
      else y1:=y;
        y:=(y1+y2)/2; z:=p3(y,t);
    end;
    r3:=y;
  end;

  function t3(p,h:extended):extended;
  var
    y,y1,y2,z,f1,f2,t2:extended;
  begin
    f1:=h1(p,350);
    t2:=tg(p);
    f2:=h2(p,t2);
    y:=350+(t2-350)*(h-f1)/(f2-f1);
    z:=h3(r3(p,y),y);
    if z>h then
    begin
      y2:=y;
      while z>h do
      begin
        y:=y-1;
        z:=h3(r3(p,y),y);
      end;
      y1:=y;
    end
    else
    begin
      y1:=y;
      while z<h do
      begin
        y:=y+1;
        z:=h3(r3(p,y),y);
      end;
      y2:=y;
    end;
    y:=(y1+y2)/2;  z:=h3(r3(p,y),y);
    while abs(z-h)>0.01 do
    begin
      if z>h then
        y2:=y
      else
        y1:=y;
      y:=(y1+y2)/2; z:=h3(r3(p,y),y);
    end;
    t3:=y;
  end;

  function t3s(p,s:extended):extended;
  var
   y,y1,y2,z,f1,f2,t2:extended;
  begin
    f1:=s1(p,350);
    t2:=tg(p);
    f2:=s2(p,t2);
    y:=350+(t2-350)*(s-f1)/(f2-f1);
    z:=s3(r3(p,y),y);
    if z>h then
    begin
      y2:=y;
      while z>h do
      begin
        y:=y-1;
        z:=s3(r3(p,y),y);
      end;
      y1:=y;
    end
    else
    begin
      y1:=y;
      while z<h do
      begin
        y:=y+1;
        z:=s3(r3(p,y),y);
      end;
      y2:=y;
    end;
    y:=(y1+y2)/2;  z:=s3(r3(p,y),y);
    while abs(z-h)>0.01 do
    begin
      if z>h then
        y2:=y
      else
        y1:=y;
      y:=(y1+y2)/2; z:=s3(r3(p,y),y);
    end;
    t3s:=y;
  end;

  function r3f(t:extended):extended;
  var
    x,y: extended;
  begin
    x:=373.95-t;
    y:=47*sqrt(x);
    if x<1 then
      y:=y+8*x
    else
    if x<4 then
      y:=y+5+2.5*x
    else
    if x<9 then
      y:=y+15
    else
    if x<4 then
      y:=y+20-0.75*x;
    r3f:=y+322;
  end;

  function pg2(h:extended):extended;
  begin
    pg2:=0.90584278514723E+03-0.67955786399241E+00*h+0.12809002730136E-03*sqr(h);
  end;

  function hg2(p:extended):extended;
  begin
    hg2:=0.26526571908428E+04+sqrt((p-0.45257578905948E+01)/0.12809002730136E-03);
  end;

  function mu(p,t:extended):extended;
  var
    u,v,A,B,C,D,E,mu0,k,kt,u1,u2,v4,r0,rm,s: extended;
  begin
    s:=647.27/(x+273.15);
    u:=s-1.0;
    u1:=1/s-1;
    u2:=sqr(u1);
    v:=1/317.763/p-1.0;
    v4:=sqr(sqr(v));
    A:=((((0.146543*u-0.551119)*u+0.907919)*u-0.130356)*u+0.162888)*u+0.501938;
    B:=((((0.0670665-0.0843370*u)*u+1.207552)*u+0.673665)*u+0.789393)*u+0.235622;
    C:=((((0.195286*u-0.497089)*u-0.687343)*u-0.959456)*u-0.743539)*u-0.274637;
    D:=((((0.100754-0.032932*u)*u+0.213486)*u+0.347247)*u+0.263129)*u+0.145831;
    E:=((((0.0602253-0.0202595*u)*u-0.0822904)*u-0.0267758)*u-0.0253093)*u-0.0270448;

    r0:=sqrt(3.88937+5.11063*s);
    if u1<0 then
      u1:=-u1;
    rm:=317.763+107.661*exp(0.067174*ln(u1))*exp(-543.48*u1);
    k:=s/p/rm;
    kt:=k/(sqr(r0/(r0-1/p/rm))-2.25*k);
    if kt<0 then
      kt:=-kt;
    mu0:=sqrt(1/s)/(((0.0105287-0.0036744*s)*s+0.0177624)*s+0.0181583);
    mu:=exp(((((E*v+D)*v+C)*v+B)*v+A)/317.763/p)*mu0
        +0.01204*kt*exp(-102.4*v4-5279*u2)*mu0
        +0.1432*exp(-1107*v4-308000*u2)*mu0;
  end;

  function la(p,t:extended):extended;
  var
    r,u,v,w,A,B,C,D,E,F: extended;
  begin
    r:=647.27/(x+273.15);
    u:=r-1.0;
    v:=3.1416999e-3/p;
    w:=v-1.0;
    A:=(((8.7127675-1.8525999*u)*u+5.2246158)*u+1.7018363)*u+1.3293046;
    B:=(((0.9340469*u-9.5000611)*u-10.124111)*u-2.2156845)*u-0.40452437;
    C:=((4.3786606*u+4.9874687)*u+1.6511057)*u+0.2440949;
    D:=((-0.91783782*u-0.27297694)*u-0.76736002)*u+0.018660751;
    E:=(0.37283344-0.43083393*u)*u-0.12961068;
    F:=(0.13333849*u-0.1120316)*u+0.044809953;

    la:=exp(v*(((((F*w+E)*w+D)*w+C)*w+B)*w+A))/SQRT(r)
        /(((5.25597e-3-2.0187e-3*r)*r+1.411166e-2)*r+2.02223e-3);
  end;

begin
  ia[1 ]:= 0 ; ja[1 ]:= -2 ; na[1 ]:=  0.14632971213167E+00;
  ia[2 ]:= 0 ; ja[2 ]:= -1 ; na[2 ]:= -0.84548187169114E+00;
  ia[3 ]:= 0 ; ja[3 ]:=  0 ; na[3 ]:= -0.37563603672040E+01;
  ia[4 ]:= 0 ; ja[4 ]:=  1 ; na[4 ]:=  0.33855169168385E+01;
  ia[5 ]:= 0 ; ja[5 ]:=  2 ; na[5 ]:= -0.95791963387872E+00;
  ia[6 ]:= 0 ; ja[6 ]:=  3 ; na[6 ]:=  0.15772038513228E+00;
  ia[7 ]:= 0 ; ja[7 ]:=  4 ; na[7 ]:= -0.16616417199501E-01;
  ia[8 ]:= 0 ; ja[8 ]:=  5 ; na[8 ]:=  0.81214629983568E-03;
  ia[9 ]:= 1 ; ja[9 ]:= -9 ; na[9 ]:=  0.28319080123804E-03;
  ia[10]:= 1 ; ja[10]:= -7 ; na[10]:= -0.60706301565874E-03;
  ia[11]:= 1 ; ja[11]:= -1 ; na[11]:= -0.18990068218419E-01;
  ia[12]:= 1 ; ja[12]:=  0 ; na[12]:= -0.32529748770505E-01;
  ia[13]:= 1 ; ja[13]:=  1 ; na[13]:= -0.21841717175414E-01;
  ia[14]:= 1 ; ja[14]:=  3 ; na[14]:= -0.52838357969930E-04;
  ia[15]:= 2 ; ja[15]:= -3 ; na[15]:= -0.47184321073267E-03;
  ia[16]:= 2 ; ja[16]:=  0 ; na[16]:= -0.30001780793026E-03;
  ia[17]:= 2 ; ja[17]:=  1 ; na[17]:=  0.47661393906987E-04;
  ia[18]:= 2 ; ja[18]:=  3 ; na[18]:= -0.44141845330846E-05;
  ia[19]:= 2 ; ja[19]:=  17; na[19]:= -0.72694996297594E-15;
  ia[20]:= 3 ; ja[20]:= -4 ; na[20]:= -0.31679644845054E-04;
  ia[21]:= 3 ; ja[21]:=  0 ; na[21]:= -0.28270797985312E-05;
  ia[22]:= 3 ; ja[22]:=  6 ; na[22]:= -0.85205128120103E-09;
  ia[23]:= 4 ; ja[23]:= -5 ; na[23]:= -0.22425281908000E-05;
  ia[24]:= 4 ; ja[24]:= -2 ; na[24]:= -0.65171222895601E-06;
  ia[25]:= 4 ; ja[25]:=  10; na[25]:= -0.14341729937924E-12;
  ia[26]:= 5 ; ja[26]:= -8 ; na[26]:= -0.40516996860117E-06;
  ia[27]:= 8 ; ja[27]:= -11; na[27]:= -0.12734301741641E-08;
  ia[28]:= 8 ; ja[28]:= -6 ; na[28]:= -0.17424871230634E-09;
  ia[29]:= 21; ja[29]:= -29; na[29]:= -0.68762131295531E-18;
  ia[30]:= 23; ja[30]:= -31; na[30]:=  0.14478307828521E-19;
  ia[31]:= 29; ja[31]:= -38; na[31]:=  0.26335781662795E-22;
  ia[32]:= 30; ja[32]:= -39; na[32]:= -0.11947622640071E-22;
  ia[33]:= 31; ja[33]:= -40; na[33]:=  0.18228094581404E-23;
  ia[34]:= 32; ja[34]:= -41; na[34]:= -0.93537087292458E-25;

  j0[1]:=   0; n0[1]:= -0.96927686500217E+01;
  j0[2]:=   1; n0[2]:=  0.10086655968018E+02;
  j0[3]:=  -5; n0[3]:= -0.56087911283020E-02;
  j0[4]:=  -4; n0[4]:=  0.71452738081455E-01;
  j0[5]:=  -3; n0[5]:= -0.40710498223928E+00;
  j0[6]:=  -2; n0[6]:=  0.14240819171444E+01;
  j0[7]:=  -1; n0[7]:= -0.43839511319450E+01;
  j0[8]:=   2; n0[8]:= -0.28408632460772E+00;
  j0[9]:=   3; n0[9]:=  0.21268463753307E-01;

  ib[1 ]:=  1 ; jb[1 ]:= 0 ; nb[1 ]:= -0.17731742473213E-02;
  ib[2 ]:=  1 ; jb[2 ]:= 1 ; nb[2 ]:= -0.17834862292358E-01;
  ib[3 ]:=  1 ; jb[3 ]:= 2 ; nb[3 ]:= -0.45996013696365E-01;
  ib[4 ]:=  1 ; jb[4 ]:= 3 ; nb[4 ]:= -0.57581259083432E-01;
  ib[5 ]:=  1 ; jb[5 ]:= 6 ; nb[5 ]:= -0.50325278727930E-01;
  ib[6 ]:=  2 ; jb[6 ]:= 1 ; nb[6 ]:= -0.33032641670203E-04;
  ib[7 ]:=  2 ; jb[7 ]:= 2 ; nb[7 ]:= -0.18948987516315E-03;
  ib[8 ]:=  2 ; jb[8 ]:= 4 ; nb[8 ]:= -0.39392777243355E-02;
  ib[9 ]:=  2 ; jb[9 ]:= 7 ; nb[9 ]:= -0.43797295650573E-01;
  ib[10]:=  2 ; jb[10]:= 36; nb[10]:= -0.26674547914087E-04;
  ib[11]:=  3 ; jb[11]:= 0 ; nb[11]:=  0.20481737692309E-07;
  ib[12]:=  3 ; jb[12]:= 1 ; nb[12]:=  0.43870667284435E-06;
  ib[13]:=  3 ; jb[13]:= 3 ; nb[13]:= -0.32277677238570E-04;
  ib[14]:=  3 ; jb[14]:= 6 ; nb[14]:= -0.15033924542148E-02;
  ib[15]:=  3 ; jb[15]:= 35; nb[15]:= -0.40668253562649E-01;
  ib[16]:=  4 ; jb[16]:= 1 ; nb[16]:= -0.78847309559367E-09;
  ib[17]:=  4 ; jb[17]:= 2 ; nb[17]:=  0.12790717852285E-07;
  ib[18]:=  4 ; jb[18]:= 3 ; nb[18]:=  0.48225372718507E-06;
  ib[19]:=  5 ; jb[19]:= 7 ; nb[19]:=  0.22922076337661E-05;
  ib[20]:=  6 ; jb[20]:= 3 ; nb[20]:= -0.16714766451061E-10;
  ib[21]:=  6 ; jb[21]:= 16; nb[21]:= -0.21171472321355E-02;
  ib[22]:=  6 ; jb[22]:= 35; nb[22]:= -0.23895741934104E+02;
  ib[23]:=  7 ; jb[23]:= 0 ; nb[23]:= -0.59059564324270E-17;
  ib[24]:=  7 ; jb[24]:= 11; nb[24]:= -0.12621808899101E-05;
  ib[25]:=  7 ; jb[25]:= 25; nb[25]:= -0.38946842435739E-01;
  ib[26]:=  8 ; jb[26]:= 8 ; nb[26]:=  0.11256211360459E-10;
  ib[27]:=  8 ; jb[27]:= 36; nb[27]:= -0.82311340897998E+01;
  ib[28]:=  9 ; jb[28]:= 13; nb[28]:=  0.19809712802088E-07;
  ib[29]:=  10; jb[29]:= 4 ; nb[29]:=  0.10406965210174E-18;
  ib[30]:=  10; jb[30]:= 10; nb[30]:= -0.10234747095929E-12;
  ib[31]:=  10; jb[31]:= 14; nb[31]:= -0.10018179379511E-08;
  ib[32]:=  16; jb[32]:= 29; nb[32]:= -0.80882908646985E-10;
  ib[33]:=  16; jb[33]:= 50; nb[33]:=  0.10693031879409E+00;
  ib[34]:=  18; jb[34]:= 57; nb[34]:= -0.33662250574171E+00;
  ib[35]:=  20; jb[35]:= 20; nb[35]:=  0.89185845355421E-24;
  ib[36]:=  20; jb[36]:= 35; nb[36]:=  0.30629316876232E-12;
  ib[37]:=  20; jb[37]:= 48; nb[37]:= -0.42002467698208E-05;
  ib[38]:=  21; jb[38]:= 21; nb[38]:= -0.59056029685639E-25;
  ib[39]:=  22; jb[39]:= 53; nb[39]:=  0.37826947613457E-05;
  ib[40]:=  23; jb[40]:= 39; nb[40]:= -0.12768608934681E-14;
  ib[41]:=  24; jb[41]:= 26; nb[41]:=  0.73087610595061E-28;
  ib[42]:=  24; jb[42]:= 40; nb[42]:=  0.55414715350778E-16;
  ib[43]:=  24; jb[43]:= 58; nb[43]:= -0.94369707241210E-06;

  ic[1 ]:=  0 ; jc[1 ]:= 0 ; nc[1 ]:=  0.10658070028513E+01;
  ic[2 ]:=  0 ; jc[2 ]:= 0 ; nc[2 ]:= -0.15732845290239E+02;
  ic[3 ]:=  0 ; jc[3 ]:= 1 ; nc[3 ]:=  0.20944396974307E+02;
  ic[4 ]:=  0 ; jc[4 ]:= 2 ; nc[4 ]:= -0.76867707878716E+01;
  ic[5 ]:=  0 ; jc[5 ]:= 7 ; nc[5 ]:=  0.26185947787954E+01;
  ic[6 ]:=  0 ; jc[6 ]:= 10; nc[6 ]:= -0.28080781148620E+01;
  ic[7 ]:=  0 ; jc[7 ]:= 12; nc[7 ]:=  0.12053369696517E+01;
  ic[8 ]:=  0 ; jc[8 ]:= 23; nc[8 ]:= -0.84566812812502E-02;
  ic[9 ]:=  1 ; jc[9 ]:= 2 ; nc[9 ]:= -0.12654315477714E+01;
  ic[10]:=  1 ; jc[10]:= 6 ; nc[10]:= -0.11524407806681E+01;
  ic[11]:=  1 ; jc[11]:= 15; nc[11]:=  0.88521043984318E+00;
  ic[12]:=  1 ; jc[12]:= 17; nc[12]:= -0.64207765181607E+00;
  ic[13]:=  2 ; jc[13]:= 0 ; nc[13]:=  0.38493460186671E+00;
  ic[14]:=  2 ; jc[14]:= 2 ; nc[14]:= -0.85214708824206E+00;
  ic[15]:=  2 ; jc[15]:= 6 ; nc[15]:=  0.48972281541877E+01;
  ic[16]:=  2 ; jc[16]:= 7 ; nc[16]:= -0.30502617256965E+01;
  ic[17]:=  2 ; jc[17]:= 22; nc[17]:=  0.39420536879154E-01;
  ic[18]:=  2 ; jc[18]:= 26; nc[18]:=  0.12558408424308E+00;
  ic[19]:=  3 ; jc[19]:= 0 ; nc[19]:= -0.27999329698710E+00;
  ic[20]:=  3 ; jc[20]:= 2 ; nc[20]:=  0.13899799569460E+01;
  ic[21]:=  3 ; jc[21]:= 4 ; nc[21]:= -0.20189915023570E+01;
  ic[22]:=  3 ; jc[22]:= 16; nc[22]:= -0.82147637173963E-02;
  ic[23]:=  3 ; jc[23]:= 26; nc[23]:= -0.47596035734923E+00;
  ic[24]:=  4 ; jc[24]:= 0 ; nc[24]:=  0.43984074473500E-01;
  ic[25]:=  4 ; jc[25]:= 2 ; nc[25]:= -0.44476435428739E+00;
  ic[26]:=  4 ; jc[26]:= 4 ; nc[26]:=  0.90572070719733E+00;
  ic[27]:=  4 ; jc[27]:= 26; nc[27]:=  0.70522450087967E+00;
  ic[28]:=  5 ; jc[28]:= 1 ; nc[28]:=  0.10770512626332E+00;
  ic[29]:=  5 ; jc[29]:= 3 ; nc[29]:= -0.32913623258954E+00;
  ic[30]:=  5 ; jc[30]:= 26; nc[30]:= -0.50871062041158E+00;
  ic[31]:=  6 ; jc[31]:= 0 ; nc[31]:= -0.22175400873096E-01;
  ic[32]:=  6 ; jc[32]:= 2 ; nc[32]:=  0.94260751665092E-01;
  ic[33]:=  6 ; jc[33]:= 26; nc[33]:=  0.16436278447961E+00;
  ic[34]:=  7 ; jc[34]:= 2 ; nc[34]:= -0.13503372241348E-01;
  ic[35]:=  8 ; jc[35]:= 26; nc[35]:= -0.14834345352472E-01;
  ic[36]:=  9 ; jc[36]:= 2 ; nc[36]:=  0.57922953628084E-03;
  ic[37]:=  9 ; jc[37]:= 26; nc[37]:=  0.32308904703711E-02;
  ic[38]:=  10; jc[38]:= 0 ; nc[38]:=  0.80964802996215E-04;
  ic[39]:=  10; jc[39]:= 1 ; nc[39]:= -0.16557679795037E-03;
  ic[40]:=  11; jc[40]:= 26; nc[40]:= -0.44923899061815E-04;

  n1 :=  0.11670521452767E+04;
  n2 := -0.72421316703206E+06;
  n3 := -0.17073846940092E+02;
  n4 :=  0.12020824702470E+05;
  n5 := -0.32325550322333E+07;
  n6 :=  0.14915108613530E+02;
  n7 := -0.48232657361591E+04;
  n8 :=  0.40511340542057E+06;
  n9 := -0.23855557567849E+00;
  n10:=  0.65017534844798E+03;

  ia2[1 ]:= 0 ; ja2[1 ]:=  0 ; na2[1 ]:= -0.23872489924521E+03;
  ia2[2 ]:= 0 ; ja2[2 ]:=  1 ; na2[2 ]:=  0.40421188637945E+03;
  ia2[3 ]:= 0 ; ja2[3 ]:=  2 ; na2[3 ]:=  0.11349746881718E+03;
  ia2[4 ]:= 0 ; ja2[4 ]:=  6 ; na2[4 ]:= -0.58457616048039E+01;
  ia2[5 ]:= 0 ; ja2[5 ]:= 22 ; na2[5 ]:= -0.15285482413140E-03;
  ia2[6 ]:= 0 ; ja2[6 ]:= 32 ; na2[6 ]:= -0.10866707695377E-05;
  ia2[7 ]:= 1 ; ja2[7 ]:=  0 ; na2[7 ]:= -0.13391744872602E+02;
  ia2[8 ]:= 1 ; ja2[8 ]:=  1 ; na2[8 ]:=  0.43211039183559E+02;
  ia2[9 ]:= 1 ; ja2[9 ]:=  2 ; na2[9 ]:= -0.54010067170506E+02;
  ia2[10]:= 1 ; ja2[10]:=  3 ; na2[10]:=  0.30535892203916E+02;
  ia2[11]:= 1 ; ja2[11]:=  4 ; na2[11]:= -0.65964749423638E+01;
  ia2[12]:= 1 ; ja2[12]:= 10 ; na2[12]:=  0.93965400878363E-02;
  ia2[13]:= 1 ; ja2[13]:= 32 ; na2[13]:=  0.11573647505340E-06;
  ia2[14]:= 2 ; ja2[14]:= 10 ; na2[14]:= -0.25858641282073E-04;
  ia2[15]:= 2 ; ja2[15]:= 32 ; na2[15]:= -0.40644363084799E-08;
  ia2[16]:= 3 ; ja2[16]:= 10 ; na2[16]:=  0.66456186191635E-07;
  ia2[17]:= 3 ; ja2[17]:= 32 ; na2[17]:=  0.80670734103027E-10;
  ia2[18]:= 4 ; ja2[18]:= 32 ; na2[18]:= -0.93477771213947E-12;
  ia2[19]:= 5 ; ja2[19]:= 32 ; na2[19]:=  0.58265442020601E-14;
  ia2[20]:= 6 ; ja2[20]:= 32 ; na2[20]:= -0.15020185953503E-16;

  ib2[1 ]:=  0 ; jb2[1 ]:= 0 ; nb2[1 ]:=  0.10898952318288E+04;
  ib2[2 ]:=  0 ; jb2[2 ]:= 1 ; nb2[2 ]:=  0.84951654495535E+03;
  ib2[3 ]:=  0 ; jb2[3 ]:= 2 ; nb2[3 ]:= -0.10781748091826E+03;
  ib2[4 ]:=  0 ; jb2[4 ]:= 3 ; nb2[4 ]:=  0.33153654801263E+02;
  ib2[5 ]:=  0 ; jb2[5 ]:= 7 ; nb2[5 ]:= -0.74232016790248E+01;
  ib2[6 ]:=  0 ; jb2[6 ]:= 20; nb2[6 ]:=  0.11765048724356E+02;
  ib2[7 ]:=  1 ; jb2[7 ]:= 0 ; nb2[7 ]:=  0.18445749355790E+01;
  ib2[8 ]:=  1 ; jb2[8 ]:= 1 ; nb2[8 ]:= -0.41792700549624E+01;
  ib2[9 ]:=  1 ; jb2[9 ]:= 2 ; nb2[9 ]:=  0.62478196935812E+01;
  ib2[10]:=  1 ; jb2[10]:= 3 ; nb2[10]:= -0.17344563108114E+02;
  ib2[11]:=  1 ; jb2[11]:= 7 ; nb2[11]:= -0.20058176862096E+03;
  ib2[12]:=  1 ; jb2[12]:= 9 ; nb2[12]:=  0.27196065473796E+03;
  ib2[13]:=  1 ; jb2[13]:= 11; nb2[13]:= -0.45511318285818E+03;
  ib2[14]:=  1 ; jb2[14]:= 18; nb2[14]:=  0.30919688604755E+04;
  ib2[15]:=  1 ; jb2[15]:= 44; nb2[15]:=  0.25226640357872E+06;
  ib2[16]:=  2 ; jb2[16]:= 0 ; nb2[16]:= -0.61707422868339E-02;
  ib2[17]:=  2 ; jb2[17]:= 2 ; nb2[17]:= -0.31078046629583E+00;
  ib2[18]:=  2 ; jb2[18]:= 7 ; nb2[18]:=  0.11670873077107E+02;
  ib2[19]:=  2 ; jb2[19]:= 36; nb2[19]:=  0.12812798404046E+09;
  ib2[20]:=  2 ; jb2[20]:= 38; nb2[20]:= -0.98554909623276E+09;
  ib2[21]:=  2 ; jb2[21]:= 40; nb2[21]:=  0.28224546973002E+10;
  ib2[22]:=  2 ; jb2[22]:= 42; nb2[22]:= -0.35948971410703E+10;
  ib2[23]:=  2 ; jb2[23]:= 44; nb2[23]:=  0.17227349913197E+10;
  ib2[24]:=  3 ; jb2[24]:= 24; nb2[24]:= -0.13551334240775E+05;
  ib2[25]:=  3 ; jb2[25]:= 44; nb2[25]:=  0.12848734664650E+08;
  ib2[26]:=  4 ; jb2[26]:= 12; nb2[26]:=  0.13865724283226E+01;
  ib2[27]:=  4 ; jb2[27]:= 32; nb2[27]:=  0.23598832556514E+06;
  ib2[28]:=  4 ; jb2[28]:= 44; nb2[28]:= -0.13105236545054E+08;
  ib2[29]:=  5 ; jb2[29]:= 32; nb2[29]:=  0.73999835474766E+04;
  ib2[30]:=  5 ; jb2[30]:= 36; nb2[30]:= -0.55196697030060E+06;
  ib2[31]:=  5 ; jb2[31]:= 42; nb2[31]:=  0.37154085996233E+07;
  ib2[32]:=  6 ; jb2[32]:= 34; nb2[32]:=  0.19127729239660E+05;
  ib2[33]:=  6 ; jb2[33]:= 44; nb2[33]:= -0.41535164835634E+06;
  ib2[34]:=  7 ; jb2[34]:= 28; nb2[34]:= -0.62459855192507E+02;

  ib3[1 ]:=  0 ; jb3[1 ]:= 0 ; nb3[1 ]:=  0.14895041079516E+04;
  ib3[2 ]:=  0 ; jb3[2 ]:= 1 ; nb3[2 ]:=  0.74307798314034E+03;
  ib3[3 ]:=  0 ; jb3[3 ]:= 2 ; nb3[3 ]:= -0.97708318797837E+02;
  ib3[4 ]:=  0 ; jb3[4 ]:= 12; nb3[4 ]:=  0.24742464705674E+01;
  ib3[5 ]:=  0 ; jb3[5 ]:= 18; nb3[5 ]:= -0.63281320016026E+00;
  ib3[6 ]:=  0 ; jb3[6 ]:= 24; nb3[6 ]:=  0.11385952129658E+01;
  ib3[7 ]:=  0 ; jb3[7 ]:= 28; nb3[7 ]:= -0.47811863648625E+00;
  ib3[8 ]:=  0 ; jb3[8 ]:= 40; nb3[8 ]:=  0.85208123431544E-02;
  ib3[9 ]:=  1 ; jb3[9 ]:= 0 ; nb3[9 ]:=  0.93747147377932E+00;
  ib3[10]:=  1 ; jb3[10]:= 2 ; nb3[10]:=  0.33593118604916E+01;
  ib3[11]:=  1 ; jb3[11]:= 6 ; nb3[11]:=  0.33809355601454E+01;
  ib3[12]:=  1 ; jb3[12]:= 12; nb3[12]:=  0.16844539671904E+00;
  ib3[13]:=  1 ; jb3[13]:= 18; nb3[13]:=  0.73875745236695E+00;
  ib3[14]:=  1 ; jb3[14]:= 24; nb3[14]:= -0.47128737436186E+00;
  ib3[15]:=  1 ; jb3[15]:= 28; nb3[15]:=  0.15020273139707E+00;
  ib3[16]:=  1 ; jb3[16]:= 40; nb3[16]:= -0.21764114219750E-02;
  ib3[17]:=  2 ; jb3[17]:= 2 ; nb3[17]:= -0.21810755324761E-01;
  ib3[18]:=  2 ; jb3[18]:= 8 ; nb3[18]:= -0.10829784403677E+00;
  ib3[19]:=  2 ; jb3[19]:= 18; nb3[19]:= -0.46333324635812E-01;
  ib3[20]:=  2 ; jb3[20]:= 40; nb3[20]:=  0.71280351959551E-04;
  ib3[21]:=  3 ; jb3[21]:= 1 ; nb3[21]:=  0.11032831789999E-03;
  ib3[22]:=  3 ; jb3[22]:= 2 ; nb3[22]:=  0.18955248387902E-03;
  ib3[23]:=  3 ; jb3[23]:= 12; nb3[23]:=  0.30891541160537E-02;
  ib3[24]:=  3 ; jb3[24]:= 24; nb3[24]:=  0.13555504554949E-02;
  ib3[25]:=  4 ; jb3[25]:= 2 ; nb3[25]:=  0.28640237477456E-06;
  ib3[26]:=  4 ; jb3[26]:= 12; nb3[26]:= -0.10779857357512E-04;
  ib3[27]:=  4 ; jb3[27]:= 18; nb3[27]:= -0.76462712454814E-04;
  ib3[28]:=  4 ; jb3[28]:= 24; nb3[28]:=  0.14052392818316E-04;
  ib3[29]:=  4 ; jb3[29]:= 28; nb3[29]:= -0.31083814331434E-04;
  ib3[30]:=  4 ; jb3[30]:= 40; nb3[30]:= -0.10302738212103E-05;
  ib3[31]:=  5 ; jb3[31]:= 18; nb3[31]:=  0.28217281635040E-06;
  ib3[32]:=  5 ; jb3[32]:= 24; nb3[32]:=  0.12704902271945E-05;
  ib3[33]:=  5 ; jb3[33]:= 40; nb3[33]:=  0.73803353468292E-07;
  ib3[34]:=  6 ; jb3[34]:= 28; nb3[34]:= -0.11030139238909E-07;
  ib3[35]:=  7 ; jb3[35]:= 2 ; nb3[35]:= -0.81456365207833E-13;
  ib3[36]:=  7 ; jb3[36]:= 28; nb3[36]:= -0.25180545682962E-10;
  ib3[37]:=  9 ; jb3[37]:= 1 ; nb3[37]:= -0.17565233969407E-17;
  ib3[38]:=  9 ; jb3[38]:= 40; nb3[38]:=  0.86934156344163E-14;

  ib4[1 ]:= -7 ; jb4[1 ]:= 0 ; nb4[1 ]:= -0.32368398555242E+13;
  ib4[2 ]:= -7 ; jb4[2 ]:= 4 ; nb4[2 ]:=  0.73263350902181E+13;
  ib4[3 ]:= -6 ; jb4[3 ]:= 0 ; nb4[3 ]:=  0.35825089945447E+12;
  ib4[4 ]:= -6 ; jb4[4 ]:= 2 ; nb4[4 ]:= -0.58340131851590E+12;
  ib4[5 ]:= -5 ; jb4[5 ]:= 0 ; nb4[5 ]:= -0.10783068217470E+11;
  ib4[6 ]:= -5 ; jb4[6 ]:= 2 ; nb4[6 ]:=  0.20825544563171E+11;
  ib4[7 ]:= -2 ; jb4[7 ]:= 0 ; nb4[7 ]:=  0.61074783564516E+06;
  ib4[8 ]:= -2 ; jb4[8 ]:= 1 ; nb4[8 ]:=  0.85977722535580E+06;
  ib4[9 ]:= -1 ; jb4[9 ]:= 0 ; nb4[9 ]:= -0.25745723604170E+05;
  ib4[10]:= -1 ; jb4[10]:= 2 ; nb4[10]:=  0.31081088422714E+05;
  ib4[11]:=  0 ; jb4[11]:= 0 ; nb4[11]:=  0.12082315865936E+04;
  ib4[12]:=  0 ; jb4[12]:= 1 ; nb4[12]:=  0.48219755109255E+03;
  ib4[13]:=  1 ; jb4[13]:= 4 ; nb4[13]:=  0.37966001272486E+01;
  ib4[14]:=  1 ; jb4[14]:= 8 ; nb4[14]:= -0.10842984880077E+02;
  ib4[15]:=  2 ; jb4[15]:= 4 ; nb4[15]:= -0.45364172676660E-01;
  ib4[16]:=  6 ; jb4[16]:= 0 ; nb4[16]:=  0.14559115658698E-12;
  ib4[17]:=  6 ; jb4[17]:= 1 ; nb4[17]:=  0.11261597407230E-11;
  ib4[18]:=  6 ; jb4[18]:= 4 ; nb4[18]:= -0.17804982240686E-10;
  ib4[19]:=  6 ; jb4[19]:= 10; nb4[19]:=  0.12324579690832E-06;
  ib4[20]:=  6 ; jb4[20]:= 12; nb4[20]:= -0.11606921130984E-05;
  ib4[21]:=  6 ; jb4[21]:= 16; nb4[21]:=  0.27846367088554E-04;
  ib4[22]:=  6 ; jb4[22]:= 20; nb4[22]:= -0.59270038474176E-03;
  ib4[23]:=  6 ; jb4[23]:= 22; nb4[23]:=  0.12918582991878E-02;

  ib5[1 ]:=  1 ; jb5[1 ]:= 0 ; nb5[1 ]:= -0.39235983861984E+06;
  ib5[2 ]:=  1 ; jb5[2 ]:= 1 ; nb5[2 ]:=  0.51526573827270E+06;
  ib5[3 ]:=  1 ; jb5[3 ]:= 2 ; nb5[3 ]:=  0.40482443161048E+05;
  ib5[4 ]:=  1 ; jb5[4 ]:= 3 ; nb5[4 ]:= -0.32193790923902E+03;
  ib5[5 ]:=  1 ; jb5[5 ]:= 6 ; nb5[5 ]:=  0.96961424218694E+02;
  ib5[6 ]:=  2 ; jb5[6 ]:= 1 ; nb5[6 ]:= -0.22867846371773E+02;
  ib5[7 ]:=  2 ; jb5[7 ]:= 2 ; nb5[7 ]:= -0.44942914124357E+06;
  ib5[8 ]:=  2 ; jb5[8 ]:= 4 ; nb5[8 ]:= -0.50118336020166E+04;
  ib5[9 ]:=  2 ; jb5[9 ]:= 7 ; nb5[9 ]:=  0.35684463560015E+00;
  ib5[10]:=  2 ; jb5[10]:= 36; nb5[10]:=  0.44235335848190E+05;
  ib5[11]:=  3 ; jb5[11]:= 0 ; nb5[11]:= -0.13673388811708E+05;
  ib5[12]:=  3 ; jb5[12]:= 1 ; nb5[12]:=  0.42163260207864E+06;
  ib5[13]:=  3 ; jb5[13]:= 3 ; nb5[13]:=  0.22516925837475E+05;
  ib5[14]:=  3 ; jb5[14]:= 6 ; nb5[14]:=  0.47442144865646E+03;
  ib5[15]:=  3 ; jb5[15]:= 35; nb5[15]:= -0.14931130797647E+03;
  ib5[16]:=  4 ; jb5[16]:= 1 ; nb5[16]:= -0.19781126320452E+06;
  ib5[17]:=  4 ; jb5[17]:= 2 ; nb5[17]:= -0.23554399470760E+05;
  ib5[18]:=  4 ; jb5[18]:= 3 ; nb5[18]:= -0.19070616302076E+05;
  ib5[19]:=  5 ; jb5[19]:= 7 ; nb5[19]:=  0.55375669883164E+05;
  ib5[20]:=  6 ; jb5[20]:= 3 ; nb5[20]:=  0.38293691437363E+04;
  ib5[21]:=  6 ; jb5[21]:= 16; nb5[21]:= -0.60391860580567E+03;
  ib5[22]:=  6 ; jb5[22]:= 35; nb5[22]:=  0.19363102620331E+04;
  ib5[23]:=  7 ; jb5[23]:= 0 ; nb5[23]:=  0.42660643698610E+04;
  ib5[24]:=  7 ; jb5[24]:= 11; nb5[24]:= -0.59780638872718E+04;
  ib5[25]:=  7 ; jb5[25]:= 25; nb5[25]:= -0.70401463926862E+03;
  ib5[26]:=  8 ; jb5[26]:= 8 ; nb5[26]:=  0.33836784107553E+03;
  ib5[27]:=  8 ; jb5[27]:= 36; nb5[27]:=  0.20862786635187E+02;
  ib5[28]:=  9 ; jb5[28]:= 13; nb5[28]:=  0.33834172656196E-01;
  ib5[29]:=  10; jb5[29]:= 4 ; nb5[29]:= -0.43124428414893E-04;
  ib5[30]:=  10; jb5[30]:= 10; nb5[30]:=  0.16653791356412E+03;
  ib5[31]:=  10; jb5[31]:= 14; nb5[31]:= -0.13986292055898E+03;
  ib5[32]:=  16; jb5[32]:= 29; nb5[32]:= -0.78849547999872E+00;
  ib5[33]:=  16; jb5[33]:= 50; nb5[33]:=  0.72132411753872E-01;
  ib5[34]:=  18; jb5[34]:= 57; nb5[34]:= -0.59754839398283E-02;
  ib5[35]:=  20; jb5[35]:= 20; nb5[35]:= -0.12141358953904E-04;
  ib5[36]:=  20; jb5[36]:= 35; nb5[36]:=  0.23227096733871E-06;
  ib5[37]:=  20; jb5[37]:= 48; nb5[37]:= -0.10538463566194E+02;
  ib5[38]:=  21; jb5[38]:= 21; nb5[38]:=  0.20718925496502E+01;
  ib5[39]:=  22; jb5[39]:= 53; nb5[39]:= -0.72193155260427E-01;
  ib5[40]:=  23; jb5[40]:= 39; nb5[40]:=  0.20749887081120E-06;
  ib5[41]:=  24; jb5[41]:= 26; nb5[41]:= -0.18340657911379E-01;
  ib5[42]:=  24; jb5[42]:= 40; nb5[42]:=  0.29036272348696E-06;
  ib5[43]:=  24; jb5[43]:= 58; nb5[43]:=  0.21037527893619E+00;
  ib5[44]:=  24; jb5[44]:= 26; nb5[44]:=  0.25681239729999E-03;
  ib5[45]:=  24; jb5[45]:= 40; nb5[45]:= -0.12799002933781E-01;
  ib5[46]:=  24; jb5[46]:= 58; nb5[46]:= -0.82198102652018E-05;

  ib6[1 ]:=  1 ; jb6[1 ]:= 0 ; nb6[1 ]:=  0.31687665083497E+06;
  ib6[2 ]:=  1 ; jb6[2 ]:= 1 ; nb6[2 ]:=  0.20864175881858E+02;
  ib6[3 ]:=  1 ; jb6[3 ]:= 2 ; nb6[3 ]:= -0.39859399803599E+06;
  ib6[4 ]:=  1 ; jb6[4 ]:= 3 ; nb6[4 ]:= -0.21816058518877E+02;
  ib6[5 ]:=  1 ; jb6[5 ]:= 6 ; nb6[5 ]:=  0.22369785194242E+06;
  ib6[6 ]:=  2 ; jb6[6 ]:= 1 ; nb6[6 ]:= -0.27841703445817E+04;
  ib6[7 ]:=  2 ; jb6[7 ]:= 2 ; nb6[7 ]:=  0.99207436071480E+01;
  ib6[8 ]:=  2 ; jb6[8 ]:= 4 ; nb6[8 ]:= -0.75197512299157E+05;
  ib6[9 ]:=  2 ; jb6[9 ]:= 7 ; nb6[9 ]:=  0.29708605951158E+04;
  ib6[10]:=  2 ; jb6[10]:= 36; nb6[10]:= -0.34406878548526E+01;
  ib6[11]:=  3 ; jb6[11]:= 0 ; nb6[11]:=  0.38815564249115E+00;
  ib6[12]:=  3 ; jb6[12]:= 1 ; nb6[12]:=  0.17511295085750E+05;
  ib6[13]:=  3 ; jb6[13]:= 3 ; nb6[13]:= -0.14237112854449E+04;
  ib6[14]:=  3 ; jb6[14]:= 6 ; nb6[14]:=  0.10943803364167E+01;
  ib6[15]:=  3 ; jb6[15]:= 35; nb6[15]:=  0.89971619308495E+00;
  ib6[16]:=  4 ; jb6[16]:= 1 ; nb6[16]:= -0.33759740098958E+04;
  ib6[17]:=  4 ; jb6[17]:= 2 ; nb6[17]:=  0.47162885818355E+03;
  ib6[18]:=  4 ; jb6[18]:= 3 ; nb6[18]:= -0.19188241993679E+01;
  ib6[19]:=  5 ; jb6[19]:= 7 ; nb6[19]:=  0.41078580492196E+00;
  ib6[20]:=  6 ; jb6[20]:= 3 ; nb6[20]:= -0.33465378172097E+00;
  ib6[21]:=  6 ; jb6[21]:= 16; nb6[21]:=  0.13870034777505E+04;
  ib6[22]:=  6 ; jb6[22]:= 35; nb6[22]:= -0.40663326195838E+03;
  ib6[23]:=  7 ; jb6[23]:= 0 ; nb6[23]:=  0.41727347159610E+02;
  ib6[24]:=  7 ; jb6[24]:= 11; nb6[24]:=  0.21932549434532E+01;
  ib6[25]:=  7 ; jb6[25]:= 25; nb6[25]:= -0.10320050009077E+01;
  ib6[26]:=  8 ; jb6[26]:= 8 ; nb6[26]:=  0.35882943516703E+00;
  ib6[27]:=  8 ; jb6[27]:= 36; nb6[27]:=  0.52511453726066E-02;
  ib6[28]:=  9 ; jb6[28]:= 13; nb6[28]:=  0.12838916450705E+02;
  ib6[29]:=  10; jb6[29]:= 4 ; nb6[29]:= -0.28642437219381E+01;
  ib6[30]:=  10; jb6[30]:= 10; nb6[30]:=  0.56912683664855E+00;
  ib6[31]:=  10; jb6[31]:= 14; nb6[31]:= -0.99962954584931E-01;
  ib6[32]:=  16; jb6[32]:= 29; nb6[32]:= -0.32632037778459E-02;
  ib6[33]:=  16; jb6[33]:= 50; nb6[33]:=  0.23320922576723E-03;
  ib6[34]:=  18; jb6[34]:= 57; nb6[34]:= -0.15334809857450E+00;
  ib6[35]:=  20; jb6[35]:= 20; nb6[35]:=  0.29072288239902E-01;
  ib6[36]:=  20; jb6[36]:= 35; nb6[36]:=  0.37534702741167E-03;
  ib6[37]:=  20; jb6[37]:= 48; nb6[37]:=  0.17296691702411E-02;
  ib6[38]:=  21; jb6[38]:= 21; nb6[38]:= -0.38556050844504E-03;
  ib6[39]:=  22; jb6[39]:= 53; nb6[39]:= -0.35017712292608E-04;
  ib6[40]:=  23; jb6[40]:= 39; nb6[40]:= -0.14566393631492E-04;
  ib6[41]:=  24; jb6[41]:= 26; nb6[41]:=  0.56420857267269E-05;
  ib6[42]:=  24; jb6[42]:= 40; nb6[42]:=  0.41286150074605E-07;
  ib6[43]:=  24; jb6[43]:= 58; nb6[43]:= -0.20684671118824E-07;
  ib6[44]:=  24; jb6[44]:= 58; nb6[44]:=  0.16409393674725E-08;

  ib7[1 ]:=  1 ; jb7[1 ]:= 0 ; nb7[1 ]:=  0.90968501005365E+03;
  ib7[2 ]:=  1 ; jb7[2 ]:= 1 ; nb7[2 ]:=  0.24045667088420E+04;
  ib7[3 ]:=  1 ; jb7[3 ]:= 2 ; nb7[3 ]:= -0.59162326387130E+03;
  ib7[4 ]:=  1 ; jb7[4 ]:= 3 ; nb7[4 ]:=  0.54145404128074E+03;
  ib7[5 ]:=  1 ; jb7[5 ]:= 6 ; nb7[5 ]:= -0.27098308411192E+03;
  ib7[6 ]:=  2 ; jb7[6 ]:= 1 ; nb7[6 ]:=  0.97976525097926E+03;
  ib7[7 ]:=  2 ; jb7[7 ]:= 2 ; nb7[7 ]:= -0.46966772959435E+03;
  ib7[8 ]:=  2 ; jb7[8 ]:= 4 ; nb7[8 ]:=  0.14399274604723E+02;
  ib7[9 ]:=  2 ; jb7[9 ]:= 7 ; nb7[9 ]:= -0.19104204230429E+02;
  ib7[10]:=  2 ; jb7[10]:= 36; nb7[10]:=  0.53299167111971E+01;
  ib7[11]:=  3 ; jb7[11]:= 0 ; nb7[11]:= -0.21252975375934E+02;
  ib7[12]:=  3 ; jb7[12]:= 1 ; nb7[12]:= -0.31147334413760E+00;
  ib7[13]:=  3 ; jb7[13]:= 3 ; nb7[13]:=  0.60334840894623E+00;
  ib7[14]:=  3 ; jb7[14]:= 6 ; nb7[14]:= -0.42764839702509E-01;
  ib7[15]:=  3 ; jb7[15]:= 35; nb7[15]:=  0.58185597255259E-02;
  ib7[16]:=  4 ; jb7[16]:= 1 ; nb7[16]:= -0.14597008284753E-01;
  ib7[17]:=  4 ; jb7[17]:= 2 ; nb7[17]:=  0.56631175631027E-02;
  ib7[18]:=  4 ; jb7[18]:= 3 ; nb7[18]:= -0.76155864584577E-04;
  ib7[19]:=  5 ; jb7[19]:= 7 ; nb7[19]:=  0.22440342919332E-03;
  ib7[20]:=  6 ; jb7[20]:= 3 ; nb7[20]:= -0.12561095013413E-04;
  ib7[21]:=  6 ; jb7[21]:= 16; nb7[21]:=  0.63323132660934E-06;
  ib7[22]:=  6 ; jb7[22]:= 35; nb7[22]:= -0.20541989675375E-05;
  ib7[23]:=  7 ; jb7[23]:= 0 ; nb7[23]:=  0.36405370390082E-07;
  ib7[24]:=  7 ; jb7[24]:= 11; nb7[24]:= -0.29759897789215E-06;
  ib7[25]:=  7 ; jb7[25]:= 25; nb7[25]:=  0.10136618529763E-07;
  ib7[26]:=  8 ; jb7[26]:= 8 ; nb7[26]:=  0.59925719692351E-11;
  ib7[27]:=  8 ; jb7[27]:= 36; nb7[27]:= -0.20677870105164E-10;
  ib7[28]:=  9 ; jb7[28]:= 13; nb7[28]:= -0.20874278181886E-10;
  ib7[29]:=  10; jb7[29]:= 4 ; nb7[29]:=  0.10162166825089E-09;
  ib7[30]:=  10; jb7[30]:= 10; nb7[30]:= -0.16429828281347E-09;

  nm[0,0]:= 0.5132047;
  nm[0,1]:= 0.2151778;
  nm[0,2]:=-0.2818107;
  nm[0,3]:= 0.1778064;
  nm[0,4]:=-0.04176610;
  nm[0,5]:= 0;
  nm[0,6]:= 0;
  nm[1,0]:= 0.3205656;
  nm[1,1]:= 0.7317883;
  nm[1,2]:=-1.070786;
  nm[1,3]:= 0.4605040;
  nm[1,4]:= 0;
  nm[1,5]:=-0.01578386;
  nm[1,6]:= 0;
  nm[2,0]:= 0;
  nm[2,1]:= 1.241044;
  nm[2,2]:=-1.263184;
  nm[2,3]:= 0.2340379;
  nm[2,4]:= 0;
  nm[2,5]:= 0;
  nm[2,6]:= 0;
  nm[3,0]:= 0;
  nm[3,1]:= 1.476783;
  nm[3,2]:= 0;
  nm[3,3]:=-0.4924179;
  nm[3,4]:= 0.1600435;
  nm[3,5]:= 0;
  nm[3,6]:=-0.003629481;
  nm[4,0]:=-0.7782567;
  nm[4,1]:= 0;
  nm[4,2]:= 0;
  nm[4,3]:= 0;
  nm[4,4]:= 0;
  nm[4,5]:= 0;
  nm[4,6]:= 0;
  nm[5,0]:= 0.1885447;
  nm[5,1]:= 0;
  nm[5,2]:= 0;
  nm[5,3]:= 0;
  nm[5,4]:= 0;
  nm[5,5]:= 0;
  nm[5,6]:= 0;

  case n of
    1:  if x>h1(p,350) then pul:=t3(p,x) else pul:=t1(p,x);
    2:  if x>350 then pul:=h3(r3(p,x),x) else pul:=h1(p,x);
    3:  if x>350 then pul:=1/r3(p,x) else pul:=v1(p,x);
    4:  if x>350 then pul:=s3(r3(p,x),x) else pul:=s1(p,x);

    5:  pul:=ps(x);
    6:  if x>350 then pul:=h3(r3f(x),x) else pul:=h1(ps(x),x);
    7:  if x>350 then pul:=1/r3f(x) else pul:=v1(ps(x),x);
    8:  if x>350 then pul:=s3(r3f(x),x) else pul:=s1(ps(x),x);
    9:  pul:=0.2356*exp(1.256*ln((374.15-x)/647.3))*(1-0.625*((374.15-x)/647.3));

    10: pul:=ts(p);
    11: if x<350 then pul:=h2(ps(x),x) else pul:=h3(r3(ps(x),x),x);
    12: if x<350 then pul:=v2(ps(x),x) else pul:=1/r3(ps(x),x);
    13: if x<350 then pul:=s2(ps(x),x) else pul:=s3(r3(ps(x),x),x);

    14: if p<4 then pul:=t2a(p,x) else
        if p<pg2(x) then pul:=t2b(p,x) else
        if p<16.5 then pul:=t2c(p,x) else
        if x>h2(p,tg(p)) then pul:=t2c(p,x) else pul:=t3(p,x);
    15: if x<350 then pul:=h2(p,x) else if p>pg(x) then pul:=h3(r3(p,x),x) else pul:=h2(p,x);
    16: if x<350 then pul:=v2(p,x) else if p>pg(x) then pul:=1/r3(p,x) else pul:=v2(p,x);
    17: if x<350 then pul:=s2(p,x) else if p>pg(x) then pul:=s3(r3(p,x),x) else pul:=s2(p,x);
    18: if p<4 then pul:=t2sa(p,x) else
        if x>s2(p,t2b(p,hg2(p))) then pul:=t2sb(p,x) else
        if p<16.5 then pul:=t2sc(p,x) else
        if x>s2(p,tg(p)) then pul:=t2sc(p,x) else pul:=t3s(p,x);

    19: if x<h2(p,tg(p)) then pul:=t3(p,x) else
        if p>pg2(x) then pul:=t2c(p,x) else
         pul:=t2b(p,x);
    20: if p>pg(x) then pul:=h3(r3(p,x),x) else pul:=h2(p,x);
    21: if p>pg(x) then pul:=1/r3(p,x) else pul:=v2(p,x);
    22: if p>pg(x) then pul:=s3(r3(p,x),x) else pul:=s2(p,x);
    23: if p<4 then pul:=t2sa(p,x) else
        if x>s2(p,t2b(p,hg2(p))) then pul:=t2sb(p,x) else
        if x>s2(p,tg(p)) then pul:=t2sc(p,x) else pul:=t3s(p,x);

    24: pul:=mu(p,x);
    25: pul:=la(p,x);

    30: pul:=r3(p,x);
    31: pul:=p3(p,x);

    end;
  end;
end.
