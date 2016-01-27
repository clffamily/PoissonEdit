% ----------------------------------
% This script loads all the parameters.
% ----------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Parameters for source and target images.
simg = double(imread('../images/qq/qq_RGB/qq.jpg', 'JPG'));
timg = double(imread('../images/qq/qq_RGB/background.jpg', 'JPG'));

% Width and height of the source image.
sourceImageWidthX = 478;
sourceImageHeightY = 420;

% Offset location in the target image.
targetOffsetX = 10;
targetOffsetY = 10;

% The source folder path.
sourceFolderPath = '../images/qq/qq_RGB';

% The target folder path.
targetFolderPath = '../images/qq/qq_RGB';

% Here are some constants.
MASK = '/mask.jpg';
PATH = '/path.jpg';
USER_MASK = '/user_mask.jpg';
USER_RESULT = '/user_result.jpg';
USER_RESULT_BOU = '/user_result_bou.jpg';
OPTIMAL_MASK = '/optimal_mask.jpg';
OPTIMAL_RESULT = '/optimal_result.jpg';
OPTIMAL_RESULT_BOU = '/optimal_result_bou.jpg';

zeroAppro = 1e-20; % constant for zero approximation.