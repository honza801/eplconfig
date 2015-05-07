//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2010.03.30 at 07:55:07 PM CEST 
//


package org.ethernet_powerlink;

import java.util.ArrayList;
import java.util.List;
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
 *         &lt;element ref="{http://www.ethernet-powerlink.org}LED" maxOccurs="unbounded"/>
 *         &lt;element ref="{http://www.ethernet-powerlink.org}combinedState" maxOccurs="unbounded" minOccurs="0"/>
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
    "led",
    "combinedState"
})
@XmlRootElement(name = "LEDList")
public class LEDList {

    @XmlElement(name = "LED", required = true)
    protected List<LED> led;
    protected List<CombinedState> combinedState;

    /**
     * Gets the value of the led property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the led property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getLED().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link LED }
     * 
     * 
     */
    public List<LED> getLED() {
        if (led == null) {
            led = new ArrayList<LED>();
        }
        return this.led;
    }

    /**
     * Gets the value of the combinedState property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the combinedState property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getCombinedState().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link CombinedState }
     * 
     * 
     */
    public List<CombinedState> getCombinedState() {
        if (combinedState == null) {
            combinedState = new ArrayList<CombinedState>();
        }
        return this.combinedState;
    }

}