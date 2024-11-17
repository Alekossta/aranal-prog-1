function showErrorsAndSpeeds(estimations, cutOffPoint, p, root)
    errors = [];
    % this means we dont know the root
    if(nargin == 3)
        disp("Printing speeds")
        for i=2:length(estimations) - 1
            actualP = p;
            if(i < cutOffPoint)
                actualP = 1;
            end
            speed = abs(estimations(i+1) - estimations(i)) / (abs(estimations(i) - estimations(i-1))^actualP);
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
            actualP = p;
            if(i < cutOffPoint)
                actualP = 1;
            end
            speed = errors(i+1) / (errors(i) ^ actualP);
            disp(['Speed at index ', num2str(i), ': ', num2str(speed)]);
        end
    end
end
