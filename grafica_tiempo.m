clear all, close all, clc;

[d,s,r] = xlsread('Tiempos_kddcup_satan.xlsx');
%[d,s,r] = xlsread('Tiempos_kddcup_smurf.csv');
%[d,s,r] = xlsread('Libro1.csv');
Time = d(:,7);
Time = Time/60;
DataChunk = [1:1:length(Time)];

% plot(DataChunk, Time)
figure
[xa,ya] = stairs(DataChunk, Time);
hold on
h = stairs(DataChunk, Time, 'r');
%axis([1 49 9 13])
%xticks(1:3:48);
%yticks(98:0.25:100);
xlabel('Data Chunk')
ylabel('Time [min]')
% Get handle to current axes.
ax = gca
set(gca,'fontsize',20)
ax.XAxis.FontSize = 16;
ax.YAxis.FontSize = 16;
title('Execution Time: normal, smurf and satan', 'FontSize', 22)
legend('STM = 3, MC = 3', 'Location','northeast')
h(1).Marker = 'o';
h(1).MarkerSize = 6;
h(1).MarkerFaceColor = 'y';
h(1).LineWidth = 2;
%saveas(gcf,'Accuracy_varias.png')
hold off


grid on