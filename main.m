% ***********************************************************************
% MAIN SCRIPT TO DO THE ExoNET FOR A RIGHT LEG:
% The torque generated by the ExoNET is given by the sum of all the
% torques generated by each one of the MARIONETs
%
% Gait databases obtained from clinical gait analysis by Bovi's group:
% "A multiple-task gait analysis approach: Kinematic kinetic and EMG
% reference data for healthy young and adult subjects"
% ***********************************************************************
clear;clc;close all;
addpath '\\fs2.smpp.local\SMULAB2\Leah Summer 2021\RoboLab\GitHub\LowerExtremityExoNET_Theory_Compiled'
% BEGIN
fprintf('\n\n\n\n MAIN SCRIPT~~\n')
disp('Choose from the menu...')

S.end = false;    %indication for last optimization 
S.switch = false; %indication for which buttons to enable on main tab
S = GUI(S);

fprintf('\n END MAIN SCRIPT~~\n')

