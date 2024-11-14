function estimations = bisect(f, left, right, tolerance)
    iterations = 0;
    estimations = [];
    while true
        middle = (left + right) / 2;
        iterations = iterations + 1;
        estimations(iterations) = middle;
        result = equalWithTolerance(f(middle), 0, tolerance);
        if result
            break
        end
        if haveRoots(f(left), f(middle))
            right = middle;
        else
            left = middle;
        end
    end
end