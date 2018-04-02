function [ newBoard, newScore ] = MoveLeftRight(board,score,left)
%MoveLeftRight Takes a matrix, current score, and left or right as input.
%Shifts matrix according to inputs and outputs new board and score.
%Check for shift and for loops to shift accordingly
if left == 1
%Adds like terms and eliminates duplicates for left shifts
        for ee = 1:1:4
            for xx = 1:1:3
                if board(ee,xx) == board(ee,xx+1)
                    board(ee,xx) = 2*board(ee,xx);
                    board(ee,xx+1) = 0;
                    %Change Score
                    score = score + board(ee,xx);
               elseif xx < 3 && board(ee,xx+1) == 0 && board(ee,xx) == board(ee,xx+2)
                    board(ee,xx) = 2*board(ee,xx);
                    board(ee,xx+2) = 0;
                    %Change Score
                    score = score + board(ee,xx);
                elseif xx < 2 && board(ee,xx+2) == 0 && board(ee,xx) == board(ee,xx+3)
                    board(ee,xx) = 2*board(ee,xx);
                    board(ee,xx+3) = 0;
                    %Change Score
                    score = score + board(ee,xx);
                end
            end
        end
        for aa = 1:1:3
            for ii = 1:1:4
        for jj = 1:1:4
            if board(ii,jj)== 0
                if jj == 4
                   board(ii,jj)=0;
                else
                    board(ii,jj) = board(ii,jj+1);
                    board(ii,jj+1) = 0;
                end
            end
        end
        end
        end
%This else shifts all tiles to the right        
else
        %Adds like terms and eliminates duplicates for right shifts
        for ee = 1:1:4
            for xx = 4:-1:2
                if board(ee,xx) == board(ee,xx-1)
                    board(ee,xx) = 2*board(ee,xx);
                    board(ee,xx-1) = 0;
                    %Change Score
                    score = score + board(ee,xx);
                elseif xx > 3 && board(ee,xx-2) == 0 && board(ee,xx) == board(ee,xx-3)
                    board(ee,xx) = 2*board(ee,xx);
                    board(ee,xx-3) = 0;
                    %Change Score
                    score = score + board(ee,xx);
                elseif xx > 2 && board(ee,xx-1) == 0 && board(ee,xx) == board(ee,xx-2)
                    board(ee,xx) = 2*board(ee,xx);
                    board(ee,xx-2) = 0;
                    %Change Score
                    score = score + board(ee,xx);
                end
            end
        end
 for aa = 1:1:3
        for jj = 4:-1:1
            for ii = 1:1:4
            if board(ii,jj) == 0
                if jj == 1
                    board(ii,jj) = 0;
                else
                    board(ii,jj) = board(ii,jj-1);
                    board(ii,jj-1) = 0;
                end
            end
        end
        end
 end
    end
newBoard = board;
newScore = score;
end
