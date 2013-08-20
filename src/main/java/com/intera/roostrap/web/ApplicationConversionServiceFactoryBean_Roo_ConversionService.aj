// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.intera.roostrap.web;

import com.intera.roostrap.domain.City;
import com.intera.roostrap.domain.Country;
import com.intera.roostrap.domain.Person;
import com.intera.roostrap.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<City, String> ApplicationConversionServiceFactoryBean.getCityToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.intera.roostrap.domain.City, java.lang.String>() {
            public String convert(City city) {
                return new StringBuilder().append(city.getName()).toString();
            }
        };
    }
    
    public Converter<String, City> ApplicationConversionServiceFactoryBean.getIdToCityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.intera.roostrap.domain.City>() {
            public com.intera.roostrap.domain.City convert(java.lang.String id) {
                return City.findCity(id);
            }
        };
    }
    
    public Converter<String, Country> ApplicationConversionServiceFactoryBean.getIdToCountryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.intera.roostrap.domain.Country>() {
            public com.intera.roostrap.domain.Country convert(java.lang.String id) {
                return Country.findCountry(id);
            }
        };
    }
    
    public Converter<Person, String> ApplicationConversionServiceFactoryBean.getPersonToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.intera.roostrap.domain.Person, java.lang.String>() {
            public String convert(Person person) {
                return new StringBuilder().append(person.getName()).append(' ').append(person.getBirthday()).toString();
            }
        };
    }
    
    public Converter<String, Person> ApplicationConversionServiceFactoryBean.getIdToPersonConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.intera.roostrap.domain.Person>() {
            public com.intera.roostrap.domain.Person convert(java.lang.String id) {
                return Person.findPerson(id);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getCityToStringConverter());
        registry.addConverter(getIdToCityConverter());
        registry.addConverter(getCountryToStringConverter());
        registry.addConverter(getIdToCountryConverter());
        registry.addConverter(getPersonToStringConverter());
        registry.addConverter(getIdToPersonConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
