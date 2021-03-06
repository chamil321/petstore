// This is an empty Ballerina class autogenerated to represent the `java.io.InputStream` Java class.
//
// If you need the implementation of this class generated, please use the following command.
//
// $ ballerina bindgen [(-cp|--classpath) <classpath>...] [(-o|--output) <output>] (<class-name>...)
//
// E.g. $ ballerina bindgen java.io.InputStream
import ballerina/jballerina.java;

# Ballerina class mapping for the Java `java.io.InputStream` class.
@java:Binding {'class: "java.io.InputStream"}
distinct class InputStream {

    *java:JObject;

    # The `handle` field that stores the reference to the `java.io.InputStream` object.
    handle jObj;

    # The init function of the Ballerina class mapping the `java.io.InputStream` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.io.InputStream` Java class.
    #
    # + return - The `string` form of the Java object instance.
    function toString() returns string {
        return java:toString(self.jObj) ?: "null";
    }
}

