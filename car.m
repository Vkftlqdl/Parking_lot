function count = car()
lastvd = VideoReader('01.3gp');
b = read(lastvd, inf); %여기까지 원본 동영상에서 가장 최근 화상 불러오기
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
BWsdil_2 = imdilate(S4, [se90_2 se0_2]);%여기까지 object 뽑아내기
L = bwlabel(BWsdil_2 );
s = regionprops(L, 'Area');
count = 0;
for k = 1:numel(s)
    count =count + 1;
end
%count에 현재 차량 대수 지정
