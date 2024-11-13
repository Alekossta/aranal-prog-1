function [root, iterations, estimations] = bisect(f, left, right, tolerance)
    iterations = 0;
    estimations = zeros(1, 100);
    while true
        middle = (left + right) / 2;
        iterations = iterations + 1;
        estimations(iterations) = middle;
        [result, diff] = equalWithTolerance(f(middle), 0, tolerance);
        if result
            break
        end
        if haveRoots(f(left), f(middle))
            right = middle;
        else
            left = middle;
        end
    end
    root = middle;
end