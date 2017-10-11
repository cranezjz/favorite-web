package com.nxy.favorite.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.Banner.Mode;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
@ServletComponentScan
@SpringBootApplication
public class FavoriteWebApplication {

	public static void main(String[] args) {
		SpringApplication app =new SpringApplication(FavoriteWebApplication.class);
		app.setBannerMode(Mode.OFF);
		app.run(args);
		System.out.println("=======启动完成========");
	}
}
