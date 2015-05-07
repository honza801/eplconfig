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
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElements;
import javax.xml.bind.annotation.XmlID;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.CollapsedStringAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;group ref="{http://www.ethernet-powerlink.org}g_labels"/>
 *       &lt;attribute name="uniqueID" use="required" type="{http://www.w3.org/2001/XMLSchema}ID" />
 *       &lt;attribute name="state" use="required">
 *         &lt;simpleType>
 *           &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string">
 *             &lt;enumeration value="on"/>
 *             &lt;enumeration value="off"/>
 *             &lt;enumeration value="flashing"/>
 *           &lt;/restriction>
 *         &lt;/simpleType>
 *       &lt;/attribute>
 *       &lt;attribute name="LEDcolor" use="required">
 *         &lt;simpleType>
 *           &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string">
 *             &lt;enumeration value="green"/>
 *             &lt;enumeration value="amber"/>
 *             &lt;enumeration value="red"/>
 *           &lt;/restriction>
 *         &lt;/simpleType>
 *       &lt;/attribute>
 *       &lt;attribute name="flashingPeriod" type="{http://www.w3.org/2001/XMLSchema}unsignedInt" />
 *       &lt;attribute name="impulsWidth" type="{http://www.w3.org/2001/XMLSchema}unsignedByte" default="50" />
 *       &lt;attribute name="numberOfImpulses" type="{http://www.w3.org/2001/XMLSchema}unsignedByte" default="1" />
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "labelOrDescriptionOrLabelRef"
})
@XmlRootElement(name = "LEDstate")
public class LEDstate {

    @XmlElements({
        @XmlElement(name = "labelRef", type = org.ethernet_powerlink.Count.LabelRef.class),
        @XmlElement(name = "descriptionRef", type = org.ethernet_powerlink.Count.DescriptionRef.class),
        @XmlElement(name = "label", type = org.ethernet_powerlink.Count.Label.class),
        @XmlElement(name = "description", type = org.ethernet_powerlink.Count.Description.class)
    })
    protected List<Object> labelOrDescriptionOrLabelRef;
    @XmlAttribute(required = true)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @XmlID
    @XmlSchemaType(name = "ID")
    protected String uniqueID;
    @XmlAttribute(required = true)
    protected String state;
    @XmlAttribute(name = "LEDcolor", required = true)
    protected String leDcolor;
    @XmlAttribute
    @XmlSchemaType(name = "unsignedInt")
    protected Long flashingPeriod;
    @XmlAttribute
    @XmlSchemaType(name = "unsignedByte")
    protected Short impulsWidth;
    @XmlAttribute
    @XmlSchemaType(name = "unsignedByte")
    protected Short numberOfImpulses;

    /**
     * Gets the value of the labelOrDescriptionOrLabelRef property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the labelOrDescriptionOrLabelRef property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getLabelOrDescriptionOrLabelRef().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link org.ethernet_powerlink.Count.LabelRef }
     * {@link org.ethernet_powerlink.Count.DescriptionRef }
     * {@link org.ethernet_powerlink.Count.Label }
     * {@link org.ethernet_powerlink.Count.Description }
     * 
     * 
     */
    public List<Object> getLabelOrDescriptionOrLabelRef() {
        if (labelOrDescriptionOrLabelRef == null) {
            labelOrDescriptionOrLabelRef = new ArrayList<Object>();
        }
        return this.labelOrDescriptionOrLabelRef;
    }

    /**
     * Gets the value of the uniqueID property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getUniqueID() {
        return uniqueID;
    }

    /**
     * Sets the value of the uniqueID property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setUniqueID(String value) {
        this.uniqueID = value;
    }

    /**
     * Gets the value of the state property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getState() {
        return state;
    }

    /**
     * Sets the value of the state property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setState(String value) {
        this.state = value;
    }

    /**
     * Gets the value of the leDcolor property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getLEDcolor() {
        return leDcolor;
    }

    /**
     * Sets the value of the leDcolor property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLEDcolor(String value) {
        this.leDcolor = value;
    }

    /**
     * Gets the value of the flashingPeriod property.
     * 
     * @return
     *     possible object is
     *     {@link Long }
     *     
     */
    public Long getFlashingPeriod() {
        return flashingPeriod;
    }

    /**
     * Sets the value of the flashingPeriod property.
     * 
     * @param value
     *     allowed object is
     *     {@link Long }
     *     
     */
    public void setFlashingPeriod(Long value) {
        this.flashingPeriod = value;
    }

    /**
     * Gets the value of the impulsWidth property.
     * 
     * @return
     *     possible object is
     *     {@link Short }
     *     
     */
    public short getImpulsWidth() {
        if (impulsWidth == null) {
            return ((short) 50);
        } else {
            return impulsWidth;
        }
    }

    /**
     * Sets the value of the impulsWidth property.
     * 
     * @param value
     *     allowed object is
     *     {@link Short }
     *     
     */
    public void setImpulsWidth(Short value) {
        this.impulsWidth = value;
    }

    /**
     * Gets the value of the numberOfImpulses property.
     * 
     * @return
     *     possible object is
     *     {@link Short }
     *     
     */
    public short getNumberOfImpulses() {
        if (numberOfImpulses == null) {
            return ((short) 1);
        } else {
            return numberOfImpulses;
        }
    }

    /**
     * Sets the value of the numberOfImpulses property.
     * 
     * @param value
     *     allowed object is
     *     {@link Short }
     *     
     */
    public void setNumberOfImpulses(Short value) {
        this.numberOfImpulses = value;
    }

}
