b = imread('facebook.png');
[r,c,d] = size(b);
a = zeros(r,c,3);
a(:,:,1) = b;
a(:,:,2) = b;
a(:,:,3) = b;

 
 for i=1:1:r
     for j = 1:1:c
         if(a(i,j,1) == 0 && a(i,j,2) == 0 && a(i,j,3) == 0)
             a(i,j,1) = 59;
             a(i,j,2) = 89;
             a(i,j,3) = 152;
         else
             a(i,j,:) = 255;
         end
     end
 end
imwrite(a,'facebookcolor2.jpg');
