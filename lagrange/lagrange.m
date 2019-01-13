function [valorFuncao] = lagrange()

vetx = [-2 0 1];
vety = [3 1 -1];
valorx=-1;
grau = 3;
pn=0;

for j=1:grau
    p = 1;
    for i=1:grau
        if(i~=j)
                p=p*((valorx-vetx(i))/(vetx(j)-vetx(i)));
        end
        i=i+1;
    end
     pn = (p*vety(j))+pn;
        j=j+1;
end
        valorFuncao = pn;
end