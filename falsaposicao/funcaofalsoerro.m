function [raizes] = funcaofalsoerro()
a= 0;
b= 0;
c= 0;
d= 1;
e= -2;

li = 0 ;
ls =10; 
erro=0.1 ;

if (funcaopolinomio(a,b,c,d,e,li) * funcaopolinomio(a,b,c,d,e,ls) < 0) 
     raizes = li - (ls-li)*funcaopolinomio(a,b,c,d,e,li)/(funcaopolinomio(a,b,c,d,e,ls)-funcaopolinomio(a,b,c,d,e,li));
    
    while (abs(funcaopolinomio(a,b,c,d,e,raizes)) > erro)
        if(funcaopolinomio(a,b,c,d,e,li) * funcaopolinomio(a,b,c,d,e,raizes) < 0) 
            ls= raizes;
        else 
            li=raizes;
        end
        raizes = li - (ls-li)*funcaopolinomio(a,b,c,d,e,li)/(funcaopolinomio(a,b,c,d,e,ls)-funcaopolinomio(a,b,c,d,e,li));
    end 
else
    fprintf('não há razes no intervalo');
end

end

