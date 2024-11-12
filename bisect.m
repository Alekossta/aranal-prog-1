function root = bisect(f, left, right, tolerance)
    middle = (left + right) / 2;
    while ~equalWithTolerance(f(middle), 0, tolerance)
        if haveRoots(f(left), f(middle))
            right = middle;
        else
            left = middle;
        end
        middle = (left + right) / 2;
    end
    root = middle;
end