package ar.com.tecnosat.server;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

public class Main {
	
	private static Logger logger = LogManager.getLogger("HelloWorld");
	
	public static void main(String[] args) {
		
		logger.info(Main.class.getName());
		
	}

}
