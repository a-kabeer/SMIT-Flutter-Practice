
void main(){
  List  number = [1,2,5,2,6,7];
  List even=[];
  List odd=[];
  for (var i = 0; i < number.length; i++) {
  if(number[i]%2==0){
even.add(number[i]);
  }
  else{
    odd.add(number[i]);
  }
  } 
  print("even $even");
  print("odd $odd");
  }
  
   
 
