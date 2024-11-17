space_acuraccy = 0.001;
eb_tolerance = 0.5 * 10^(-2);
et_tolerance = 0.5 * 10^(-6);

%% f1
% [-2,0], root is -1 and p=1 because multiplicity is m=3
f1_1_left = -3;
f1_1_right = 0;
root1_1 = -1;

disp("PRINTING STUFF FOR F1 FIRST SPACE")
estimations1_1_b = bisect(@f1, f1_1_left, f1_1_right, eb_tolerance);
foundRoot = estimations1_1_b(length(estimations1_1_b));
rootPrev = estimations1_1_b(length(estimations1_1_b) - 1);

estimations1_1_t = secant(@f1, rootPrev, foundRoot, et_tolerance);

combinedEstimations1_1 = [estimations1_1_b, estimations1_1_t];
cutOffPoint = length(estimations1_1_b) + 1;

showErrorsAndSpeeds(combinedEstimations1_1, cutOffPoint, 1, root1_1);

% [0,3], root is 2 and p=2 because multiplicity is m=1
f1_2_left = 0;
f1_2_right = 3;
root1_2 = 2;

disp("PRINTING STUFF FOR F1 SECOND SPACE")
estimations1_2_b = bisect(@f1, f1_2_left, f1_2_right, eb_tolerance);
foundRoot = estimations1_2_b(length(estimations1_2_b));
rootPrev = estimations1_2_b(length(estimations1_2_b) - 1);
estimations1_2_t = secant(@f1, rootPrev, foundRoot, et_tolerance);

combinedEstimations1_2 = [estimations1_2_b, estimations1_2_t];
cutOffPoint = length(estimations1_2_b) + 1;
showErrorsAndSpeeds(combinedEstimations1_2, cutOffPoint,1.6, root1_2);

%% f2
f2_left = -1;
f2_right = 2;
disp("PRINTING STUFF FOR F2")

estimations2_b = bisect(@f2, f2_left, f2_right, eb_tolerance);
foundRoot = estimations2_b(length(estimations2_b));
rootPrev = estimations2_b(length(estimations2_b) - 1);

estimations2_t = secant(@f2, rootPrev, foundRoot, et_tolerance);

combinedEstimations2 = [estimations2_b, estimations2_t];
showEstimations(combinedEstimations2);
cutOffPoint = length(estimations2_b) + 1;

showErrorsAndSpeeds(combinedEstimations2, cutOffPoint, 1);