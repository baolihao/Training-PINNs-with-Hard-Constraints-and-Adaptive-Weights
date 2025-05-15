 gamma1 = 0.0001;
 gamma2 = 4;

 L      = @(u) gamma1*diff(u, 2);
 N      = @(u) gamma2*(u - u.^3);
 dom    = [-1 1];
 u0     = @(x) x.^2.*sin(2*pi*x);
 u0     = chebfun(u0, dom, 'trig');

 
 t      = 0:0.01:1;
 x      = -1:0.01:1;

 data_ac_6 = [];
 for T = 0:0.01:1
     tspan  = [0 T];
     S      = spinop(dom,tspan);
     S.lin  = L;
     S.nonlin = N;
     S.init = u0;
     u = spin(S,512,0.01,'plot','off');
     u_temp = u(x);
     data_ac_6 = [data_ac_6,u_temp'];
            
 end
 exact_sol = data_ac_6;
 save('AC_1D_case2.mat','t','x','exact_sol')

 
 