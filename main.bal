import ballerina/http;
import ballerina/sql;
import ballerinax/mysql;
import petstore.system;

configurable string dbUser = ?;
configurable string dbPassword = ?;
configurable string dbname = "pet";
configurable int port = 3306;
string tableName = "pets";

# The record represent the details of pets
#
# + id - The identification of the pet
# + name - The pet type name
# + description - The pet description
type Pet record {|
    string id;
    string name;
    string description;
|};

mysql:Client mysqlClient = check new ("localhost", dbUser, dbPassword, dbname, port);

listener http:Listener storeListener = new (9090);

service http:Service on storeListener {

    resource function post pet(@http:Payload Pet data) returns http:Ok|http:InternalServerError {
        string insertQuery = "INSERT INTO " + dbname + "." + tableName + " " + "(ID,NAME,DESCRIPTION) VALUES ('" 
            + data.id + "', '" + data.name + "', '" + data.description + "')";
        sql:ExecutionResult|error result = mysqlClient->execute(insertQuery);
        if (result is error) {
            http:InternalServerError err = {body: "Insertion failed: " + result.message()};
            return err;
        } else {
            http:Ok res =  {body: "Insertion successful"};
            return res;
        }
    }

    resource function get pet/[string id]() returns http:Ok|http:InternalServerError {
        string selectQuery = "Select * from " + tableName + " WHERE ID='" + id + "'";
        stream<record { }, error> resultStream = mysqlClient->query(selectQuery);

        record {| record { } value; |}|error? result = resultStream.next();

        if (result is record {| record { } value; |}) {
            http:Ok res =  {body: result.value.toJson()};
            return res;
        } else if (result is error) {
            http:InternalServerError err = {body: "retrieval failed: " + result.message()};
            return err;
        } else {
            http:Ok err = {body: "No entry for the id: " + id};
            return err;
        }
    }

    resource function delete pet (string id) returns http:Ok|http:InternalServerError {
        string deleteQuery = "Delete from " + tableName + " WHERE ID='" + id + "'";
        sql:ExecutionResult|error result = mysqlClient->execute(deleteQuery);
        if (result is error) {
            http:InternalServerError err = {body: "Insertion failed: " + result.message()};
            return err;
        } else {
            http:Ok res =  {body: "Deletion successful"};
            return res;
        }
    }

    resource function get petList () returns http:Ok|http:InternalServerError|error {
        stream<record {}, error> resultStream = mysqlClient->query("Select * from " + tableName, Pet);
        
        Pet[] petList = [];

        record {| record { } value; |}|error? result = resultStream.next();
        if (result is record {| record { } value; |}) {
            petList.push(check result.value.cloneWithType(Pet));
        } else if (result is error) {
            http:InternalServerError err = {body: "retrieval failed: " + result.message()};
            return err;
        } else {
            http:InternalServerError err = {body: tableName + " table is empty"};
            return err;
        }

        stream<Pet, sql:Error> petStream = <stream<Pet, sql:Error>> resultStream;

        error? e = petStream.forEach(function(Pet pet) {
            petList.push(pet);
        });
        
        if (e is error) {
            http:InternalServerError err = {body: "retrieval failed: " + e.message()};
            return err;
        } else {
            http:Ok res =  {body: petList};
            return res;
        }
    }

    resource function head healthz/live () returns http:Ok|http:ServiceUnavailable {
        stream<record{}, error> resultStream =
            mysqlClient->query("Select count(*) as Total from " + tableName);
        record {|record {} value;|}|error? result = resultStream.next();

        if (result is error) {
            http:ServiceUnavailable err = {headers: {"status": "OUT_OF_SERVICE"}};
            return err;
        } else {
            http:Ok res =  {headers: {"status": "UP"}};
            return res;
        }
    }

    resource function get shutdown () {
        system:System_exit(0);
        return;
    }
}
