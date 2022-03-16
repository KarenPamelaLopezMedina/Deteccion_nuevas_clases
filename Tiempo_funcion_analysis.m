clear all, close all, clc;
% Se grafican los tiempos totales del experimento normal, smurf y neptune
% con 3 y 10 microclusteres creados en el análisis de la STM.


 
[a,b,c] = xlsread('C:\Users\super\OneDrive - Instituto Politecnico Nacional\TESIS\Cambio4\T_desglosebase4_caso2_stm3.xlsx');

figure

%[xa,ya] = stairs(DataChunk, Tiempo_total_stm_3);

hold on
grid on
xlabel('Data Chunk')
ylabel('Tiempo [s]')



% % - - - - - A0 - - - - - -                    
T_A0 = a(:, 16);
% Tiempo_ghos = Tiempo_ghos/60;
DataChunk = [1:1:length(T_A0)];
h = stairs(DataChunk, T_A0, 'g');
h(1).LineWidth = 2;

% % - - - - - A1 - - - - - -                    
T_A1 = a(:, 17);
% Tiempo_ghos = Tiempo_ghos/60;
DataChunk = [1:1:length(T_A1)];
h = stairs(DataChunk, T_A1, 'b');
h(1).LineWidth = 2;

% % - - - - - A3 - - - - - -                    
T_A3 = a(:, 18);
% Tiempo_ghos = Tiempo_ghos/60;
DataChunk = [1:1:length(T_A3)];
h = stairs(DataChunk, T_A3, 'r');
h(1).LineWidth = 2;

% % - - - - - A4 - - - - - -                    
T_A4 = a(:, 19);
% Tiempo_ghos = Tiempo_ghos/60;
DataChunk = [1:1:length(T_A4)];
h = stairs(DataChunk, T_A4, 'y');
h(1).LineWidth = 2;

% % - - - - - A5 - - - - - -                    
T_A5 = a(:, 20);
% Tiempo_ghos = Tiempo_ghos/60;
DataChunk = [1:1:length(T_A5)];
h = stairs(DataChunk, T_A5, 'c');
h(1).LineWidth = 2;

% % - - - - - A6 - - - - - -                    
T_A6 = a(:, 21);
% Tiempo_ghos = Tiempo_ghos/60;
DataChunk = [1:1:length(T_A6)];
h = stairs(DataChunk, T_A6, 'b');
h(1).LineWidth = 2;


% % - - - - - A7 - - - - - -                    
T_A7 = a(:, 22);
% Tiempo_ghos = Tiempo_ghos/60;
DataChunk = [1:1:length(T_A7)];
h = stairs(DataChunk, T_A7, 'm');
h(1).LineWidth = 2;

% - - - - - - 
legend('A0', 'A1', 'A3', 'A4', 'A5', 'A6', 'A7', 'FontSize', 18)
% % - - - - - TIEMPO TOTAL con 3MC en la STM - - - - - -                    

% Tiempo_total_stm_3 = a(:,8);
% Tiempo_total_stm_3 = Tiempo_total_stm_3/60;
% DataChunk = [1:1:length(Tiempo_total_stm_3)];



% h = stairs(DataChunk, Tiempo_total_stm_3, 'r');
% h(1).LineWidth = 2;
 
% % - - - - - TIEMPO DE CREAR FRAME STM - - - - - -                    
% Tiempo_frame = a(:,9);
% Tiempo_frame = Tiempo_frame/60;
% DataChunk = [1:1:length(Tiempo_frame)];
% h = stairs(DataChunk, Tiempo_frame, 'M');
% h(1).LineWidth = 2;
% 
% % % - - - - - TIEMPO DE VALIDAR CLUSTERS EN STM - - - - - -                    
% Tiempo_clusters = a(:,10);
% Tiempo_clusters = Tiempo_clusters/60;
% DataChunk = [1:1:length(Tiempo_clusters)];
% h = stairs(DataChunk, Tiempo_clusters, 'b');
% h(1).LineWidth = 2;
% 
% % % - - - - - TIEMPO DE ACTUALIZAR CLUSTERS STM - - - - - -                    
% Tiempo_update = a(:, 11);
% Tiempo_update = Tiempo_update/60;
% DataChunk = [1:1:length(Tiempo_update)];
% h = stairs(DataChunk, Tiempo_update, 'c');
% h(1).LineWidth = 2;
% 
% 
% 
% xlabel('Data Chunk')
% ylabel('Tiempo [min]')
% 
% 
% 
% % - - - - - - - - - - 
% title('Execution Time: normal, smurf and neptune', 'FontSize', 22)
% % 
% %txt = {'Tiempo STM' };
% %text(20,0.6,txt, 20, 'FontSize', 20)
% % % 
% % hold off
% % %  
% % % grid on