function [V,P1,P2,P3,P4]=Abs2R2(A,B,c,d)
%
% Функция Abs2R2 рисует множество решений 
% для системы неравенств  |Ax-c| <= B|x|+d, где
%   A,B - вещественные матрицы, у которых m строк и 2 столбца;
%   c,d - вещественные векторы длины m.
%
% Выходные аргументы:
% V - ориентиры (вершины пересечений множества решений с ортантами);
% Pk - если множество решений в ортанте k ограничено, Pk дает
%   замкнутый обход по часовой стрелке множества решений в ортанте k,
%   а если неограничено, то аналогичный обход, но для пересечения 
%   множества решений в ортанте k с брусом обрезки.
%
% автор: Шарая Ирина Александровна (Институт вычислительных технологий, Новосибирск)
% дата:  12/12/2013

    % перейдем к интервальному включению [uC,oC] x \subseteq [ud,od]
    % в арифметике Каухера
    uC=A+B;
    oC=A-B;
    ud=c-d;
    od=c+d;

    % нарисуем множество решений включения [uC,oC] x \subseteq [ud,od]
    % и, если надо, напечатаем V и Pk (k=1,2,3,4)
    if nargout < 1
        CxindR2(uC,oC,ud,od);
    end
    if nargout == 1
        [V]=CxindR2(uC,oC,ud,od);
    end
    if nargout > 1
        [V,P1,P2,P3,P4]=CxindR2(uC,oC,ud,od);
    end
end
