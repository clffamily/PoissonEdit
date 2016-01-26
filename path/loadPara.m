% ----------------------------------
% This script loads all the parameters.
% ----------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Parameters for source and target images.
simg = double(imread('../images/apple/apple.jpg', 'JPG'));
timg = double(imread('../images/apple/table.jpg', 'JPG'));

% Width and height of the source image.
sourceImageWidthX = 300;
sourceImageHeightY = 247;

% Offset location in the target image.
targetOffsetX = 750;
targetOffsetY = 240;

% The source folder path.
sourceFolderPath = '../images/cube';

% The target folder path.
targetFolderPath = '../images/cube';

% Here are some constants.
MASK = '/mask.jpg';
PATH = '/path.jpg';
USER_MASK = '/user_mask.jpg';
USER_RESULT = '/user_result.jpg';
USER_RESULT_BOU = '/user_result_bou.jpg';
OPTIMAL_MASK = '/optimal_mask.jpg';
OPTIMAL_RESULT = '/optimal_result.jpg';
OPTIMAL_RESULT_BOU = '/optimal_result_bou.jpg';
