package activities;

import io.restassured.builder.RequestSpecBuilder;
import io.restassured.builder.ResponseSpecBuilder;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import io.restassured.specification.ResponseSpecification;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import java.util.HashMap;
import java.util.Map;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.lessThanOrEqualTo;

public class SpecificationTest {

    RequestSpecification reqSpecs;
    ResponseSpecification resSpecs;
    int petId;

    @BeforeClass
    public void setUp(){
        reqSpecs = new RequestSpecBuilder().setBaseUri("https://petstore.swagger.io/v2/pet").
                addHeader("Content-Type","application/json").build();

        resSpecs = new ResponseSpecBuilder().expectStatusCode(200).
                expectResponseTime(lessThanOrEqualTo(3000L)).
                expectBody("status",equalTo("alive")).build();


    }

    @Test
    public void postRequestTest(){

        Map<String, Object> reqBody = new HashMap<>();
        reqBody.put("id", 11223);
        reqBody.put("name", "Luffy");
        reqBody.put("status", "alive");

        Response response = given().spec(reqSpecs).body(reqBody).post();

        petId = response.then().extract().path("id");

        response.then().spec(resSpecs).body("name",equalTo("Luffy"));

    }


    @Test(priority = 1)
    public void getRequestTest(){

        given().spec(reqSpecs).pathParam("petId",petId).when().get("/{petId}").
                then().spec(resSpecs).body("name",equalTo("Luffy"));


    }

    @Test(priority = 2)
    public void deleteRequestTest(){

        given().spec(reqSpecs).pathParam("petId",petId).when().delete("/{petId}").
                then().statusCode(200).time(lessThanOrEqualTo(3000L)).body("message",equalTo(""+petId));

    }


}
