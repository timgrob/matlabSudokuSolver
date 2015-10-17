%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Main Sudoku File
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% remarks:  This Sudoku solver cannot solve every Sudokuproblem out there.
%           The algorithm does not check the case where there are multiple
%           solutions possible

clear all
clc

% this is the sudoko problem in matrix form. Can be changed...
sudokuProblem = [5 3 0 0 7 0 0 0 0;...
    6 0 0 1 9 5 0 0 0;...
    0 9 8 0 0 0 0 6 0;...
    8 0 0 0 6 0 0 0 3;...
    4 0 0 8 0 3 0 0 1;...
    7 0 0 0 2 0 0 0 6;...
    0 6 0 0 0 0 2 8 0;...
    0 0 0 4 1 9 0 0 5;...
    0 0 0 0 8 0 0 7 9];

% main loop
while (~isempty(find(sudokuProblem==0, 1)))
    % run problem until the sudoku problem no longer contains any zeros
    [row,col] = find(~sudokuProblem);
    for i=1:length(row)
        poss = []; % possible solutions storage
        
        % loop over possible numbers from 1 to 9
        for n=1:9
            if (checkRow(row(i),n,sudokuProblem)) && (checkCol(col(i),n,sudokuProblem)) && (checkBox(row(i),col(i),n,sudokuProblem))
                poss = vertcat(poss,[row(i) col(i) n]);
            end
        end
        
        % check if only on solution possible. If yes, replace zero
        if (size(poss,1)==1)
            sudokuProblem(row(i),col(i)) = poss(1,3);
        end
    end
end

