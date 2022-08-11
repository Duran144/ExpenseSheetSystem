package com.i3zone.demo

import grails.config.Config
import grails.converters.JSON
import grails.core.support.GrailsConfigurationAware
import groovy.json.JsonSlurper
import io.micrometer.core.ipc.http.HttpSender
import io.micronaut.http.client.netty.DefaultHttpClient
import org.junit.runner.Request
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse
import java.util.stream.Stream


class ConvertCurrencyService{

    def convertZARToUSD(double zar) {

        HttpRequest request = HttpRequest.newBuilder().uri(new URI("https://api.apilayer.com/fixer/convert?to=USD&from=ZAR&amount=${zar}"))
                .headers("apikey", "0I0UHTXSBTltwkcqo6pWv6l12z6mIuIV")
                .GET()
                .build()

        HttpResponse<InputStream> response = HttpClient.newBuilder().build()
                .send(request, HttpResponse.BodyHandlers.ofInputStream())


        if( response.statusCode() == 200) {

            BufferedReader reader = new BufferedReader(new InputStreamReader(response.body()))

            JsonSlurper slurper = new JsonSlurper()

            Object obj = slurper.parse(reader)

            return obj.result
        }

        return 0.0
    }
}
