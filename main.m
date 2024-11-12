space_acuraccy = 0.001;
eb_tolerance = 0.5 * 10^(-2);
enr_tolerance = 0.5 * 10^(-6);

% [-2,0]
f1_1_left = -3;
f1_1_right = 0;

% [0,3]
f1_2_left = 0;
f1_2_right = 3;

r1_1 = bisect(@f1, f1_1_left, f1_1_right, eb_tolerance);
disp(r1_1)
r1_1 = nr(@f1, @df1, r1_1, enr_tolerance);
disp(r1_1);

%r1_2 = bisect(@f1, f1_2_left, f1_2_right, eb_tolerance);
%disp(r1_2)
