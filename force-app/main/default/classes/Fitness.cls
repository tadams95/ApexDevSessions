public class Fitness {
    
    //calculate BMI, accepts body weight and height, returns BMI value
    public static Decimal calcluateBMI(Decimal weight, Decimal height) {
        
        
        Decimal bmi = weight / (height * height);
        
        return bmi;
    }
    
    //calculate pace, accepts speed returns kmh
    public static Decimal calculatePace(Decimal distance, Decimal minutes ) {
        Decimal hr = minutes / 60;
        
        Decimal pace = distance / hr;
        return pace;
    }

}