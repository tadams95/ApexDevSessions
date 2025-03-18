@isTest
public class FitnessTest {
    
    @isTest
    public static void calculateBMITest1() {
        // Test case 1: Normal weight and height
        Decimal weight = 70;  // 70kg
        Decimal height = 1.75; // 1.75m
        
        Decimal result = Fitness.calcluateBMI(weight, height);
        
        // Expected BMI = 70 / (1.75 * 1.75) ≈ 22.86
        Decimal expected = 22.86;
        
        // Assert that result is close to expected value (allowing for minor rounding differences)
        System.assertEquals(true, Math.abs(result - expected) < 0.01, 
            'BMI calculation incorrect for normal values');
    }
    
    @isTest
    public static void calculateBMITest2() {
        // Test case 2: Different weight and height
        Decimal weight = 85;  // 85kg
        Decimal height = 1.80; // 1.80m
        
        Decimal result = Fitness.calcluateBMI(weight, height);
        
        // Expected BMI = 85 / (1.80 * 1.80) ≈ 26.23
        Decimal expected = 26.23;
        
        System.assertEquals(true, Math.abs(result - expected) < 0.01, 
            'BMI calculation incorrect for different values');
    }
    
    @isTest
    public static void calculatePaceTest1() {
        // Test case 1: Normal distance and time
        Decimal distance = 5;    // 5km
        Decimal minutes = 30;    // 30 minutes
        
        Decimal result = Fitness.calculatePace(distance, minutes);
        
        // Expected pace = 5 / (30/60) = 10 km/h
        Decimal expected = 10;
        
        System.assertEquals(true, Math.abs(result - expected) < 0.01, 
            'Pace calculation incorrect for normal values');
    }
    
    @isTest
    public static void calculatePaceTest2() {
        // Test case 2: Different distance and time
        Decimal distance = 10;   // 10km
        Decimal minutes = 45;    // 45 minutes
        
        Decimal result = Fitness.calculatePace(distance, minutes);
        
        // Expected pace = 10 / (45/60) ≈ 13.33 km/h
        Decimal expected = 13.33;
        
        System.assertEquals(true, Math.abs(result - expected) < 0.01, 
            'Pace calculation incorrect for different values');
    }
}