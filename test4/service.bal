import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "test4",
	id: "test4-d4e02598-3087-49af-8fbd-ea91e163ef61"
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
