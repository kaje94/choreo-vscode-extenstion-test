import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "fifth",
	id: "fifth-80a6350b-f4e5-4d54-97e7-2135de9d70f6"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
