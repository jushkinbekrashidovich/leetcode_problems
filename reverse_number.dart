void main(){

  int reversedValue = reversedNumber(123);
  print("Reverse of ${reversedValue}");
  


}

int reversedNumber(int input){

  int revNum = 0;
  while(input!=0){
    revNum = revNum*10 +input%10;

    input = input~/10;

  }
  return revNum;

}