%Lectura Sperm 0 y 1
lee_archivos1 = dir('C:\Users\Ruth\Desktop\train\image\*.jpg');
for i = 1:length(lee_archivos1)
    %Obtiene el nombre de los archivos de la carpeta
    archivo1 = lee_archivos1(i).name; 
    A = erase(archivo1,".jpg");
    Im= imread(strcat('C:\Users\Ruth\Desktop\train\image\',archivo1));
    Im = imresize(Im,[580 780]);
    s1 = 'C:\Users\Ruth\Desktop\DATA\';
    s2 = A;
    s3= '\images\';
    s = strcat(s1,s2,s3);
    write_dir = strcat(s,archivo1);
    imwrite(Im, write_dir);
   
end