            gamma1 = 1e-4;
            gamma2 = 1e-2;
            L = @(u) -gamma2*(diff(u, 2) + gamma1*diff(u, 4));
            N = @(u) gamma2*diff(u.^3, 2);
            dom = [-1 1];
            u0 = chebfun('-cos(2*pi*x)', dom, 'trig');
            data_ch = [];
            t=0:0.01:1;
            x=-1:0.01:1;
 for T = 0:0.01:1
     tspan  = [0 T];
     S      = spinop(dom,tspan);
     S.lin  = L;
     S.nonlin = N;
     S.init = u0;
     u = spin(S,256,0.001,'plot','off');
     u_temp = u(x);
     data_ch = [data_ch,u_temp'];

  end 
 Exact = data_ch;
 save('CH_1D.mat','t','x','Exact')

