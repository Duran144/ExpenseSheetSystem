package com.i3zone.demo

import grails.config.Config
import grails.converters.JSON
import grails.core.support.GrailsConfigurationAware
import groovy.json.JsonSlurper
import io.micrometer.core.ipc.http.HttpSender
import io.micronaut.http.client.netty.DefaultHttpClient
import org.junit.runner.Request
import org.springframework.http.HttpRequest
import java.net.http.HttpClient
import java.net.http.HttpResponse


class ConvertCurrencyService{

    String fixerioUrl
    String access_key
    String from
    String to

    def convertZARToUSD(double zar) {

        // Setting fixio latest rates endpoint for opening with URL
        String fixerioUrl = "https://api.apilayer.com/fixer/latest?apikey=0I0UHTXSBTltwkcqo6pWv6l12z6mIuIV&symbols=USD,ZAR"

        // Opening connection to fixerioUrl so that it can be used for a streamreader
        URL url = new URL(fixerioUrl)

        InputStream urlStream = url.openStream()

        //
        BufferedReader reader = new BufferedReader(new InputStreamReader(urlStream))

        //
        JsonSlurper jsonSlurper = new JsonSlurper()

        //
        Object result = jsonSlurper.parse(reader)

        return (zar / result.rates.ZAR) * result.rates.USD
    }
}
