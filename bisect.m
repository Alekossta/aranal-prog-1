function [root, iterations] = bisect(f, left, right, tolerance)
    iterations = 1;
    middle = (left + right) / 2;
    while ~equalWithTolerance(f(middle), 0, tolerance)
        if haveRoots(f(left), f(middle))
            right = middle;
        else
            left = middle;
        end
        middle = (left + right) / 2;
        iterations = iterations + 1;
    end
    root = middle;
end