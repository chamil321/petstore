import ballerina/jballerina.java;

# Ballerina class mapping for the Java `java.lang.System` class.
@java:Binding {'class: "java.lang.System"}
distinct class System {

    *java:JObject;
    *Object;

    # The `handle` field that stores the reference to the `java.lang.System` object.
    handle jObj;

    # The init function of the Ballerina class mapping the `java.lang.System` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.lang.System` Java class.
    #
    # + return - The `string` form of the Java object instance.
    function toString() returns string {
        return java:toString(self.jObj) ?: "null";
    }

    # The function that maps to the `equals` method of `java.lang.System`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    function 'equals(Object arg0) returns boolean {
        return java_lang_System_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `java.lang.System`.
    #
    # + return - The `Class` value returning from the Java mapping.
    function getClass() returns Class {
        handle externalObj = java_lang_System_getClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `java.lang.System`.
    #
    # + return - The `int` value returning from the Java mapping.
    function hashCode() returns int {
        return java_lang_System_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `java.lang.System`.
    function notify() {
        java_lang_System_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `java.lang.System`.
    function notifyAll() {
        java_lang_System_notifyAll(self.jObj);
    }

    # The function that maps to the `wait` method of `java.lang.System`.
    #
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait1() returns InterruptedException? {
        error|() externalObj = java_lang_System_wait1(self.jObj);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.
            message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.lang.System`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait2(int arg0) returns InterruptedException? {
        error|() externalObj = java_lang_System_wait2(self.jObj, arg0);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.
            message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.lang.System`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait3(int arg0, int arg1) returns InterruptedException? {
        error|() externalObj = java_lang_System_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.
            message());
            return e;
        }
    }
}

# The function that maps to the `arraycopy` method of `java.lang.System`.
#
# + arg0 - The `Object` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `Object` value required to map with the Java method parameter.
# + arg3 - The `int` value required to map with the Java method parameter.
# + arg4 - The `int` value required to map with the Java method parameter.
function System_arraycopy(Object arg0, int arg1, Object arg2, int arg3, int arg4) {
    java_lang_System_arraycopy(arg0.jObj, arg1, arg2.jObj, arg3, arg4);
}

# The function that maps to the `clearProperty` method of `java.lang.System`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + return - The `string` value returning from the Java mapping.
function System_clearProperty(string arg0) returns string? {
    return java:toString(java_lang_System_clearProperty(java:fromString(arg0)));
}

# The function that maps to the `console` method of `java.lang.System`.
#
# + return - The `Console` value returning from the Java mapping.
function System_console() returns Console {
    handle externalObj = java_lang_System_console();
    Console newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `currentTimeMillis` method of `java.lang.System`.
#
# + return - The `int` value returning from the Java mapping.
function System_currentTimeMillis() returns int {
    return java_lang_System_currentTimeMillis();
}

# The function that maps to the `exit` method of `java.lang.System`.
#
# + arg0 - The `int` value required to map with the Java method parameter.
public function System_exit(int arg0) {
    java_lang_System_exit(arg0);
}

# The function that maps to the `gc` method of `java.lang.System`.
function System_gc() {
    java_lang_System_gc();
}

# The function that maps to the `getLogger` method of `java.lang.System`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + return - The `Logger` value returning from the Java mapping.
function System_getLogger1(string arg0) returns Logger {
    handle externalObj = java_lang_System_getLogger1(java:fromString(arg0));
    Logger newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `getLogger` method of `java.lang.System`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + arg1 - The `ResourceBundle` value required to map with the Java method parameter.
# + return - The `Logger` value returning from the Java mapping.
function System_getLogger2(string arg0, ResourceBundle arg1) returns Logger {
    handle externalObj = java_lang_System_getLogger2(java:fromString(arg0), arg1.jObj);
    Logger newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `getProperties` method of `java.lang.System`.
#
# + return - The `Properties` value returning from the Java mapping.
function System_getProperties() returns Properties {
    handle externalObj = java_lang_System_getProperties();
    Properties newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `getProperty` method of `java.lang.System`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + return - The `string` value returning from the Java mapping.
function System_getProperty1(string arg0) returns string? {
    return java:toString(java_lang_System_getProperty1(java:fromString(arg0)));
}

# The function that maps to the `getProperty` method of `java.lang.System`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + return - The `string` value returning from the Java mapping.
function System_getProperty2(string arg0, string arg1) returns string? {
    return java:toString(java_lang_System_getProperty2(java:fromString(arg0), java:fromString(arg1)));
}

# The function that maps to the `getSecurityManager` method of `java.lang.System`.
#
# + return - The `SecurityManager` value returning from the Java mapping.
function System_getSecurityManager() returns SecurityManager {
    handle externalObj = java_lang_System_getSecurityManager();
    SecurityManager newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `getenv` method of `java.lang.System`.
#
# + return - The `Map` value returning from the Java mapping.
function System_getenv1() returns Map {
    handle externalObj = java_lang_System_getenv1();
    Map newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `getenv` method of `java.lang.System`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + return - The `string` value returning from the Java mapping.
function System_getenv2(string arg0) returns string? {
    return java:toString(java_lang_System_getenv2(java:fromString(arg0)));
}

# The function that maps to the `identityHashCode` method of `java.lang.System`.
#
# + arg0 - The `Object` value required to map with the Java method parameter.
# + return - The `int` value returning from the Java mapping.
function System_identityHashCode(Object arg0) returns int {
    return java_lang_System_identityHashCode(arg0.jObj);
}

# The function that maps to the `inheritedChannel` method of `java.lang.System`.
#
# + return - The `Channel` or the `IOException` value returning from the Java mapping.
function System_inheritedChannel() returns Channel|IOException {
    handle|error externalObj = java_lang_System_inheritedChannel();
    if (externalObj is error) {
        IOException e = error IOException(IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Channel newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `lineSeparator` method of `java.lang.System`.
#
# + return - The `string` value returning from the Java mapping.
function System_lineSeparator() returns string? {
    return java:toString(java_lang_System_lineSeparator());
}

# The function that maps to the `load` method of `java.lang.System`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
function System_load(string arg0) {
    java_lang_System_load(java:fromString(arg0));
}

# The function that maps to the `loadLibrary` method of `java.lang.System`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
function System_loadLibrary(string arg0) {
    java_lang_System_loadLibrary(java:fromString(arg0));
}

# The function that maps to the `mapLibraryName` method of `java.lang.System`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + return - The `string` value returning from the Java mapping.
function System_mapLibraryName(string arg0) returns string? {
    return java:toString(java_lang_System_mapLibraryName(java:fromString(arg0)));
}

# The function that maps to the `nanoTime` method of `java.lang.System`.
#
# + return - The `int` value returning from the Java mapping.
function System_nanoTime() returns int {
    return java_lang_System_nanoTime();
}

# The function that maps to the `runFinalization` method of `java.lang.System`.
function System_runFinalization() {
    java_lang_System_runFinalization();
}

# The function that maps to the `setErr` method of `java.lang.System`.
#
# + arg0 - The `PrintStream` value required to map with the Java method parameter.
function System_setErr(PrintStream arg0) {
    java_lang_System_setErr(arg0.jObj);
}

# The function that maps to the `setIn` method of `java.lang.System`.
#
# + arg0 - The `InputStream` value required to map with the Java method parameter.
function System_setIn(InputStream arg0) {
    java_lang_System_setIn(arg0.jObj);
}

# The function that maps to the `setOut` method of `java.lang.System`.
#
# + arg0 - The `PrintStream` value required to map with the Java method parameter.
function System_setOut(PrintStream arg0) {
    java_lang_System_setOut(arg0.jObj);
}

# The function that maps to the `setProperties` method of `java.lang.System`.
#
# + arg0 - The `Properties` value required to map with the Java method parameter.
function System_setProperties(Properties arg0) {
    java_lang_System_setProperties(arg0.jObj);
}

# The function that maps to the `setProperty` method of `java.lang.System`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + return - The `string` value returning from the Java mapping.
function System_setProperty(string arg0, string arg1) returns string? {
    return java:toString(java_lang_System_setProperty(java:fromString(arg0), java:fromString(arg1)));
}

# The function that maps to the `setSecurityManager` method of `java.lang.System`.
#
# + arg0 - The `SecurityManager` value required to map with the Java method parameter.
function System_setSecurityManager(SecurityManager arg0) {
    java_lang_System_setSecurityManager(arg0.jObj);
}

# The function that retrieves the value of the public field `in`.
#
# + return - The `InputStream` value of the field.
function System_getIn(InputStream arg) returns InputStream {
    handle externalObj = java_lang_System_getIn(arg.jObj);
    InputStream newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `out`.
#
# + return - The `PrintStream` value of the field.
function System_getOut(PrintStream arg) returns PrintStream {
    handle externalObj = java_lang_System_getOut(arg.jObj);
    PrintStream newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `err`.
#
# + return - The `PrintStream` value of the field.
function System_getErr(PrintStream arg) returns PrintStream {
    handle externalObj = java_lang_System_getErr(arg.jObj);
    PrintStream newObj = new (externalObj);
    return newObj;
}

function java_lang_System_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "java.lang.System",
    paramTypes: ["java.lang.Object"]
} external;

function java_lang_System_arraycopy(handle arg0, int arg1, handle arg2, int arg3, int arg4) = @java:Method {
    name: "arraycopy",
    'class: "java.lang.System",
    paramTypes: ["java.lang.Object", "int", "java.lang.Object", "int", "int"]
} external;

function java_lang_System_clearProperty(handle arg0) returns handle = @java:Method {
    name: "clearProperty",
    'class: "java.lang.System",
    paramTypes: ["java.lang.String"]
} external;

function java_lang_System_console() returns handle = @java:Method {
    name: "console",
    'class: "java.lang.System",
    paramTypes: []
} external;

function java_lang_System_currentTimeMillis() returns int = @java:Method {
    name: "currentTimeMillis",
    'class: "java.lang.System",
    paramTypes: []
} external;

function java_lang_System_exit(int arg0) = @java:Method {
    name: "exit",
    'class: "java.lang.System",
    paramTypes: ["int"]
} external;

function java_lang_System_gc() = @java:Method {
    name: "gc",
    'class: "java.lang.System",
    paramTypes: []
} external;

function java_lang_System_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "java.lang.System",
    paramTypes: []
} external;

function java_lang_System_getLogger1(handle arg0) returns handle = @java:Method {
    name: "getLogger",
    'class: "java.lang.System",
    paramTypes: ["java.lang.String"]
} external;

function java_lang_System_getLogger2(handle arg0, handle arg1) returns handle = @java:Method {
    name: "getLogger",
    'class: "java.lang.System",
    paramTypes: ["java.lang.String", "java.util.ResourceBundle"]
} external;

function java_lang_System_getProperties() returns handle = @java:Method {
    name: "getProperties",
    'class: "java.lang.System",
    paramTypes: []
} external;

function java_lang_System_getProperty1(handle arg0) returns handle = @java:Method {
    name: "getProperty",
    'class: "java.lang.System",
    paramTypes: ["java.lang.String"]
} external;

function java_lang_System_getProperty2(handle arg0, handle arg1) returns handle = @java:Method {
    name: "getProperty",
    'class: "java.lang.System",
    paramTypes: ["java.lang.String", "java.lang.String"]
} external;

function java_lang_System_getSecurityManager() returns handle = @java:Method {
    name: "getSecurityManager",
    'class: "java.lang.System",
    paramTypes: []
} external;

function java_lang_System_getenv1() returns handle = @java:Method {
    name: "getenv",
    'class: "java.lang.System",
    paramTypes: []
} external;

function java_lang_System_getenv2(handle arg0) returns handle = @java:Method {
    name: "getenv",
    'class: "java.lang.System",
    paramTypes: ["java.lang.String"]
} external;

function java_lang_System_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "java.lang.System",
    paramTypes: []
} external;

function java_lang_System_identityHashCode(handle arg0) returns int = @java:Method {
    name: "identityHashCode",
    'class: "java.lang.System",
    paramTypes: ["java.lang.Object"]
} external;

function java_lang_System_inheritedChannel() returns handle|error = @java:Method {
    name: "inheritedChannel",
    'class: "java.lang.System",
    paramTypes: []
} external;

function java_lang_System_lineSeparator() returns handle = @java:Method {
    name: "lineSeparator",
    'class: "java.lang.System",
    paramTypes: []
} external;

function java_lang_System_load(handle arg0) = @java:Method {
    name: "load",
    'class: "java.lang.System",
    paramTypes: ["java.lang.String"]
} external;

function java_lang_System_loadLibrary(handle arg0) = @java:Method {
    name: "loadLibrary",
    'class: "java.lang.System",
    paramTypes: ["java.lang.String"]
} external;

function java_lang_System_mapLibraryName(handle arg0) returns handle = @java:Method {
    name: "mapLibraryName",
    'class: "java.lang.System",
    paramTypes: ["java.lang.String"]
} external;

function java_lang_System_nanoTime() returns int = @java:Method {
    name: "nanoTime",
    'class: "java.lang.System",
    paramTypes: []
} external;

function java_lang_System_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "java.lang.System",
    paramTypes: []
} external;

function java_lang_System_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "java.lang.System",
    paramTypes: []
} external;

function java_lang_System_runFinalization() = @java:Method {
    name: "runFinalization",
    'class: "java.lang.System",
    paramTypes: []
} external;

function java_lang_System_setErr(handle arg0) = @java:Method {
    name: "setErr",
    'class: "java.lang.System",
    paramTypes: ["java.io.PrintStream"]
} external;

function java_lang_System_setIn(handle arg0) = @java:Method {
    name: "setIn",
    'class: "java.lang.System",
    paramTypes: ["java.io.InputStream"]
} external;

function java_lang_System_setOut(handle arg0) = @java:Method {
    name: "setOut",
    'class: "java.lang.System",
    paramTypes: ["java.io.PrintStream"]
} external;

function java_lang_System_setProperties(handle arg0) = @java:Method {
    name: "setProperties",
    'class: "java.lang.System",
    paramTypes: ["java.util.Properties"]
} external;

function java_lang_System_setProperty(handle arg0, handle arg1) returns handle = @java:Method {
    name: "setProperty",
    'class: "java.lang.System",
    paramTypes: ["java.lang.String", "java.lang.String"]
} external;

function java_lang_System_setSecurityManager(handle arg0) = @java:Method {
    name: "setSecurityManager",
    'class: "java.lang.System",
    paramTypes: ["java.lang.SecurityManager"]
} external;

function java_lang_System_wait1(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "java.lang.System",
    paramTypes: []
} external;

function java_lang_System_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "java.lang.System",
    paramTypes: ["long"]
} external;

function java_lang_System_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "java.lang.System",
    paramTypes: ["long", "int"]
} external;

function java_lang_System_getIn(handle arg) returns handle = @java:FieldGet {
    name: "in",
    'class: "java.lang.System"
} external;

function java_lang_System_getOut(handle arg) returns handle = @java:FieldGet {
    name: "out",
    'class: "java.lang.System"
} external;

function java_lang_System_getErr(handle arg) returns handle = @java:FieldGet {
    name: "err",
    'class: "java.lang.System"
} external;

