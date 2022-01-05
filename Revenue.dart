import "MyMath.dart";
import "Data.dart";


class Revenue {
    
    MyMath myMath = new MyMath();
    Data data = new Data();

    List total = [];
    List bills = [];
    List loses = [];
    
    /// The year and the mouth to calculate the revenue
    Revenue(String date){
        List splited = date.split("-");
        int year = int.parse(splited[0]);    //Converting to integer
        int mounth = int.parse(splited[1]); ; //Converting to integer
        print(year + mounth);

        total = data.getMountlySellAmountList(year,mounth);
        bills = data.getBills(year,mounth);
        loses = data.getLoses(year,mounth);
    }

    getRevenue(){
        num revenue = myMath.getSome(total) - myMath.getSome(loses) - myMath.getSome(bills);
        return revenue;
    }
}