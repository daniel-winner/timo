package com.crm.component.fileUpload.config;

import com.crm.common.utils.SpringContextUtil;
import com.crm.component.fileUpload.FileUpload;
import com.crm.component.fileUpload.config.properties.UploadProjectProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author dxf
 * @date 2018/11/3
 */
@Configuration
public class UploadFileConfigurer implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        UploadProjectProperties properties = SpringContextUtil.getBean(UploadProjectProperties.class);
        registry.addResourceHandler(properties.getStaticPath()).addResourceLocations("file:" + FileUpload.getUploadPath());
    }
}
