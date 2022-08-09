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

    def convertZARToUSD(double zar) {

        URL url = new URL("https://api.apilayer.com/fixer/latest?apikey=0I0UHTXSBTltwkcqo6pWv6l12z6mIuIV&symbols=USD,ZAR")

        BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()))

        JsonSlurper slurper = new JsonSlurper()

        Object result = slurper.parse(reader)

        reader.close()

        return (zar / result.rates.ZAR) * result.rates.USD
    }
}
