package com.api.automation.api_automation;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.hamcrest.Matchers;
import org.testng.annotations.Test;
import java.io.InputStream;
import static io.restassured.RestAssured.given;
import static io.restassured.module.jsv.JsonSchemaValidator.matchesJsonSchema;

public class AppTest {
    @Test
    public void testWeatherInLondon() {
        RestAssured.baseURI = "https://samples.openweathermap.org";

        Response response = given()
                .queryParam("q", "London,uk")
                .queryParam("appid", "439d4b804bc8187953eb36d2a8c26a02")
                .get("/data/2.5/weather");

        response.then().statusCode(200);

        response.then().body("sys.country", Matchers.equalTo("GB"));
        response.then().body("name", Matchers.equalTo("London"));

        InputStream schema = getClass().getResourceAsStream("/wschema.json");
        response.then().body(matchesJsonSchema(schema));
    }
}
