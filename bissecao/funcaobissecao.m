function [raizes] = funcaobissecao()
a= 0;
b= 0;
c= 0;
d= 1;
e= -2;

li = 0 ;
ls =10; 
erro=0.1 ;

if (funcaopolinomio(a,b,c,d,e,li) * funcaopolinomio(a,b,c,d,e,ls) < 0) 
    raizes= (li+ls)/2;
    
    while (abs(funcaopolinomio(a,b,c,d,e,raizes)) > erro)
        if(funcaopolinomio(a,b,c,d,e,li) * funcaopolinomio(a,b,c,d,e,raizes) < 0) 
            ls= raizes;
        else 
            li=raizes;
        end
       raizes= (li+ls)/2; 
    end 
else
    fprintf('n�o h� razes no intervalo');
end

end

