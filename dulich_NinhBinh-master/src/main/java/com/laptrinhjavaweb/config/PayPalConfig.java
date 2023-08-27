package com.laptrinhjavaweb.config;

import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.OAuthTokenCredential;
import com.paypal.base.rest.PayPalRESTException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.HashMap;
import java.util.Map;

@Configuration
public class PayPalConfig {
//    @Value("${paypal.client.app}")
//    private String clientId;
//    @Value("${paypal.client.secret}")
//    private String clientSecret;
//    @Value("${paypal.mode}")
//    private String mode;

    private String clientId = "AW_9tFBJprSgj5AtHo3YjliLrrjhv6GsQYbOyCGmScELOzM2tLNOMdo6HDDuZTIweWRdMC8x0EA2EShH";
    private String clientSecret= "EPSJx-xlJSETeZpsssnDgMYLSz3BuDSMlIYru7kNDe1PoD2RKnrfO757xdPI7tqUXnuFWNqSbm3ar-KW";
    private String mode = "sandbox";
    @Bean
    public Map<String, String> paypalSdkConfig(){
        Map<String, String> sdkConfig = new HashMap<>();
        sdkConfig.put("mode", mode);
        System.out.println("Hello from " + mode);
        return sdkConfig;
    }
    @Bean
    public OAuthTokenCredential authTokenCredential(){
        return new OAuthTokenCredential(clientId, clientSecret, paypalSdkConfig());
    }
    @Bean
    public APIContext apiContext() throws PayPalRESTException {
        APIContext apiContext = new APIContext(authTokenCredential().getAccessToken());
        apiContext.setConfigurationMap(paypalSdkConfig());
        return apiContext;
    }
}

