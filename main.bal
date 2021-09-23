import ballerina/io;
import ballerina/http;
type userDetails record {|
string username;
string firstname;
string lastname;
    
|};
userDetails [] all_users = [];

service /users on new http:Listener(9090){
    resource function get all() returns userDetails[]{
        io:println("sorting out the get reguest to users/all");
        return all_users;
        
    }
    resource function post insert(@http:Payload userDetails new_user) returns json {
        io:println("Handling the  post request to user/all");
        all_users.push(new_user);
        return {done:"OK"};
        
    }
    resource function get one/[string username]/[string lastname] ()returns json{
        io:println("IS EOOOO");
        return{username:username, lastname:lastname};
        
    }

}
