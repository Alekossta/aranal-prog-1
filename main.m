space_acuraccy = 0.001;
eb_tolerance = 0.5 * 10^(-2);
enr_tolerance = 0.5 * 10^(-6);

%% f1
% [-2,0], root is -1
f1_1_left = -3;
f1_1_right = 0;
root1_1 = -1;

disp("PRINTING STUFF FOR F1 FIRST SPACE")
estimations1_1_b = bisect(@f1, f1_1_left, f1_1_right, eb_tolerance);
showErrorsAndSpeeds(estimations1_1_b, root1_1, 1);

foundRoot = estimations1_1_b(length(estimations1_1_b));

estimations1_1_nr = nr(@f1, @df1, foundRoot, enr_tolerance);
showErrorsAndSpeeds(estimations1_1_nr, root1_1, 1);

% [0,3], root is 2
f1_2_left = 0;
f1_2_right = 3;
root1_2 = 2;

disp("PRINTING STUFF FOR F1 SECOND SPACE")
estimations1_2_b = bisect(@f1, f1_2_left, f1_2_right, eb_tolerance);
showErrorsAndSpeeds(estimations1_2_b, root1_2, 2);

foundRoot = estimations1_2_b(length(estimations1_2_b));

estimations1_2_nr = nr(@f1, @df1, foundRoot, enr_tolerance);
showErrorsAndSpeeds(estimations1_2_nr, root1_2, 2);

%% f2
f2_left = -1;
f2_right = 2;
disp("PRINTING STUFF FOR F2")

estimations2_b = bisect(@f2, f2_left, f2_right, eb_tolerance);
showErrorsAndSpeeds(estimations2_b);

foundRoot = estimations2_b(length(estimations2_b));

estimations2_nr = nr(@f2, @df2, estimations2_b(1), enr_tolerance);
showErrorsAndSpeeds(estimations2_nr);







