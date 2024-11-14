function estimations = nr(f, df, estimation, tolerance)
    x_0 = estimation;
    iterations = 1;
    estimations(iterations) = x_0;
    while ~equalWithTolerance(f(x_0), 0, tolerance)
        x_0 = x_0 - (f(x_0) / df(x_0));
        iterations = iterations + 1;
        estimations(iterations) = x_0;
    end
end