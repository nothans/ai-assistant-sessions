%% generate a list of 10 locations in boston with lat/long and plot using geoscatter

% Define the list of locations
locations = {'Fenway Park', 'Boston Common', 'Harvard University', 'MIT', 'Boston Public Library', 'New England Aquarium', 'Boston Tea Party Ships & Museum', 'USS Constitution Museum', 'Isabella Stewart Gardner Museum', 'Boston Children''s Museum'};

% Define the latitudes and longitudes for each location
latitudes = [42.3467, 42.3554, 42.3770, 42.3601, 42.3496, 42.3590, 42.3513, 42.3724, 42.3383, 42.3519];
longitudes = [-71.0972, -71.0651, -71.1167, -71.0921, -71.0773, -71.0498, -71.0507, -71.0552, -71.1486, -71.0495];

% Plot the locations using geoscatter
figure
geoscatter(latitudes, longitudes, 'Marker', 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'r')
geobasemap('colorterrain')
title('10 Locations in Boston')


