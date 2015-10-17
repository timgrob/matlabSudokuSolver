function [bool] = checkRow(row,num,sudokuProblem)
bool = isempty(find(sudokuProblem(row,:)==num, 1));   % check variable if number exist in row




