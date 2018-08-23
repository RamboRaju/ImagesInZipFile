public class repeatCon {
    public List<string> getimageList(){
    
        StaticResource staticRes = [SELECT Body FROM StaticResource WHERE Name = 'MyData1'];
        Zippex minionsDemoZip = new Zippex(staticRes.Body);
        List<String> imgstr = new List<String>();
        for(String imgFileName : minionsDemoZip.getFileNames()){
            if(imgFileName.endsWith('.jpg')){
                imgstr.add(imgFileName);
            }
        }
        System.debug('Images---'+imgstr);
        return imgstr;
    }
}