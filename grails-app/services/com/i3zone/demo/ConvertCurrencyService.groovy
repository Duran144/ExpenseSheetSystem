package com.i3zone.demo

import grails.config.Config
import grails.core.support.GrailsConfigurationAware
import grails.gorm.transactions.Transactional
import org.grails.web.json.JSONArray
import org.grails.web.json.parser.JSONParser
import org.springframework.boot.web.client.RestTemplateBuilder
import org.springframework.http.HttpRequest
import org.springframework.http.server.reactive.HttpHandler

import java.net.http.HttpClient
import java.net.http.HttpResponse


class ConvertCurrencyService implements GrailsConfigurationAware{

    String fixerioUrl
    String access_key
    String from
    String to

    def convertZARToUSD(double zar) {
        URL url = new URL("https://data.fixer.io/api/convert?access_key=${access_key}&${from}=ZAR&${to}=USD&amount=${zar}")
//        String url = "${fixerioUrl}"
//        Map params = [access_key: access_key, from: from , to: to, amount: zar]
//
//        def queryString = params.collect {k,v -> "$k=$v" }.join('&')
//
//        url += queryString

        HttpURLConnection conn = (HttpURLConnection) url.openConnection()
        conn.setRequestMethod("GET")
        conn.connect()



        Integer responseCode = conn.getResponseCode()

        // Handle response code
        if(responseCode != 200){
            throw new RuntimeException("HttpResponseCode: " + responseCode)
        }else{
            StringBuilder informationString = new StringBuilder()
            Scanner scanner = new Scanner(url.openStream())

            while(scanner.hasNext()){
                informationString.append(scanner.nextLine())
            }

            scanner.close()

            def slurper = new groovy.json.JsonSlurper()
            def jsonResultObject = slurper.parseText(informationString.json.toString())
            return jsonResultObject.result;
        }
        return 0.0
    }

    @Override
    void setConfiguration(Config co) {
        fixerioUrl = co.getProperty("fixerio.url", "https://data.fixer.io/api/convert?")
        access_key = co.getProperty("fixerio.access_key", "TkQo1J3dlnLWCciJ8VgrhRvCmLeFlJdC")
        from = co.getProperty("fixerio.from","ZAR")
        to = co.getProperty("fixerio.to","USD")
    }
}
