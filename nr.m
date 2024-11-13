function [root, iterations] = nr(f, df, estimation, tolerance)
    x_0 = estimation;
    iterations = 0;
    while ~equalWithTolerance(f(x_0), 0, tolerance)
        x_0 = x_0 - (f(x_0) / df(x_0));
        iterations = iterations + 1;
    end
    root = x_0;
end