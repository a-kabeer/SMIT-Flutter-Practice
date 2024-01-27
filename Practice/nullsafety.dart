
void main(){
String abc=   studentInfo(name: "Ali" ,fbAccount: "2");
print(abc);
}
studentInfo({required String name, String? fbAccount}){
  String ui = fbAccount!;
return ui;
}