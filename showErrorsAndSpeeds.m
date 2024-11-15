function showErrorsAndSpeeds(estimations, p, root)
    errors = [];
    % this means we dont know the root
    if(nargin == 2)
        disp("Printing speeds")
        for i=2:length(estimations) - 1
            speed = (estimations(i+1) - estimations(i)) / (estimations(i) - estimations(i-1))^p;
            disp(['Speed at index ', num2str(i), ': ', num2str(speed)]);
        end
    else % we know the root
        % first show each approximation and its error
        disp("Printing errors");
        for i = 1:length(estimations)
            errors(i) = abs(estimations(i) - root);
            disp([num2str(i), ': ', num2str(estimations(i)), ' ',num2str(errors(i))]);
        end
        % calculate and show speed
        disp("Printing speeds");
        for i = 1:length(estimations) - 1
            speed = errors(i+1) / errors(i) ^ p;
            disp(['Speed at index ', num2str(i), ': ', num2str(speed)]);
        end
    end
end
