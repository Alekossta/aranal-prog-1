function estimations = secant(f, estimation1, estimation2, tolerance)

    estimations(1) = estimation1;
    if equalWithTolerance(f(estimation1), 0, tolerance)
        return;
    end

    estimations(2) = estimation2;
    if equalWithTolerance(f(estimation2), 0, tolerance)
        return;
    end
    
    iterations = 2;

    x_0 = estimation2;
    while ~equalWithTolerance(f(x_0), 0, tolerance)
        x_prev = estimations(iterations - 1);
        x_0 = x_0 - ( ( f(x_0) * (x_0 - x_prev) ) / (f(x_0)-f(x_prev)));
        iterations = iterations + 1;
        estimations(iterations) = x_0;
    end
end