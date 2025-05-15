            L = @(u,v) [diff(u,2); 1e-2*diff(v,2)];
            N = @(u,v) [2e-2*(1 - u) - u.*v.^2; -8.62e-2*v + u.*v.^2];
            G = 50;
            dom = G*[-1 1];

            dt = 0.1;
            t = 0:0.1:30;
            x = -50:0.1:50;

            u01 = chebfun(@(x) 1 - 1/2*sin(pi*(x-G)/(2*G)).^4, dom, 'trig');
            u02 = chebfun(@(x) 1/4*sin(pi*(x-G)/(2*G)).^4, dom, 'trig');
            u0 = [u01; u02];
           
            data_u_4IC = [];
            data_v_4IC = [];
            
            for T = 0:0.1:30
            tspan = [0 T];
            S     = spinop(dom,tspan);
            S.lin = L;
            S.nonlin = N;
            S.init = u0;
            uv = spin(S,512,dt,'plot','off'); 
            u = uv{1};
            v = uv{2};
            u_temp = u(x);
            v_temp = v(x);
            data_u_4IC = [data_u_4IC,u_temp'];
            data_v_4IC = [data_v_4IC,v_temp'];
            end

             u_sol = data_u_4IC;
             v_sol = data_v_4IC;
            save('GS_1D_t30.mat','t','x','u_sol','v_sol')

