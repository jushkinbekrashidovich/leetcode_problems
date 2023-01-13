void main(){
  bool palindromeNumber = isPalindrome(121);
  print("Number is Palindrome ${palindromeNumber}");
  //int reversedValue = reversedNumber(123);
  //print("Reverse of ${reversedValue}");
  


}

int reversedNumber(int input){

  int revNum = 0;
  while(input!=0){
    revNum = revNum*10 +input%10;

    input = input~/10;

  }
  return revNum;

}

bool isPalindrome(int value){

  int reversedValue1 = reversedNumber(value);



  return reversedValue1 == value;


}