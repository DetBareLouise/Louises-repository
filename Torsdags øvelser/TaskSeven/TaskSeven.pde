int input = 20;

if (input>0) 
{
  for (int startNumber=0; startNumber<=input; startNumber++) {
    
   if (startNumber==6) { 
    println("Six");
  } else if (startNumber==input/2) {
    println("half");
  } else {
    println(startNumber);
  }
}
} else {
  for (int startNumber=0; startNumber>=input; startNumber--) {
    
  if (startNumber==-6) {
    println("Six");
  } else if (startNumber==input/2) {
    println("half");
  } else {
    println(startNumber);
  }
 }
}
