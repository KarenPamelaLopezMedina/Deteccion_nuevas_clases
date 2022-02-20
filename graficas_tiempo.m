clear all, close all, clc;

[d,s,r] = xlsread('T_desglosebase2.xlsx');


figure

% % - - - - - TIEMPO TOTAL - - - - - -                    
% Tiempo_total = d(:,3);
% Tiempo_total = Tiempo_total/60;
% DataChunk = [1:1:length(Tiempo_total)];
% 
% [xa,ya] = stairs(DataChunk, Tiempo_total);
% hold on
% h = stairs(DataChunk, Tiempo_total, 'r');
% %axis([1 49 9 13])
% %xticks(1:3:48);
% %yticks(98:0.25:100);
% xlabel('Data Chunk')
% ylabel('Tiempo [min]')
% % Get handle to current axes.
% ax = gca
% set(gca,'fontsize',20)
% ax.XAxis.FontSize = 16;
% ax.YAxis.FontSize = 16;
% title('Execution Time: normal, smurf and satan', 'FontSize', 22)
% h(1).Marker = 'o';
% h(1).MarkerSize = 6;
% h(1).MarkerFaceColor = 'y';
% h(1).LineWidth = 2;
% %saveas(gcf,'Accuracy_varias.png')

% - - - - - TIEMPO DE CLASIFICACIÓN - - - - - -                    
Tiempo_clasif = d(:,4);
%Tiempo_clasif = Tiempo_clasif/60;
DataChunk = [1:1:length(Tiempo_clasif)];

[xa,ya] = stairs(DataChunk, Tiempo_clasif);

hold on

h = stairs(DataChunk, Tiempo_clasif, 'g');
%axis([1 49 9 13])
%xticks(1:3:48);
%yticks(98:0.25:100);
h(1).Marker = 'o';
h(1).MarkerSize = 6;
h(1).MarkerFaceColor = 'g';
h(1).LineWidth = 2;


% - - - - - TIEMPO DE HACER MATRIZ GHOS - - - - - -                    
Tiempo_matrix = d(:,5);
%Tiempo_matrix = Tiempo_matrix/60;
DataChunk = [1:1:length(Tiempo_matrix)];

[xa,ya] = stairs(DataChunk, Tiempo_matrix);
hold on
h = stairs(DataChunk, Tiempo_matrix, 'b');
%axis([1 49 9 13])
%xticks(1:3:48);
%yticks(98:0.25:100);
%legend('Tiempo total', 'T clasif', 'T matrix')

h(1).Marker = 'o';
h(1).MarkerSize = 6;
h(1).MarkerFaceColor = 'b';
h(1).LineWidth = 2;

% - - - - - TIEMPO valor ghos - - - - - -                    
Tiempo_val_ghos = d(:,6);
%Tiempo_matrix = Tiempo_matrix/60;
DataChunk = [1:1:length(Tiempo_val_ghos)];

[xa,ya] = stairs(DataChunk, Tiempo_val_ghos);
hold on
h = stairs(DataChunk, Tiempo_val_ghos, 'c');
%axis([1 49 9 13])
%xticks(1:3:48);
%yticks(98:0.25:100);

h(1).Marker = 'o';
h(1).MarkerSize = 6;
h(1).MarkerFaceColor = 'c';
h(1).LineWidth = 2;


% - - - - - TIEMPO DE CLASIFICACIÓN CORRECTA - - - - - -                    
Tiempo_correct_clasif = d(:,7);
%Tiempo_matrix = Tiempo_matrix/60;
DataChunk = [1:1:length(Tiempo_correct_clasif)];

[xa,ya] = stairs(DataChunk, Tiempo_correct_clasif);
hold on
h = stairs(DataChunk, Tiempo_correct_clasif, 'm');
legend('T clasif', 'T matrix', 'T valor ghos', 'T correct clasif')

h(1).Marker = 'o';
h(1).MarkerSize = 6;
h(1).MarkerFaceColor = 'm';
h(1).LineWidth = 2;


% - - - - - TIEMPO DE CLASIFICACIÓN INCORRECTA (MANDAR A STM) - - - - - -                    
Tiempo_incorr_clasif = d(:,8);
%Tiempo_matrix = Tiempo_matrix/60;
DataChunk = [1:1:length(Tiempo_incorr_clasif)];

[xa,ya] = stairs(DataChunk, Tiempo_incorr_clasif);
hold on
h = stairs(DataChunk, Tiempo_incorr_clasif, 'y');
legend('T clasif', 'T matrix', 'T valor ghos', 'T correct clasif', 'T incorr clasif')

h(1).Marker = 'o';
h(1).MarkerSize = 6;
h(1).MarkerFaceColor = 'y';
h(1).LineWidth = 2;


% - - - - - TIEMPO DE ANALISIS STM - - - - - -                    
Tiempo_stm = d(:,9);
%Tiempo_matrix = Tiempo_matrix/60;
DataChunk = [1:1:length(Tiempo_stm)];

[xa,ya] = stairs(DataChunk, Tiempo_stm);

h = stairs(DataChunk, Tiempo_stm, 'g');
legend('T clasif', 'T matrix', 'T valor ghos', 'T correct clasif', 'T incorr clasif', "T stm")

h(1).Marker = 'o';
h(1).MarkerSize = 6;
h(1).MarkerFaceColor = 	'g';
h(1).LineWidth = 2;

txt = {'Tiempos por sección'};
text(20,100,txt, 20, 'FontSize', 20)

hold off
 
grid on