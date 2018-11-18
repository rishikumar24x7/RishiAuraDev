public class MontiHALL {
    public static Integer countWin=0;
    Public Static Integer countLoss=0;
	Public Static boolean switchEnable=false;
    private Integer doorSelected;
    private Integer rewardDoor;
    private Integer goatDoor;
    public MontiHALL(){
        rewardDoor=selectRandomDoor();
        doorSelected=selectRandomDoor();
        
            if(rewardDoor==doorSelected){
                if(switchEnable){
                    countLoss++;
                }
                else countWin++;
                   
            }
        else{
            if(switchEnable){
                    countWin++;
                }
                else countLoss++;
        }
        
    }
    public Integer selectRandomDoor(){
        Integer randomInt = Crypto.getRandomInteger();
        
        return math.mod(randomInt,3)+1;
    }
    
    
    

}