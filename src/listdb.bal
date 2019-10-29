import ballerina/io;
import ballerina/stringutils;

public function main() {

    while (true) {
        var line = io:readln("> ");
        var args = stringutils:split(line, " ");
        var command = args[0].trim().toUpperAscii();
        match command {
          "EXIT" => {
            break;
          }
          "CREATE" => {
            io:println("Create not yet implemented");
          }
          "HELP" => {
            printHelp();
          }
          _ => {
            io:println("Invalid Command. Type 'HELP' for a list of valid commands");
          }
        }
        
        if (command == "EXIT") {
            break;
        }
    }

}

function printHelp() {
  io:println("");
  io:println("CREATE <'TOPIC'> <ID> = Creates an object with and id.");
  io:println("   TOPIC = The primary container for a list.");
  io:println("");
  io:println("EXIT = Exits the application");
  io:println("");
}

# Read the properties as 'json'
//function loadProperties(string pathToProperties)  {

//  io:ReadableByteChannel propertyByteChannel = check io:openReadableFile(pathToProperties);
//  io:ReadableCharacterChannel propertySource = new (propertyByteChannel, "UTF-8");
    
//}