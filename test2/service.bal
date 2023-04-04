import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "test2",
	id: "test2-809364d4-05c2-4d37-8b18-875e5010fb71"
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
