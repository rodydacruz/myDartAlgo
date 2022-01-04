import "MyMath.dart";


class Revenue {
    
    MyMath myMath = new MyMath();
    List total = [];
    List loses = [];
    
    
    Revenue(List data, List los){
        
        total = data;
        loses = los;
    }

    getRevenue(){
        num revenue = myMath.getSome(total) - myMath.getSome(loses);
        return revenue;
    }
}