lee_archivos1 = dir('C:\Users\Ruth\Desktop\train\image\*.jpg'); 
for i = 1:length(lee_archivos1)
    %Obtiene el nombre de los archivos de la carpeta
    archivo1 = lee_archivos1(i).name; 
  
    %Eliminar .jpg y guardar las 3 caracteristicas importantes
    A = erase(archivo1,".jpg");
    Folder=pwd;
    [PathStr,FolderName]=fileparts(Folder);
    DataFolder=[A];
    Data1=['images'];
    Data2=['masks'];
    mkdir(DataFolder,Data1);
    mkdir(DataFolder,Data2);
end

