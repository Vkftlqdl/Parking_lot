function count = car()
lastvd = VideoReader('01.3gp');
b = read(lastvd, inf); % Extract the most recent scene from source
grc = rgb2gray(b);
BWs = edge(grc, 'sobel');
se90 = strel('line', 3, 90);
se0 = strel('line', 3, 00);
BWsdil = imdilate(BWs, [se90 se0]);
BWdfill = imfill(BWsdil, 'holes');
se90_2 = strel('line',24,90);
S4 = imerode(BWdfill,se90_2);
se0_2 = strel('line',24,0);
S4 = imerode(S4,se0_2);
BWsdil_2 = imdilate(S4, [se90_2 se0_2]);% Tokenize cars from the image. 
L = bwlabel(BWsdil_2 );
s = regionprops(L, 'Area');
count = 0;
for k = 1:numel(s)
    count =count + 1;
end
% Count tokens and return the number of tokens