
class MyMath{

    MyMath();

    getMean(List list){
        num count = 0;

        for(int i=0;i<list.length; i++){
            count += list[i];
        }
        return count/list.length;
    }

    getSome(List list){
        num count = 0;

        for(int i=0;i<list.length; i++){
            count += list[i];
        }
        return count;
    }
    
}