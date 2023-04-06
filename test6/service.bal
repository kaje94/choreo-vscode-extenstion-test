import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "test6",
	id: "test6-e58e6139-6b3b-41d9-bc94-a3a3ed049957"
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
