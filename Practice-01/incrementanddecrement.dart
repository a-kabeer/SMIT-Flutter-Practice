void main() {
  var abc = 0;
  var a = abc--;
  //a = 0 abc = -1
  ++abc;
  print(abc);
  a = abc++;
  print(abc);
  print(a);
  // print("a=$a abc=$abc");
  // var b = abc--;
  // //b=-1 abc=-2;
  // print("b = $b abc = $abc");
  // var c = ++b;
  // //c=0 b=0
  // print("c=$c b=$b");
  // var d = a++;
  // //d=0 a=1
  // print("d=$d a=$a");
  // var f = --c;
  // //f=-1 c=-1
  // print("f=$f c=$c");
  // var q = f++;
  // //q=-1 f=0
  // print("q=$q f=$f");
  // var w = q--;
  // //w=-1 q=-2
  // print("w=$w q=$q");
  // var result = w++ + --d;
  // //result=-1+-1=-2
  // print("result=$result");
}
