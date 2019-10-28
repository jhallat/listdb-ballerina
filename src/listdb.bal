import ballerina/io;

public function main() {

    while (true) {
        var line = io:readln("> ");
        io:println(line);
        if (line == "exit") {
            break;
        }
    }

}