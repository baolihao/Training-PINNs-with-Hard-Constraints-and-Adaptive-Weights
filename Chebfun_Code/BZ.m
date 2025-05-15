
            L = @(u,v,w)[1e-5*diff(u,2); 2e-5*diff(v,2); 1e-5*diff(w,2)];
            N = @(u,v,w)[u + v - u.*v - u.^2; w - v - u.*v; u - w];
            dom = [-1 1];
            u01 = chebfun(@(x) exp(-100*(x+.5).^2), dom, 'trig');
            u02 = chebfun(@(x) exp(-100*x.^2), dom, 'trig');
            u03 = chebfun(@(x) exp(-100*(x-.5).^2), dom, 'trig');
            u0 = [u01; u02; u03];

            t = 0:0.01:3;
            x = -1:0.01:1;

            data_u = [];
            data_v = [];
            data_w = [];

            for T = 0:0.01:3
            tspan = [0 T];
            S     = spinop(dom,tspan);
            S.lin = L;
            S.nonlin = N;
            S.init = u0;
            uvw = spin(S,256,1e-2,'plot','off'); 
            u = uvw{1};
            v = uvw{2};
            w = uvw{3};
            u_temp = u(x);
            v_temp = v(x);
            w_temp = w(x);
            data_u = [data_u,u_temp'];
            data_v = [data_v,v_temp'];
            data_w = [data_w,w_temp'];
            end

             u_sol = data_u;
             v_sol = data_v;
             w_sol = data_w;
            save('BZ_1D_t3.mat','t','x','u_sol','v_sol','w_sol')

            

