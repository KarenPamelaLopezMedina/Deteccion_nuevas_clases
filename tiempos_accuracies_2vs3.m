clear all, close all, clc;
% Tiempo del programa sin modificación
[a,b,c] = xlsread('T_desglosebase2.xlsx');
% Tiempo del programa con nueva función de ghos
[d,e,f] = xlsread('T_desglosebase3.xlsx');


% Accuracy del programa sin modificación
[g,h,i] = xlsread('accuracy_base2.xlsx');
% Accuracy del programa con nueva función de ghos
[j,k,l] = xlsread('accuracy_base3.xlsx');


figure
% - - - - - TIEMPO BASE 2 - - - - - -                    
Tiempo_2_funciones = a(:,4);
%Tiempo_clasif = Tiempo_clasif/60;
DataChunk = [1:1:length(Tiempo_2_funciones)];

[xa,ya] = stairs(DataChunk, Tiempo_2_funciones);

hold on

h = stairs(DataChunk, Tiempo_2_funciones, 'r');
h(1).Marker = 'o';
h(1).MarkerSize = 6;
h(1).MarkerFaceColor = 'r';
h(1).LineWidth = 2;

% - - - - - TIEMPO BASE 3 - - - - - -                    
Tiempo_1_funcion = d(:,4);
%Tiempo_matrix = Tiempo_matrix/60;
DataChunk = [1:1:length(Tiempo_1_funcion)];

[xa,ya] = stairs(DataChunk, Tiempo_1_funcion);
h = stairs(DataChunk, Tiempo_1_funcion, 'b');
h(1).Marker = 'o';
h(1).MarkerSize = 6;
h(1).MarkerFaceColor = 'b';
h(1).LineWidth = 2;

xlabel('Data Chunk')
ylabel('Time [min]')
% Get handle to current axes.
ax = gca
set(gca,'fontsize',20)
ax.XAxis.FontSize = 16;
ax.YAxis.FontSize = 16;


legend('T anterior', 'T nuevo')
txt = {'Comparación de tiempos'};
text(20,190,txt, 20, 'FontSize', 20)
txt = {'con modificación de función GHOS'};
text(16,185,txt, 20, 'FontSize', 20)

hold off
 
grid on


% - - - - - - - ACCURACIES - - - - - - -  
figure
% - - - - - TIEMPO BASE 2 - - - - - -                    
Accuracy_2_funciones = g(:,1);
%Tiempo_clasif = Tiempo_clasif/60;
DataChunk = [1:1:length(Accuracy_2_funciones)];

[xa,ya] = stairs(DataChunk, Accuracy_2_funciones);

hold on

h = stairs(DataChunk, Accuracy_2_funciones, 'r');
h(1).Marker = 'o';
h(1).MarkerSize = 6;
h(1).MarkerFaceColor = 'r';
h(1).LineWidth = 2;

% - - - - - TIEMPO BASE 3 - - - - - -                    
Accuracy_1_funcion = j(:,1);
%Tiempo_matrix = Tiempo_matrix/60;
DataChunk = [1:1:length(Accuracy_1_funcion)];

[xa,ya] = stairs(DataChunk, Accuracy_1_funcion);
h = stairs(DataChunk, Accuracy_1_funcion, 'b');
h(1).Marker = 'o';
h(1).MarkerSize = 6;
h(1).MarkerFaceColor = 'b';
h(1).LineWidth = 2;

legend('Accuracy anterior', 'Accuracy nuevo')
txt = {'Comparación de accuracies'};
text(15,99.7,txt, 20, 'FontSize', 20)
txt = {'con modificación de función GHOS'};
text(15,99.6,txt, 20, 'FontSize', 20)

xlabel('Data Chunk')
ylabel('Accuracy [%]')
% Get handle to current axes.
ax = gca
set(gca,'fontsize',20)
ax.XAxis.FontSize = 16;
ax.YAxis.FontSize = 16;


hold off
 
grid on



