clear all, close all, clc;
% Se grafican los tiempos totales del experimento normal, smurf y neptune
% con 3 microclusteres creados en el análisis de la STM. Pero con y sin la
% función de extension class


 
% % - - - - - TIEMPO TOTAL con 3MC en la STM - - - - - -                    
[a, b, c] = xlsread('C:\Users\super\OneDrive - Instituto Politecnico Nacional\TESIS\Cambio5\con función\T_desglosebase5_caso2_stm3.xlsx');
[d, e, f] = xlsread('C:\Users\super\OneDrive - Instituto Politecnico Nacional\TESIS\Cambio5\Sin función extension class\T_desglosebase5_caso2_stm3.xlsx');

% %- - - - - - - - CON FUNCION- - - - - - -  
Tiempo_total_c = a(:,3);
Tiempo_total_c = Tiempo_total_c/60;
DataChunk = [1:1:length(Tiempo_total_c)];

% %- - - - - - - - SIN FUNCION- - - - - - -  
Tiempo_total_s = d(:,3);
Tiempo_total_s = Tiempo_total_s/60;
DataChunk = [1:1:length(Tiempo_total_s)];
% 9, 12, 14, 21


figure

[xa,ya] = stairs(DataChunk, Tiempo_total_c);

hold on
grid on

h = stairs(DataChunk, Tiempo_total_c, 'r');
h(1).LineWidth = 2;

% - - - - - SIN FUNCIÓN - - - - - - 

h = stairs(DataChunk, Tiempo_total_s, 'b');
h(1).LineWidth = 2;

title('Execution Time: normal, smurf and neptune', 'FontSize', 22)

legend('Con funcion extension', 'sin funcion')
txt = {'Tiempo total entre con y sin función de extensión'};
hold off

%% - - - - - - - OTRAS GRÁFICAS - - - - - - - 
%Columna 4
C4 = a(:, 4)/60;
C5 = a(:, 5)/60;
C6 = a(:, 6)/60;
C7 = a(:, 7)/60;
C8 = a(:, 8)/60;
C9 = a(:, 9)/60;


figure
hold on
grid on


h = stairs(Tiempo_total_s, 'r');
h(1).LineWidth = 2;

h = stairs(C4, 'g');
h(1).LineWidth = 2;

h = stairs(C5, 'b');
h(1).LineWidth = 2;

h = stairs(C6, 'c');
h(1).LineWidth = 2;

h = stairs(C7, 'm');
h(1).LineWidth = 2;

h = stairs(C8, 'y');
h(1).LineWidth = 2;

h = stairs(C9, 'k');
h(1).LineWidth = 2;


legend('CON funcion extension', 'C4', 'C5', 'C6', 'C7', 'C8', 'C9')

title('Tiempos secciones del programa. CON funcion extension', 'FontSize', 22)

txt = {'El tiempo de STM es el que provoca estos picos'};
text(5,7,txt, 20, 'FontSize', 20)

txt = {'Es la línea negra'};
text(5,6,txt, 20, 'FontSize', 20)

hold off

%% - - - - - - - 

C10 = a(:, 10)/60;
C11 = a(:, 11)/60;
C12 = a(:, 12)/60;
C13 = a(:, 13)/60;


figure
hold on
grid on

h = stairs(Tiempo_total_c, 'r');
h(1).LineWidth = 2;

h = stairs(C9, 'g');
h(1).LineWidth = 2;

h = stairs(C10, 'b');
h(1).LineWidth = 2;

h = stairs(C11, 'c');
h(1).LineWidth = 2;

h = stairs(C12, 'm');
h(1).LineWidth = 2;

h = stairs(C13, 'y');
h(1).LineWidth = 2;


legend('CON funcion extension', 'C9', 'C10', 'C11', 'C12')

title('Tiempos: STM, CON función extenssion', 'FontSize', 22)

txt = {'Línea magenta es el análisis de la STM'};
text(5,7,txt, 20, 'FontSize', 20)


hold off

% Los picos se mantienen en C!2 lo cual significa que estos picos se
% presentan en la función de análisis

%% - - - - - - - - - - - Tiempos de análisis de la stm - - - - - - - 
C16 = a(:, 16)/60;
C17 = a(:, 17)/60;
C18 = a(:, 18)/60;
C19 = a(:, 19)/60;
C20 = a(:, 20)/60;
C21 = a(:, 21)/60;
C22 = a(:, 22)/60;
C23 = a(:, 23)/60;



figure
hold on
grid on


h = stairs(C12, '--r');
% h(1).LineWidth = 2;

h = stairs(C13, 'g');
h(1).LineWidth = 2;

h = stairs(C16, 'b');
h(1).LineWidth = 2;

h = stairs(C17, 'c');
h(1).LineWidth = 2;

h = stairs(C18, 'm');
h(1).LineWidth = 2;

h = stairs(C19, 'y');
h(1).LineWidth = 2;

h = stairs(C20, 'r');

h = stairs(C21, '--b');

%h = stairs(C20, 'r');

legend('C12', 'C13', 'C16', 'C17', 'C18', 'C19', 'C20', 'C21')

title('Tiempos función: Análisis STM, CON funcion extension', 'FontSize', 22)

txt = {'C12 y C21 se traslapan'};
text(5,3.5,txt, 20, 'FontSize', 20)

txt = {'C12 se refiere al tiempo total de la STM'};
text(5,3,txt, 20, 'FontSize', 20)


txt = {'C21 se refiere a'};
text(5,2.5,txt, 20, 'FontSize', 20)

hold off

% C21 es donde se muestran los picos

%% Picos de tiempo
figure
hold on
grid on

h = stairs(Tiempo_total_c, '--r');

h = stairs(C12, '--r');

h = stairs(C21, '--b');

%h = stairs(C20, 'r');

legend('T total con función', 'C12', 'C21')

title('T función: Análisis STM, CON función de extension', 'FontSize', 22)

txt = {'Estas líneas se traslapan'};
text(3,8,txt, 20, 'FontSize', 18)

txt = {'Quiere decir que los picos en el tiempo del experimento completo'};
text(3,7,txt, 20, 'FontSize', 18)

txt = {'se presentan cuando C12, función de Analysis STM se dispara.'};
text(3,4,txt, 20, 'FontSize', 18)

txt = {'Analysis STM incluye el cálculo del umbral (C21) que es lo que más tiempo consume.'};
text(3,3,txt, 20, 'FontSize', 18)


hold off

% C21 es donde se muestran los picos
