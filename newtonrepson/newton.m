
function [raiz] = newton()

li=8;
ls=9;
e=0.001;
if(funcao(li)*funcao(ls)<0)
    if(funcao(li)*derivada2(li)>0)
        raiz = li -(funcao(li)/derivada1(li));
        while(abs(funcao(raiz))>e)
           raiz=raiz-(funcao(raiz)/derivada1(raiz)) 
        end
    else
        raiz = ls - (funcao(ls)/derivada1(ls));
        while(abs(funcao(raiz))>e)
            raiz = raiz-(funcao(raiz)/derivada1(raiz));
        end
    end
else
    fprintf('não tem raiz');
end
end

