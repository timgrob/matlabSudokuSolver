function [bool] = checkBox(row,col,num,sudokuProblem)

if (1<=row && row<=3)
    r = [1:3];
    
    if (1<=col && col<=3)
        c = [1:3];
    else if (4<=col && col<=6)
            c = [4:6];
        else if (7<=col && col<=9)
                c = [7:9];
            else
                error('in first box row, column index out of range')
            end
        end
    end
else if (4<=row && row<=6)
        r = [4:6];
        if (1<=col && col<=3)
            c = [1:3];
        else if (4<=col && col<=6)
                c = [4:6];
            else if (7<=col && col<=9)
                    c = [7:9];
                else
                    error('in second box row, column index out of range')
                end
            end
        end
    else if (7<=row && row<=9)
            r = [7:9];
            if (1<=col && col<=3)
                c = [1:3];
            else if (4<=col && col<=6)
                    c = [4:6];
                else if (7<=col && col<=9)
                        c = [7:9];
                    else
                        error('in second box row, column index out of range')
                    end
                end
            end
        else
            % always have an final else statement for more robust code
            error('row index is out of range')
        end
    end
end

bool = isempty(find(sudokuProblem(r,c)==num));