function showEstimations(estimations)
    for i=1:length(estimations)
        disp(['Estimation ', num2str(i), ':', num2str(estimations(i))]);
    end
end