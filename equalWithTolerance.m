function [result, diff] = equalWithTolerance(x1, x2, tolerance)
    diff = abs(x1-x2);
    result = diff < tolerance;
end