 % =====================================================
 % LAB: Round-off Error in Single Precision Computation
 % =====================================================
 clc; clear; close all;
 % Function and sample points
 t = 0:0.002:1;
 % 501 equidistant points
 tt = exp(-2.*t) .* (cos(4*pi.*t)); % Double precision
  % Convert to single precision
 rt = single(tt);
 % Compute relative rounding error
 round_err = abs(tt- rt) ./ abs(tt);
 % Plot rounding error
 figure;
 subplot(2,1,1),plot(t, round_err, "b-", "LineWidth", 1.2);
 grid on;
     
 xlabel("t");
 ylabel("Round-off error");
 title("Rounding Error in Single Precision: g(t) = e^-2t *(cos 4*pi*t)");
 grid on;
 % Relative rounding error vs. machine epsilon
 eta = eps('single')/2;
 rel_round_err = max(abs(round_err)) / eta;
 fprintf('\n Maximum relative rounding error (scaled by eta): %.3f\n', rel_round_err);
 fprintf(" Machine epsilon / 2 (single precision): %.3e\n", eta);