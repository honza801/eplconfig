//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2010.03.30 at 07:55:07 PM CEST 
//


package org.ethernet_powerlink;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.ethernet-powerlink.org}LEDList" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "ledList"
})
@XmlRootElement(name = "indicatorList")
public class IndicatorList {

    @XmlElement(name = "LEDList")
    protected LEDList ledList;

    /**
     * Gets the value of the ledList property.
     * 
     * @return
     *     possible object is
     *     {@link LEDList }
     *     
     */
    public LEDList getLEDList() {
        return ledList;
    }

    /**
     * Sets the value of the ledList property.
     * 
     * @param value
     *     allowed object is
     *     {@link LEDList }
     *     
     */
    public void setLEDList(LEDList value) {
        this.ledList = value;
    }

}
