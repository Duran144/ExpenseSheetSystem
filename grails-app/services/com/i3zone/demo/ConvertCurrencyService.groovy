package com.i3zone.demo

import grails.config.Config
import grails.core.support.GrailsConfigurationAware
import grails.gorm.transactions.Transactional
import org.springframework.boot.web.client.RestTemplateBuilder


@Transactional
class ConvertCurrencyService {
    String fixerioUrl
    String apiKey
    String fromZAR
    String toUSD

    def convertRandToUSD(double zar) {
    }
}
