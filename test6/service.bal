import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "test6",
	id: "test6-291bff71-10a3-48b1-a9f1-fd1ad635e610"
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
