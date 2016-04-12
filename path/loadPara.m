% ----------------------------------
% This script loads all the parameters.
% ----------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Parameters for source and target images.
simg = double(imread('../images/test/sand/car.jpg', 'JPG'));
timg = double(imread('../images/test/sand/background.jpg', 'JPG'));

% Width and height of the source image.
sourceImageWidthX = 350;
sourceImageHeightY = 270;

% Offset location in the target image.
targetOffsetX = 295;
targetOffsetY = 135;

% The source folder path.
sourceFolderPath = '../images/test/sand';

% The target folder path.
targetFolderPath = '../images/test/sand';

% Here are some constants.
MASK = '/mask.jpg';
PATH = '/path.jpg';
USER_MASK = '/user_mask.jpg';
USER_RESULT = '/user_result.jpg';
USER_RESULT_BOU = '/user_result_bou.jpg';
OPTIMAL_MASK = '/optimal_mask.jpg';
OPTIMAL_RESULT = '/optimal_result.jpg';
OPTIMAL_RESULT_BOU = '/optimal_result_bou.jpg';
SOURCE_USER_BOU = '/source_user_bou.jpg';
SOURCE_OPTIMAL_BOU = '/source_optimal_bou.jpg';

zeroAppro = 1e-10; % constant for zero approximation.