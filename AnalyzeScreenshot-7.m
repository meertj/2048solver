function [ board ] = AnalyzeScreenshot( file )
%AnalyzeScreenshot Takes a screenshot of a desktop version of the game 2048
%and outputs a 4x4 matrix with the values on the board
%   Detailed explanation goes here
%logicals to determine a binary of the game board
pixels = imread(file);
startred = pixels(:,:,1) == 187;
startgreen = pixels(:,:,2) == 173;
startblue = pixels(:,:,3) == 160;
binary = startred & startgreen & startblue;
%imshow(binary)

good2 = pixels(:,:,1) >= 230 & pixels(:,:,1) <= 245  & pixels(:,:,2) >= 220 & pixels(:,:,2) <= 235 & pixels(:,:,3) >= 210 & pixels(:,:,3) <= 225;
good4 = pixels(:,:,1) >= 230 & pixels(:,:,1) <= 245  & pixels(:,:,2) >= 215 & pixels(:,:,2) <= 230 & pixels(:,:,3) >= 190 & pixels(:,:,3) <= 205;
good8 = pixels(:,:,1) >= 235 & pixels(:,:,1) <= 250  & pixels(:,:,2) >= 166 & pixels(:,:,2) <= 178 & pixels(:,:,3) >= 105 & pixels(:,:,3) <= 125;
good16 = pixels(:,:,1) >= 240 & pixels(:,:,1) <= 255  & pixels(:,:,2) >= 140 & pixels(:,:,2) <= 157 & pixels(:,:,3) >= 85 & pixels(:,:,3) <= 105;
good32 = pixels(:,:,1) >= 240 & pixels(:,:,1) <= 257  & pixels(:,:,2) >= 117 & pixels(:,:,2) <= 130 & pixels(:,:,3) >= 80 & pixels(:,:,3) <= 102;
good64 = pixels(:,:,1) >= 240 & pixels(:,:,1) <= 260  & pixels(:,:,2) >= 84 & pixels(:,:,2) <= 98 & pixels(:,:,3) >= 40 & pixels(:,:,3) <= 60;
good128 = pixels(:,:,1) >= 228 & pixels(:,:,1) <= 246  & pixels(:,:,2) >= 200 & pixels(:,:,2) <= 215 & pixels(:,:,3) >= 100 & pixels(:,:,3) <= 115;
good256 = pixels(:,:,1) >= 228 & pixels(:,:,1) <= 246  & pixels(:,:,2) >= 202 & pixels(:,:,2) <= 210 & pixels(:,:,3) >= 78 & pixels(:,:,3) <= 98;
good512 = pixels(:,:,1) >= 228 & pixels(:,:,1) <= 246  & pixels(:,:,2) >= 199 & pixels(:,:,2) <= 205 & pixels(:,:,3) >= 70 & pixels(:,:,3) <= 85;
good1024 = pixels(:,:,1) >= 228 & pixels(:,:,1) <= 246  & pixels(:,:,2) >= 195 & pixels(:,:,2) <= 207 & pixels(:,:,3) >= 47 & pixels(:,:,3) <= 70;
good2048 = pixels(:,:,1) >= 230 & pixels(:,:,1) <= 246  & pixels(:,:,2) >= 190 & pixels(:,:,2) <= 202 & pixels(:,:,3) >= 3 & pixels(:,:,3) <= 50;
good_blank = pixels(:,:,1) >= 193 & pixels(:,:,1) <= 217  & pixels(:,:,2) >= 180 & pixels(:,:,2) <= 196 & pixels(:,:,3) >= 168 & pixels(:,:,3) <= 192;
%Blank vector to save values on board
board = zeros(1,16);
%find height and width as values to find start location
[h,w,c] = size(pixels);
%Empty start
start = [0,0];
%For loop to find start location
for ii = h:-1:1
    for jj = w:-1:1
        if binary(ii,jj) == 1;
            start = [ii,jj];
        end
    end
end
%Counter to save board values to specific points in the vector
zz=1;
%For loops to check for all tiles
        for kk = start(1)+30:120:start(1)+500
            for ll = start(2)+30:120:start(2)+500
                if good2(kk,ll) == 1        
                   board(zz) = 2;
                   zz=zz+1;
                elseif good4(kk,ll) == 1
                   board(zz) = 4;
                   zz=zz+1;
                elseif good8(kk,ll) == 1
                   board(zz) = 8;   
                   zz=zz+1;
                elseif good16(kk,ll) == 1
                   board(zz) = 16;
                   zz=zz+1;
                elseif good32(kk,ll) == 1
                   board(zz) = 32;
                   zz=zz+1;
                elseif good64(kk,ll) == 1
                   board(zz) = 64;
                   zz=zz+1;
                elseif good128(kk,ll) == 1
                   board(zz) = 128;
                   zz=zz+1;
                elseif good256(kk,ll) == 1
                   board(zz) =256;
                   zz=zz+1;
                elseif good512(kk,ll) == 1
                   board(zz) = 512;
                   zz=zz+1;
                elseif good1024(kk,ll) == 1
                   board(zz) = 1024;
                   zz=zz+1;
                elseif good2048(kk,ll) == 1
                   board(zz) = 2048;
                   zz=zz+1;
                else
                   board(zz) = 0;  
                   zz=zz+1;
                end
            end
        end
%Change board into a matrix
line1 = [];
line2 = [];
line3 = [];
line4 = [];
for bb = 1:1:16
    if bb < 5
        line1 = [line1 board(bb)];
    elseif bb < 9
        line2 = [line2 board(bb)];
    elseif bb < 13
        line3 = [line3 board(bb)];
    else
        line4 = [line4 board(bb)];
    end
end
board = [line1; line2; line3; line4;];
end

