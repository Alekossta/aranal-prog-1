space_acuraccy = 0.001;
eb_tolerance = 0.5 * 10^(-2);
enr_tolerance = 0.5 * 10^(-6);

%% f1
% [-2,0]
f1_1_left = -3;
f1_1_right = 0;

[r1_1, iterations1_1_b] = bisect(@f1, f1_1_left, f1_1_right, eb_tolerance);
disp(["x_0 for f1 in [-2,0] is: ", r1_1, " with iterations: ", iterations1_1_b])
[r1_1, iterations1_1_nr] = nr(@f1, @df1, r1_1, enr_tolerance);
disp(["x_n for f1 in [-2,0] is: ", r1_1, " with iterations: ", iterations1_1_nr]);
disp(["total iterations = for f1_a", iterations1_1_nr + iterations1_1_b])

% [0,3]
f1_2_left = 0;
f1_2_right = 3;

[r1_2, iterations1_2_b] = bisect(@f1, f1_2_left, f1_2_right, eb_tolerance);
disp(["x_0 for f1 in [0,3] is: ", r1_2, "with iterations: ", iterations1_2_b])
[r1_2, iterations1_2_nr] = nr(@f1, @df1, r1_2, enr_tolerance);
disp(["x_n for f1 in [0,3] is: ", r1_2, "with iterations: ", iterations1_2_nr]);
disp(["total iterations for f1_b: ", iterations1_2_nr + iterations1_2_b])

%% f2
f2_left = -1;
f2_right = 2;
[r2, iterations2_b] = bisect(@f2, f2_left, f2_right, eb_tolerance);
disp(["x_0 for f2 in [-1,2] is: ", r2, "with iterations: ", iterations2_b]);
[r2, iterations2_nr] = nr(@f2, @df2, r2, enr_tolerance);
disp(["x_n for f2 in [-1,2] is: ", r2, "with iterations: ", iterations2_nr]);
disp(["total iterations for f2: ", iterations2_nr + iterations2_b])









