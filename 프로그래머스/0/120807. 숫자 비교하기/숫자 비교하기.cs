using System;

public class Solution {
    public int solution(int num1, int num2) {
        int answer = 0;
        num1 = Math.Clamp(num1,0,10000);
        num2 = Math.Clamp(num2,0,10000);
        
        if (Math.Equals(num1,num2))
            return answer = 1;
        else
            return answer = -1;
    }
}