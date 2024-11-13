space_acuraccy = 0.001;
eb_tolerance = 0.5 * 10^(-2);
enr_tolerance = 0.5 * 10^(-6);

%% f1
% [-2,0], root is -1
f1_1_left = -3;
f1_1_right = 0;
root1_1 = -1;

[r1_1, iterations1_1_b, estimations1_1_b] = bisect(@f1, f1_1_left, f1_1_right, eb_tolerance);
errors = zeros(1, iterations1_1_b);
% first show each approximation and its error
for i = 1:iterations1_1_b
    estimation = estimations1_1_b(i);
    disp(['Element at index ', num2str(i), ': ', num2str(estimation)]);
    errors(i) = abs(estimation - root1_1);
    disp(['Error at index ', num2str(i), ': ', num2str(errors(i))]);
end

% calculate and show speed
for i = 1:iterations1_1_b - 1
    speed = errors(i+1) / errors(i);
    disp(['Speed at index ', num2str(i), ': ', num2str(speed)]);
end


[r1_1, iterations1_1_nr, estimations1_1_nr] = nr(@f1, @df1, r1_1, enr_tolerance);
for i = 1:iterations1_1_nr
    disp(['Element at index ', num2str(i), ': ', num2str(estimations1_1_nr(i))]);
end

% [0,3]
f1_2_left = 0;
f1_2_right = 3;

[r1_2, iterations1_2_b, estimations1_2_b] = bisect(@f1, f1_2_left, f1_2_right, eb_tolerance);
for i = 1:iterations1_2_b
    disp(['Element at index ', num2str(i), ': ', num2str(estimations1_2_b(i))]);
end
[r1_2, iterations1_2_nr, estimations1_2_nr] = nr(@f1, @df1, r1_2, enr_tolerance);
for i = 1:iterations1_2_nr
    disp(['Element at index ', num2str(i), ': ', num2str(estimations1_2_nr(i))]);
end

%% f2
f2_left = -1;
f2_right = 2;
[r2, iterations2_b, estimations2_b] = bisect(@f2, f2_left, f2_right, eb_tolerance);
for i = 1:iterations2_b
    disp(['Element at index ', num2str(i), ': ', num2str(estimations2_b(i))]);
end
[r2, iterations2_nr, estimations2_nr] = nr(@f2, @df2, r2, enr_tolerance);
for i = 1:iterations2_nr
    disp(['Element at index ', num2str(i), ': ', num2str(estimations2_nr(i))]);
end








