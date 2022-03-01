clear all, close all, clc;
% Se grafican los tiempos totales del experimento normal, smurf y neptune
% con 3 y 10 microclusteres creados en el análisis de la STM.


 
% % - - - - - TIEMPO TOTAL con 3MC en la STM - - - - - -                    
[a,b,c] = xlsread('C:\Users\super\OneDrive - Instituto Politecnico Nacional\TESIS\Cambio3-caso2\STM3\T_desglosebase3_caso2_stm3.xlsx');

Tiempo_total_3 = a(:,3);
Tiempo_total_3 = Tiempo_total_3/60;
DataChunk = [1:1:length(Tiempo_total_3)];

figure

[xa,ya] = stairs(DataChunk, Tiempo_total_3);

hold on
grid on

h = stairs(DataChunk, Tiempo_total_3, 'r');
h(1).LineWidth = 2;

% % - - - - - TIEMPO TOTAL con 10 MC en la STM - - - - - -                    
[d,e,f] = xlsread('C:\Users\super\OneDrive - Instituto Politecnico Nacional\TESIS\Cambio3-caso2\STM10\T_desglosebase3_caso2_stm10.xlsx');

Tiempo_total_10 = d(:,3);
Tiempo_total_10 = Tiempo_total_10/60;
DataChunk = [1:1:length(Tiempo_total_10)];
h = stairs(DataChunk, Tiempo_total_10, 'b');
h(1).LineWidth = 2;


xlabel('Data Chunk')
ylabel('Tiempo [min]')
% Get handle to current axes.
ax = gca
set(gca,'fontsize',20)
ax.XAxis.FontSize = 16;
ax.YAxis.FontSize = 16;
title('Execution Time: normal, smurf and neptune', 'FontSize', 22)

legend('STM = 3', 'STM = 10')
txt = {'Tiempo total'};
text(50,20,txt, 20, 'FontSize', 20)
% 
hold off
%  
% grid on