function [ newBoard, newScore ] = MoveUpDown(board,score,up)
%MoveUpDown Takes a matrix, current score, and up or down as input.
%Shifts matrix according to inputs and outputs new board and score.
%Check for shift and for loops to shift accordingly
if up == 1
%Adds like terms and eliminates duplicates up shifts
        for xx = 1:1:4
            for ee = 1:1:3
                if board(ee,xx) == board(ee+1,xx) 
                    board(ee,xx) = 2*board(ee,xx);
                    board(ee+1,xx) = 0;
                    %Change Score
                    score = score + board(ee,xx);
                elseif ee < 3 && board(ee+1,xx) == 0 && board(ee,xx) == board(ee+2,xx)
                    board(ee,xx) = 2*board(ee,xx);
                    board(ee+2,xx) = 0;
                    %Change Score
                    score = score + board(ee,xx);
                elseif ee < 2 && board(ee+2,xx) == 0 && board(ee,xx) == board(ee+3,xx)
                    board(ee,xx) = 2*board(ee,xx);
                    board(ee+3,xx) = 0;
                    %Change Score
                    score = score + board(ee,xx);
                end
            end
        end
for aa = 1:1:3
    for jj = 1:1:4
        for ii = 1:1:4
            if board(ii,jj)== 0
                if ii == 4
                   board(ii,jj) = 0;
                else
                    board(ii,jj) = board(ii+1,jj);
                    board(ii+1,jj) = 0;
                end
            end
        end
        disp(board)
    end
        
    end
%This else shifts all tiles down        
else
        %Adds like terms and eliminates duplicates for down shifts
        for xx = 4:-1:1
            for ee = 4:-1:2
                if board(ee,xx) == board(ee-1,xx)
                    board(ee,xx) = 2*board(ee,xx);
                    board(ee-1,xx) = 0;
                    %Change Score
                    score = score + board(ee,xx);
                elseif ee > 2 && board(ee-1,xx) == 0 && board(ee,xx) == board(ee-2,xx)
                    board(ee,xx) = 2*board(ee,xx);
                    board(ee-2,xx) = 0;
                    %Change Score
                    score = score + board(ee,xx);
                elseif ee > 3 && board(ee-2,xx) == 0 && board(ee,xx) == board(ee-3,xx)
                    board(ee,xx) = 2*board(ee,xx);
                    board(ee-3,xx) = 0;
                    %Change Score
                    score = score + board(ee,xx);
                end
            end
        end
for aa = 1:1:3
for jj = 1:1:4  
        for ii = 4:-1:1
            if board(ii,jj) == 0
                if ii == 1
                    board(ii,jj) = 0;
                else
                    board(ii,jj) = board(ii-1,jj);
                    board(ii-1,jj) = 0;
                end
            end
        end
        
    end
end
end
newBoard = board;
newScore = score;
end

