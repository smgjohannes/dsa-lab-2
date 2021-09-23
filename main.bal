import ballerina/io;
import ballerina/random;

public function main() returns error? {
    int randomint = check random:createIntInRange(1,100);
    io:println("The selected Random number in range is :", randomint);
    int count = 1;
    while count<=randomint {
        if (randomint% count==0){
             io:println(count,"");
            
        }
        count+=1;
        
    }
   
}
