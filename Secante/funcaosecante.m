function [raizes] = funcaosecante()

li = 2 ;
ls =3; 
erro=0.01 ;

if ((funcaopolinomio(li) * funcaopolinomio(ls)) < 0) 
     raizes = ls - funcaopolinomio(ls)*((ls-li)/(funcaopolinomio(ls)- funcaopolinomio(li)));
      
    while (abs(funcaopolinomio(raizes))>erro)
        
        li = ls;
        ls=raizes;
        raizes = ls-funcaopolinomio(ls)*((ls-li)/(funcaopolinomio(ls)- funcaopolinomio(li)));    
    end 
else
    fprintf('n�o h� razes no intervalo');
end

end

