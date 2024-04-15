% ***********************************************************************
% MAIN SCRIPT TO DO THE ExoNET FOR A RIGHT LEG:
% The torque generated by the ExoNET is given by the sum of all the
% torques generated by each one of the MARIONETs
% ***********************************************************************

%this is a test line of code comment

clear;clc;close all;
% BEGIN
fprintf('\n\n\n\n MAIN SCRIPT~~\n')

disp('Choose from the menu...')
fieldType = menu('Choose a field to approximate:', ...
    'Knee-Ankle Gait Torques', ...
    'Hip-Knee Gait Torques',...
    'Gait Stabilization',...
    'Leg Design Optimization',...
    'EXIT');

close all
S.end = false;

switch fieldType
    case 1 % Knee-Ankle or Hip-Knee
        S.case = 1.1;
        S = setUpLeg(S); % set variables and plots
        S = robustOptoLeg(S);
        e = S.TAUsDESIRED - S.TAUs;
    case 2 %Hip - ankle selected
        S.case = 1.2;
        S = setUpLeg(S); % set variables and plots
        S = robustOptoLeg(S);
        e = S.TAUsDESIRED - S.TAUs;
        
        AveragePercentError = 100*(1-(norm(e)/norm(S.TAUsDESIRED)));
        %showGraphTorquesLeg(S)
    case 3 %Gait stabilize
        S.case = 2;
        S = setUpLeg(S); % set variables and plots
        drawArrows
        S = robustOptoLeg(S);
        e = S.AllTAUsDESIRED - S.TAUs; %uses all TAUs desired.
        
    case 4 %Leg Opto
        S.case = 3;
        S = designOpto(S);
    otherwise
        disp('exiting...');
        close all
        
end % end switch

fprintf('\n END MAIN SCRIPT~~\n')

