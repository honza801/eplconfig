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
 *         &lt;element name="ProfileHeader" type="{http://www.ethernet-powerlink.org}ProfileHeader_DataType"/>
 *         &lt;element name="ProfileBody" type="{http://www.ethernet-powerlink.org}ProfileBody_DataType"/>
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
    "profileHeader",
    "profileBody"
})
@XmlRootElement(name = "ISO15745Profile")
public class ISO15745Profile {

    @XmlElement(name = "ProfileHeader", required = true)
    protected ProfileHeaderDataType profileHeader;
    @XmlElement(name = "ProfileBody", required = true)
    protected ProfileBodyDataType profileBody;

    /**
     * Gets the value of the profileHeader property.
     * 
     * @return
     *     possible object is
     *     {@link ProfileHeaderDataType }
     *     
     */
    public ProfileHeaderDataType getProfileHeader() {
        return profileHeader;
    }

    /**
     * Sets the value of the profileHeader property.
     * 
     * @param value
     *     allowed object is
     *     {@link ProfileHeaderDataType }
     *     
     */
    public void setProfileHeader(ProfileHeaderDataType value) {
        this.profileHeader = value;
    }

    /**
     * Gets the value of the profileBody property.
     * 
     * @return
     *     possible object is
     *     {@link ProfileBodyDataType }
     *     
     */
    public ProfileBodyDataType getProfileBody() {
        return profileBody;
    }

    /**
     * Sets the value of the profileBody property.
     * 
     * @param value
     *     allowed object is
     *     {@link ProfileBodyDataType }
     *     
     */
    public void setProfileBody(ProfileBodyDataType value) {
        this.profileBody = value;
    }

}
