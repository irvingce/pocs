package com.sfara.poc.autodeploy.restservice;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

@Path("/hello")
public class HelloService {

	@GET
	@Path("/{name}")
	public String sayHello(@PathParam("name") String name) {
		return "Hello "+name;
	}
	
	@GET
	@Path("/spanish")
	public String sayHola() {
		return "Hola Amigo";
	}
}
