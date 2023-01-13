void main(){

  var ret  = Solution().reverse(123);
  print("Reverse of ${ret}");
  


}

class Solution {

int reverse(int input){

  int revNum = 0;
  while(input!=0){
    revNum = revNum*10 +input%10;

    input = input~/10;

  }
  return revNum;

}}