class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var evenNumbers = [Int]()
        var oddNumbers = [Int]()
        for number in A{
            if(number%2==0){
                evenNumbers.append(number)
            }
            else{
                oddNumbers.append(number)
            }
        }
        return evenNumbers+oddNumbers
        
    }
}