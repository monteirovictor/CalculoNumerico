function [raiz] = metodoGaussSeidel()

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
            
            while ((abs(x - contx)) > erro) && ((abs(y - conty)) > erro) && ((abs(z - contz)) > erro)
                if(contx ~= x)
                    contx = x;
                end
                 if(conty ~= y)
                    conty = y;
                 end
                 if(contz ~= z)
                    contz = z;
                end
                
                x = funcaoPolinomial(a,y,-z,b);
                y = funcaoPolinomial(c,-x,z,d);
                z = funcaoPolinomial(e,-x,-y,f);
                
               
                
            end
        raiz = {x y z}; 
        
        
    end    
