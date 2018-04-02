function [ pixels ] = ExtraCredit( board )
%ExtraCredit Creates a 2048 board using a 4x4 matrix input
blank = imread('Board.png');

alltiles = imread('AllTiles.png');


width = 1:1:213;
two = alltiles(width,width,:);
four = alltiles(214:1:426,width,:);
eight = alltiles(428:1:640,width,:);
sixteen = alltiles(642:1:854,width,:);
thirtytwo = alltiles(856:1:1068,width,:);
sixtyfour = alltiles(1070:1:1282,width,:);
onetwentyeight = alltiles(1284:1:1496,width,:);
twofiftysix = alltiles(1498:1:1710,width,:);
fivetwelve = alltiles(1712:1:1924,width,:);
tentwentyfour = alltiles(1926:1:2138,width,:);
twentyfortyeight = alltiles(2131:1:2343,width,:);


spot_1 = uint8(zeros(213,213,3));
spot_2 = uint8(zeros(213,213,3));
spot_3 = uint8(zeros(213,213,3));
spot_4 = uint8(zeros(213,213,3));
spot_5 = uint8(zeros(213,213,3));
spot_6 = uint8(zeros(213,213,3));
spot_7 = uint8(zeros(213,213,3));
spot_8 = uint8(zeros(213,213,3));
spot_9 = uint8(zeros(213,213,3));
spot_10 = uint8(zeros(213,213,3));
spot_11 = uint8(zeros(213,213,3));
spot_12 = uint8(zeros(213,213,3));
spot_13 = uint8(zeros(213,213,3));
spot_14 = uint8(zeros(213,213,3));
spot_15 = uint8(zeros(213,213,3));
spot_16 = uint8(zeros(213,213,3));

