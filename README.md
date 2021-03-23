# PetStore mysql integration

## Setup

- Set up mysql db : https://github.com/anuruddhal/Test_Hackathon
- Download mysql-connector-java-8.0.17.jar and locate in resources
- Add credentials to `Config.toml`
- Build and run the ballerina HTTP service

## Sample request

### Add pet
`curl -v localhost:9090/pet -d "{'id':'p003', 'name':'Cattle', 'description':'Podolica'}" -H "Content-type:Application/json"`

### Get pet
`curl -v localhost:9090/pet/p001`

### Get pet list
`curl -v localhost:9090/petList`

### Delete pet
`curl -v "localhost:9090/pet?id=p002" -X DELETE`

### Health check
`curl -v localhost:9090/healthz/live --head`

### Shutdown service
`curl -v localhost:9090/shutdown`
