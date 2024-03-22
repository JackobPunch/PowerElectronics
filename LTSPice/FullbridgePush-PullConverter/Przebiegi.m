clear all; close all;
%%jalowy

I0=[5
10
15
20
];
U2=[16.603
28.799
41.693
55.934
];

B = polyfit(U2, I0, 1);
A = polyval(B, U2);

figure;
plot(U2, I0, 'r.', 'MarkerSize', 15); % Blue circles for data points
hold on;
plot(U2, A, 'b-', 'LineWidth', 1); % Red solid line for trend
hold off;

title('t_{on} = f(I_{out})');
ylabel('t_{on} [us]'); 
xlabel('I_{out} [A]'); 
legend('Punkty pomiarowe', 'Linia trendu', 'Location', 'best'); % Legend at the best location


grid on; % Show grid
set(gca, 'FontSize', 12); % Set font size for axes
set(gca, 'FontName', 'Arial'); % Set font type for axes
set(gca, 'GridLineStyle', '-'); % Set grid style
set(gca, 'GridColor', [0.5, 0.5, 0.5]); % Set grid color
set(gca, 'GridAlpha', 0.5); % Set grid transparency