%First Row
%First Spot on Board
 if board(1,1) == 2
    spot_1 = two;
 elseif board(1,1) == 4
            spot_1 = four;
 elseif board(1,1) == 8
            spot_1 = eight;
 elseif board(1,1) == 16
            spot_1 = sixteen;
 elseif board(1,1) == 32
            spot_1 = thirtytwo;
 elseif board(1,1) == 64
            spot_1 = sixtyfour;
 elseif board(1,1) == 128
            spot_1 = onetwentyeight;
 elseif board(1,1) == 256
            spot_1 = twofiftysix;
 elseif board(1,1) == 512
            spot_1 = fivetwelve;
 elseif board(1,1) == 1024
            spot_1 = tentwentyfour;
 elseif board(1,1) == 2048
            spot_1 = twentyfortyeight;
 end
 
 %Second Spot on Board
 if board(1,2) == 2
    spot_2 = two;
 elseif board(1,2) == 4
    spot_2 = four;
 elseif board(1,2) == 8
            spot_2 = eight;
 elseif board(1,2) == 16
            spot_2 = sixteen;
 elseif board(1,2) == 32
            spot_2 = thirtytwo;
 elseif board(1,2) == 64
            spot_2 = sixtyfour;
 elseif board(1,2) == 128
            spot_2 = onetwentyeight;
 elseif board(1,2) == 256
            spot_2 = twofiftysix;
 elseif board(1,2) == 512
            spot_2 = fivetwelve;
 elseif board(1,2) == 1024
            spot_2 = tentwentyfour;
 elseif board(1,2) == 2048
            spot_2 = twentyfortyeight;
  end
 
  %Third Spot on Board
   if board(1,3) == 2
    spot_3 = two;
 elseif board(1,3) == 4
            spot_3 = four;
 elseif board(1,3) == 8
            spot_3 = eight;
 elseif board(1,3) == 16
            spot_3 = sixteen;
 elseif board(1,3) == 32
            spot_3 = thirtytwo;
 elseif board(1,3) == 64
            spot_3 = sityfour;
 elseif board(1,3) == 128
            spot_3 = onetwentyeight;
 elseif board(1,3) == 256
            spot_3 = twofiftysix;
 elseif board(1,3) == 512
            spot_3 = fivetwelve;
 elseif board(1,3) == 1024
            spot_3 = tentwentyfour;
 elseif board(1,3) == 2048
            spot_3 = twentyfortyeight;
   end
 
   %Fourth Spot on Board
   if board(1,4) == 2
    spot_4 = two;
 elseif board(1,4) == 4
            spot_4 = four;
 elseif board(1,4) == 8
            spot_4 = eight;
 elseif board(1,4) == 16
            spot_4 = sixteen;
 elseif board(1,4) == 32
            spot_4 = thirtytwo;
 elseif board(1,4) == 64
            spot_4 = sityfour;
 elseif board(1,4) == 128
            spot_4 = onetwentyeight;
 elseif board(1,4) == 256
            spot_4 = twofiftysix;
 elseif board(1,4) == 512
            spot_4 = fivetwelve;
 elseif board(1,4) == 1024
            spot_4 = tentwentyfour;
 elseif board(1,4) == 2048
            spot_4 = twentyfortyeight;
 end
 %Second Row
 %First Spot on Board
 if board(2,1) == 2
    spot_5 = two;
 elseif board(2,1) == 4
            spot_5 = four;
 elseif board(2,1) == 8
            spot_5 = eight;
 elseif board(2,1) == 16
            spot_5 = sixteen;
 elseif board(2,1) == 32
            spot_5 = thirtytwo;
 elseif board(2,1) == 64
            spot_5 = sixtyfour;
 elseif board(2,1) == 128
            spot_5 = onetwentyeight;
 elseif board(2,1) == 256
            spot_5 = twofiftysix;
 elseif board(2,1) == 512
            spot_5 = fivetwelve;
 elseif board(2,1) == 1024
            spot_5 = tentwentyfour;
 elseif board(2,1) == 2048
            spot_5 = twentyfortyeight;
 end
 
 %Second Spot on Board
 if board(2,2) == 2
    spot_6 = two;
 elseif board(2,2) == 4
    spot_6 = four;
 elseif board(2,2) == 8
            spot_6 = eight;
 elseif board(2,2) == 16
            spot_6 = sixteen;
 elseif board(2,2) == 32
            spot_6 = thirtytwo;
 elseif board(2,2) == 64
            spot_6 = sixtyfour;
 elseif board(2,2) == 128
            spot_6 = onetwentyeight;
 elseif board(2,2) == 256
            spot_6 = twofiftysix;
 elseif board(2,2) == 512
            spot_6 = fivetwelve;
 elseif board(2,2) == 1024
            spot_6 = tentwentyfour;
 elseif board(2,2) == 2048
            spot_6 = twentyfortyeight;
  end
 
  %Third Spot on Board
   if board(2,3) == 2
    spot_7 = two;
 elseif board(2,3) == 4
            spot_7 = four;
 elseif board(2,3) == 8
            spot_7 = eight;
 elseif board(2,3) == 16
            spot_7 = sixteen;
 elseif board(2,3) == 32
            spot_7 = thirtytwo;
 elseif board(2,3) == 64
            spot_7 = sityfour;
 elseif board(2,3) == 128
            spot_7 = onetwentyeight;
 elseif board(2,3) == 256
            spot_7 = twofiftysix;
 elseif board(2,3) == 512
            spot_7 = fivetwelve;
 elseif board(2,3) == 1024
            spot_7 = tentwentyfour;
 elseif board(2,3) == 2048
            spot_7 = twentyfortyeight;
   end
 
   %Fourth Spot on Board
   if board(2,4) == 2
    spot_8 = two;
 elseif board(2,4) == 4
            spot_8 = four;
 elseif board(2,4) == 8
            spot_8 = eight;
 elseif board(2,4) == 16
            spot_8 = sixteen;
 elseif board(2,4) == 32
            spot_8 = thirtytwo;
 elseif board(2,4) == 64
            spot_8 = sityfour;
 elseif board(2,4) == 128
            spot_8 = onetwentyeight;
 elseif board(2,4) == 256
            spot_8 = twofiftysix;
 elseif board(2,4) == 512
            spot_8 = fivetwelve;
 elseif board(2,4) == 1024
            spot_8 = tentwentyfour;
 elseif board(2,4) == 2048
            spot_8 = twentyfortyeight;
 end
 %Third Row
 %First Spot on Board
 if board(3,1) == 2
    spot_9 = two;
 elseif board(3,1) == 4
            spot_9 = four;
 elseif board(3,1) == 8
            spot_9 = eight;
 elseif board(3,1) == 16
            spot_9 = sixteen;
 elseif board(3,1) == 32
            spot_9 = thirtytwo;
 elseif board(3,1) == 64
            spot_9 = sixtyfour;
 elseif board(3,1) == 128
            spot_9 = onetwentyeight;
 elseif board(3,1) == 256
            spot_9 = twofiftysix;
 elseif board(3,1) == 512
            spot_9 = fivetwelve;
 elseif board(3,1) == 1024
            spot_9 = tentwentyfour;
 elseif board(3,1) == 2048
            spot_9 = twentyfortyeight;
 end
 
 %Second Spot on Board
 if board(3,2) == 2
    spot_10 = two;
 elseif board(3,2) == 4
    spot_10 = four;
 elseif board(3,2) == 8
            spot_10 = eight;
 elseif board(3,2) == 16
            spot_10 = sixteen;
 elseif board(3,2) == 32
            spot_10 = thirtytwo;
 elseif board(3,2) == 64
            spot_10 = sixtyfour;
 elseif board(3,2) == 128
            spot_10 = onetwentyeight;
 elseif board(3,2) == 256
            spot_10 = twofiftysix;
 elseif board(3,2) == 512
            spot_10 = fivetwelve;
 elseif board(3,2) == 1024
            spot_10 = tentwentyfour;
 elseif board(3,2) == 2048
            spot_10 = twentyfortyeight;
  end
 
  %Third Spot on Board
   if board(3,3) == 2
    spot_11 = two;
 elseif board(3,3) == 4
            spot_11 = four;
 elseif board(3,3) == 8
            spot_11 = eight;
 elseif board(3,3) == 16
            spot_11 = sixteen;
 elseif board(3,3) == 32
            spot_11 = thirtytwo;
 elseif board(3,3) == 64
            spot_11 = sityfour;
 elseif board(3,3) == 128
            spot_11 = onetwentyeight;
 elseif board(3,3) == 256
            spot_11 = twofiftysix;
 elseif board(3,3) == 512
            spot_11 = fivetwelve;
 elseif board(3,3) == 1024
            spot_11 = tentwentyfour;
 elseif board(3,3) == 2048
            spot_11 = twentyfortyeight;
   end
 
   %Fourth Spot on Board
   if board(3,4) == 2
    spot_12 = two;
 elseif board(3,4) == 4
            spot_12 = four;
 elseif board(3,4) == 8
            spot_12 = eight;
 elseif board(3,4) == 16
            spot_12 = sixteen;
 elseif board(3,4) == 32
            spot_12 = thirtytwo;
 elseif board(3,4) == 64
            spot_12 = sityfour;
 elseif board(3,4) == 128
            spot_12 = onetwentyeight;
 elseif board(3,4) == 256
            spot_12 = twofiftysix;
 elseif board(3,4) == 512
            spot_12 = fivetwelve;
 elseif board(3,4) == 1024
            spot_12 = tentwentyfour;
 elseif board(3,4) == 2048
            spot_12 = twentyfortyeight;
 end
 %Fourth Row
 %First Spot on Board
 if board(4,1) == 2
    spot_13 = two;
 elseif board(4,1) == 4
            spot_13 = four;
 elseif board(4,1) == 8
            spot_13 = eight;
 elseif board(4,1) == 16
            spot_13 = sixteen;
 elseif board(4,1) == 32
            spot_13 = thirtytwo;
 elseif board(4,1) == 64
            spot_13 = sixtyfour;
 elseif board(4,1) == 128
            spot_13 = onetwentyeight;
 elseif board(4,1) == 256
            spot_13 = twofiftysix;
 elseif board(4,1) == 512
            spot_13 = fivetwelve;
 elseif board(4,1) == 1024
            spot_13 = tentwentyfour;
 elseif board(4,1) == 2048
            spot_13 = twentyfortyeight;
 end
 
 %Second Spot on Board
 if board(4,2) == 2
    spot_14 = two;
 elseif board(4,2) == 4
    spot_14 = four;
 elseif board(4,2) == 8
            spot_14 = eight;
 elseif board(4,2) == 16
            spot_14 = sixteen;
 elseif board(4,2) == 32
            spot_14 = thirtytwo;
 elseif board(4,2) == 64
            spot_14 = sixtyfour;
 elseif board(4,2) == 128
            spot_14 = onetwentyeight;
 elseif board(4,2) == 256
            spot_14 = twofiftysix;
 elseif board(4,2) == 512
            spot_14 = fivetwelve;
 elseif board(4,2) == 1024
            spot_14 = tentwentyfour;
 elseif board(4,2) == 2048
            spot_14 = twentyfortyeight;
  end
 
  %Third Spot on Board
   if board(4,3) == 2
    spot_15 = two;
 elseif board(4,3) == 4
            spot_15 = four;
 elseif board(4,3) == 8
            spot_15 = eight;
 elseif board(4,3) == 16
            spot_15 = sixteen;
 elseif board(4,3) == 32
            spot_15 = thirtytwo;
 elseif board(4,3) == 64
            spot_15 = sityfour;
 elseif board(4,3) == 128
            spot_15 = onetwentyeight;
 elseif board(4,3) == 256
            spot_15 = twofiftysix;
 elseif board(4,3) == 512
            spot_15 = fivetwelve;
 elseif board(4,3) == 1024
            spot_15 = tentwentyfour;
 elseif board(4,3) == 2048
            spot_15 = twentyfortyeight;
   end
 
   %Fourth Spot on Board
   if board(4,4) == 2
    spot_16 = two;
 elseif board(4,4) == 4
            spot_16 = four;
 elseif board(4,4) == 8
            spot_16 = eight;
 elseif board(4,4) == 16
            spot_16 = sixteen;
 elseif board(4,4) == 32
            spot_16 = thirtytwo;
 elseif board(4,4) == 64
            spot_16 = sityfour;
 elseif board(4,4) == 128
            spot_16 = onetwentyeight;
 elseif board(4,4) == 256
            spot_16 = twofiftysix;
 elseif board(4,4) == 512
            spot_16 = fivetwelve;
 elseif board(4,4) == 1024
            spot_16 = tentwentyfour;
 elseif board(4,4) == 2048
            spot_16 = twentyfortyeight;
 end
blank(32:1:244,30:1:242,:) = spot_1;
blank(32:1:244,272:1:484,:) = spot_2;
blank(32:1:244,516:1:728,:) = spot_3;
blank(32:1:244,760:1:972,:) = spot_4;
blank(274:1:486,30:1:242,:) = spot_5;
blank(274:1:486,272:1:484,:) = spot_6;
blank(274:1:486,516:1:728,:) = spot_7;
blank(274:1:486,760:1:972,:) = spot_8;
blank(518:1:730,30:1:242,:) = spot_9;
blank(518:1:730,272:1:484,:) = spot_10;
blank(518:1:730,516:1:728,:) = spot_11;
blank(518:1:730,760:1:972,:) = spot_12;
blank(762:1:974,30:1:242,:) = spot_13;
blank(762:1:974,272:1:484,:) = spot_14;
blank(762:1:974,516:1:728,:) = spot_15;
blank(762:1:974,760:1:972,:) = spot_16;

pixels = imshow(blank);

end

