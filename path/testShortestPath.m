% costMatrix = [ ...
%     6 2 2 2 2 6 6 
%     2 2 6 6 2 2 6 
%     2 6 -1 -1 6 2 6
%     2 6 -1 -1 -1 4 1
%     2 9 2 2 2 2 6 
%     2 6 2 6 6 6 6 
%     1 1 1 6 6 6 6 ];


shortestMatrix = constructPathGraph( costMatrix, 208, 290);

[dist,path,pred] = graphshortestpath(shortestMatrix,72390,72740);

pathPlot = zeros(1, numel(costMatrix));
pathPlot(uint32(path)) = 1;
mat = vec2mat(pathPlot,350)

% for i = 1 : size(mat,1)
%     for j = 1: size(mat, 2)
%         if mat(i,j) == 1
%             break;
%         else 
%             mat(i,j) = 1;
%         end
%     end
% end
% 
% for i = size(mat,1) : -1 :1
%     for j = size(mat,2) : -1 :1
%         if mat(i,j) == 1
%             break;
%         else 
%             mat(i,j) = 1;
%         end
%     end
% end
