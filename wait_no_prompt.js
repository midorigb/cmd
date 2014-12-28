obj = WScript.Arguments;

if(WScript.Arguments.length != 1){
  total = 1;
}else{
  total = WScript.Arguments(0)
}

i = 0;
for(i=1; i<=total; i++){
    WScript.sleep(1000);
}