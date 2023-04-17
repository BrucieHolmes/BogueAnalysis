
%% ********************** HYDCEM MODIFIED BOGUE ***************************
clc; close all; clear all; %#ok<*CLALL>

%% *************************** INPUT DATA FILES ***************************
molar_mass = xlsread('Bogue_input.xlsx', 'molar_mass');
oxides = xlsread('Bogue_input.xlsx', 'binder');

%% ******* MODIFIED BOGUE CALCULATION OF CEMENT PHASES PROPORTIONS ********
tic
[unhydrated,gypsum_percentage] = modified_bogue(oxides,molar_mass);
toc

%% ******************************* PLOTTING *******************************
% CEMENT & PHASE PROPORTIONS
x_cement_phase_proportions (oxides,unhydrated,gypsum_percentage)
% ********************************** END **********************************