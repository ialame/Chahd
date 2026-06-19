package ma.chahd.bac.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    private final String[] allowedOrigins;
    private final String annalesDir;

    public WebConfig(@Value("${app.cors.allowed-origins}") String allowedOrigins,
                     @Value("${app.annales.dir:./data/annales/}") String annalesDir) {
        this.allowedOrigins = allowedOrigins.split(",");
        this.annalesDir = annalesDir.endsWith("/") ? annalesDir : annalesDir + "/";
    }

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/api/**")
                .allowedOrigins(allowedOrigins)
                .allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS")
                .allowedHeaders("*");
    }

    /** Sert les PDF d'annales téléchargés localement sur /annales/**. */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/annales/**")
                .addResourceLocations("file:" + annalesDir);
    }
}
