import "MyMath.dart";


class Revenue {
    
    MyMath myMath = new MyMath();
    List total = [];
    List loses = [];
    
    /// The year and the mouth to calculate the revenue
    Revenue(String date){
        List splited = date.split("-");
        
        //int year = splited[0];    //Converting to integer
        //int mouth = splited[1]; //Converting to integer
        print(splited);

        total = [];
        loses = [];
    }

    getRevenue(){
        num revenue = myMath.getSome(total) - myMath.getSome(loses);
        return revenue;
    }
}