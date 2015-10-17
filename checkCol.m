function [bool] = checkCol(col,num,sudokuProblem)
bool = isempty(find(sudokuProblem(:,col)==num, 1));   % check variable if number exist in row
