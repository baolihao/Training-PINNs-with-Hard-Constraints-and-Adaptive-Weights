            L = @(u) -diff(u, 2) - diff(u, 4);
            N = @(u) -.5*diff(u.^2);
            dom = [0 32*pi];
           
            u0 = chebfun('cos(x/16).*(1 + sin((x-1)/16))', dom, 'trig');
            data_ks = [];
            t  = 0:0.1:20;
     
            x = linspace(0,32*pi,201);
            for T = 0:0.1:20

            tspan = [0 T];
            S      = spinop(dom,tspan);
            S.lin  = L;
            S.nonlin = N;
            S.init = u0; 
            u = spin(S,256,1e-2,'plot','off');
            u_temp = u(x);
            data_ks = [data_ks,u_temp'];
            end
            
            exact_sol = data_ks;
            save('KS_1D_t20.mat','t','x','exact_sol')