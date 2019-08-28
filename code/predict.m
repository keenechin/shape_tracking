function [bias, stdev,y_hat_reg] = predict(regressor,X_test,y_test)

y_hat_reg = regressor.predictFcn(X_test);
errors = y_hat_reg-y_test;
bias = mean(errors);
stdev = std(errors);
figure
histfit(errors);
xlabel("Position error")
ylabel("Number of test samples")
xticks()
xticklabels({'-3\pi','-2\pi','-\pi','0','\pi','2\pi','3\pi'})
title("Distribution of errors for position classification")
disp("Prediction bias: "+bias);
disp("Prediction standard deviation: "+stdev);
disp("");
disp("");
end