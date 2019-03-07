class Solution {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
       return  A.map({$0.reversed()}).map({
           $0.map({
               if($0==0){
                   return 1
               }
               else{
                  return 0
               }
                  })
       })
    }
}