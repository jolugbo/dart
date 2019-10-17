import 'dart:io';
 class DartIOOperations{
   void getDir(String route){
   //String route = "/";
   Directory dir =  Directory(route);
   if(dir.existsSync()){
     print("Directory Exist");
   }
   else {print("Directory does not Exist");}
   }
   void accessTempDir(){
     Directory dir = Directory.systemTemp.createTempSync();
     print(dir.path);
     if(dir.existsSync()){
       print("Removing folder ${dir.path}");
       dir.deleteSync();
     }
     else{
       print("Could not find path ${dir.path}");
     }
   }
   void getCurrentDir(){
     Directory dir = Directory.current;
     print(dir.path);
     List<FileSystemEntity> list = dir.listSync(recursive: true);
     print("${list.length} Entities in folder");
     list.forEach((FileSystemEntity files){
       print(files);
       print(files.statSync().accessed);
       print(" ");
     });
   }
   void writeFile(File file){
     RandomAccessFile raf = file.openSync(mode: FileMode.append);
     raf.writeStringSync("Hello world\r\nWelcome to this file");
     raf.closeSync();
   }
   void readFile(File file){
     if(!file.existsSync()){
       print("File does not exist");
       return;
     }
     print("Reading File....");
     print(file.readAsStringSync());
     print("Reading byte....");
     //List values = file.readAsBytesSync();
     //values.forEach((value) => print(value));
   }
   void deleteFile(File file){
     if(!file.existsSync()){
       print("File does not exist");
       return;
     }
     file.deleteSync();
     print("File Deleted");
   }
 }