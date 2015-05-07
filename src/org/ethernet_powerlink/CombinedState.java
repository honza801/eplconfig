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
import javax.xml.bind.annotation.XmlIDREF;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSchemaType;
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
 *         &lt;group ref="{http://www.ethernet-powerlink.org}g_labels"/>
 *         &lt;element name="LEDstateRef" maxOccurs="unbounded" minOccurs="2">
 *           &lt;complexType>
 *             &lt;complexContent>
 *               &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *                 &lt;attribute name="stateIDRef" use="required" type="{http://www.w3.org/2001/XMLSchema}IDREF" />
 *               &lt;/restriction>
 *             &lt;/complexContent>
 *           &lt;/complexType>
 *         &lt;/element>
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
    "labelOrDescriptionOrLabelRef",
    "leDstateRef"
})
@XmlRootElement(name = "combinedState")
public class CombinedState {

    @XmlElements({
        @XmlElement(name = "descriptionRef", type = org.ethernet_powerlink.Count.DescriptionRef.class),
        @XmlElement(name = "label", type = org.ethernet_powerlink.Count.Label.class),
        @XmlElement(name = "labelRef", type = org.ethernet_powerlink.Count.LabelRef.class),
        @XmlElement(name = "description", type = org.ethernet_powerlink.Count.Description.class)
    })
    protected List<Object> labelOrDescriptionOrLabelRef;
    @XmlElement(name = "LEDstateRef", required = true)
    protected List<CombinedState.LEDstateRef> leDstateRef;

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
     * {@link org.ethernet_powerlink.Count.DescriptionRef }
     * {@link org.ethernet_powerlink.Count.Label }
     * {@link org.ethernet_powerlink.Count.LabelRef }
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
     * Gets the value of the leDstateRef property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the leDstateRef property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getLEDstateRef().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link CombinedState.LEDstateRef }
     * 
     * 
     */
    public List<CombinedState.LEDstateRef> getLEDstateRef() {
        if (leDstateRef == null) {
            leDstateRef = new ArrayList<CombinedState.LEDstateRef>();
        }
        return this.leDstateRef;
    }


    /**
     * <p>Java class for anonymous complex type.
     * 
     * <p>The following schema fragment specifies the expected content contained within this class.
     * 
     * <pre>
     * &lt;complexType>
     *   &lt;complexContent>
     *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
     *       &lt;attribute name="stateIDRef" use="required" type="{http://www.w3.org/2001/XMLSchema}IDREF" />
     *     &lt;/restriction>
     *   &lt;/complexContent>
     * &lt;/complexType>
     * </pre>
     * 
     * 
     */
    @XmlAccessorType(XmlAccessType.FIELD)
    @XmlType(name = "")
    public static class LEDstateRef {

        @XmlAttribute(required = true)
        @XmlIDREF
        @XmlSchemaType(name = "IDREF")
        protected Object stateIDRef;

        /**
         * Gets the value of the stateIDRef property.
         * 
         * @return
         *     possible object is
         *     {@link Object }
         *     
         */
        public Object getStateIDRef() {
            return stateIDRef;
        }

        /**
         * Sets the value of the stateIDRef property.
         * 
         * @param value
         *     allowed object is
         *     {@link Object }
         *     
         */
        public void setStateIDRef(Object value) {
            this.stateIDRef = value;
        }

    }

}