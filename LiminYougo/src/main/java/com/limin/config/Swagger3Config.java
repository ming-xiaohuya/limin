package com.limin.config;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.core.env.Profiles;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.oas.annotations.EnableOpenApi;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

/**
 * @Author: 小冥
 * @date: 2022/3/8
 * @Description: Swagger3配置文件
 */
@Configuration
@EnableOpenApi
public class Swagger3Config {
    /**
     *   application中还配置了mvc，因为springboot2.6.1与swagger3不兼容
     */

    /**
     * ture 启用Swagger3.0， false 禁用（生产环境要禁用）
     */
    Boolean swaggerEnabled=true;



    @Bean
    public Docket createRestApi(Environment environment){
        Profiles profiles = Profiles.of("pro");
        // 通过environment.acceptsProfiles判断是否处在自己的设定环境当中
        boolean flag = environment.acceptsProfiles(profiles);
        return new Docket(DocumentationType.OAS_30)
                .apiInfo(apiInfo())
                .enable(flag)
                // 是否开启
                .enable(swaggerEnabled)
                .select()
                // 扫描的路径使用@Api的controller
                .apis(RequestHandlerSelectors.basePackage("com.limin.controller"))
                .apis(RequestHandlerSelectors.withClassAnnotation(Api.class))
                .apis(RequestHandlerSelectors.withMethodAnnotation(ApiOperation.class))
                // 指定路径处理PathSelectors.any()代表所有的路径
                .paths(PathSelectors.any())
                .build();
    }

    private ApiInfo apiInfo(){
        return new ApiInfoBuilder()
                .title("Swagger3接口文档")
                .description("丽民优购接口文档")
                //作者信息
                .contact(new Contact("小冥","", "2182107058@qq.com"))
                .version("1.0")
                .build();
    }
}
