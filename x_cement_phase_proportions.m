function [] = x_cement_phase_proportions (oxides,unhydrated,gypsum_percentage)

% THIS FUNCTION OUTS TWO PIE CHARTS OF CEMENT OXIDE PROPORTIONS (g/100g)
% AND CEMENT PHASE & GYPSUM PROPORTIONS (%)

figure
% CEMENT OXIDE PROPORTIONS (g/100g)
subplot(1,2,1)
minor = 100-(oxides(1)+oxides(2)+oxides(3)+oxides(4)+oxides(5)+oxides(10));
main_oxides = [oxides(1);oxides(2);oxides(3);oxides(4);oxides(5);oxides(10);minor];
percent = main_oxides(:)./sum(main_oxides(:))*100;
labels = cellstr(num2str(percent,'%.2f%%'));
pie(main_oxides,labels);
legend('SiO2','Al2SO3','Fe2O3','CaO','MgO','SO3','minor')
title('Cement oxide proportions (g/100g)')

% PHASE PROPORTIONS (%)
subplot(1,2,2)
cement = unhydrated(:).*100;
phases = [cement;gypsum_percentage];
labels = cellstr(num2str(phases,'%.2f%%'));
pie(phases,labels);
% pie(unhydrated)
legend('C3S','C2S','C3A','C4AF','Gypsum')
title('Cement Phase & gypsum proportions (%)')

end
