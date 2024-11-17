x = linspace(-80, 60, 1000);

y1 = f1(x);
y2 = f2(x);

figure;

subplot(2, 1, 1);
plot(x, y1, 'LineWidth', 2);
grid on;
xlabel('x', 'FontSize', 12);
ylabel('f1(x)', 'FontSize', 12);
title('Graph of f1(x) = (x + 1)^3 * (x - 2)', 'FontSize', 14);
axis([-80 60 -20 100]);

subplot(2, 1, 2);
plot(x, y2, 'LineWidth', 2);
grid on;
xlabel('x', 'FontSize', 12);
ylabel('f2(x)', 'FontSize', 12);
title('Graph of f2(x) = e^x - x^2 - 2', 'FontSize', 14);
axis([-80 60 -20 100]);