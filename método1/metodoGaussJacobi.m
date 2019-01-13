function [raiz] = metodoGaussJacobi()

a = 7;
b=6;
c=16;
d=8;
e=18;
f=5;


x = 0;
y = 0;
z = 0;
contx = 1;
conty = 1;
contz = 1;
erro = 0.01;  
cont =0;
            
            while (((abs(x - contx)) > erro) || ((abs(y - conty)) > erro) || ((abs(z - contz)) > erro))
                contx=x;
                conty=y;
                contz=z;                
                
                x = funcaoPolinomial(a,conty,-contz,b);
                y = funcaoPolinomial(c,-contx,contz,d);
                z = funcaoPolinomial(e,-contx,-conty,f); 
                cont = cont+1;
            end
        raiz = {x y z cont};             
    end    
                          