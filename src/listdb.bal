import ballerina/io;
import ballerina/stringutils;

public function main() {

    while (true) {
        var line = io:readln("> ");
        var args = stringutils:split(line, " ");
        var command = args[0].trim().toUpperAscii();
        io:println(command);
        if (command == "EXIT") {
            break;
        }
    }

}

