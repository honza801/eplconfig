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
import javax.xml.bind.annotation.XmlID;
import javax.xml.bind.annotation.XmlIDREF;
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
 *       &lt;sequence>
 *         &lt;choice minOccurs="0">
 *           &lt;group ref="{http://www.ethernet-powerlink.org}g_simple"/>
 *           &lt;element ref="{http://www.ethernet-powerlink.org}dataTypeIDRef"/>
 *         &lt;/choice>
 *         &lt;element ref="{http://www.ethernet-powerlink.org}conditionalSupport" maxOccurs="unbounded" minOccurs="0"/>
 *         &lt;element ref="{http://www.ethernet-powerlink.org}actualValue" minOccurs="0"/>
 *         &lt;element ref="{http://www.ethernet-powerlink.org}defaultValue" minOccurs="0"/>
 *         &lt;element ref="{http://www.ethernet-powerlink.org}substituteValue" minOccurs="0"/>
 *         &lt;element ref="{http://www.ethernet-powerlink.org}allowedValues" minOccurs="0"/>
 *         &lt;element ref="{http://www.ethernet-powerlink.org}unit" minOccurs="0"/>
 *         &lt;element ref="{http://www.ethernet-powerlink.org}property" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *       &lt;attGroup ref="{http://www.ethernet-powerlink.org}ag_parameter"/>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "bool",
    "bitstring",
    "_byte",
    "_char",
    "word",
    "dword",
    "lword",
    "sint",
    "_int",
    "dint",
    "lint",
    "usint",
    "uint",
    "udint",
    "ulint",
    "real",
    "lreal",
    "string",
    "wstring",
    "dataTypeIDRef",
    "conditionalSupport",
    "actualValue",
    "defaultValue",
    "substituteValue",
    "allowedValues",
    "unit",
    "property"
})
@XmlRootElement(name = "parameterTemplate")
public class ParameterTemplate {

    @XmlElement(name = "BOOL")
    protected Object bool;
    @XmlElement(name = "BITSTRING")
    protected Object bitstring;
    @XmlElement(name = "BYTE")
    protected Object _byte;
    @XmlElement(name = "CHAR")
    protected Object _char;
    @XmlElement(name = "WORD")
    protected Object word;
    @XmlElement(name = "DWORD")
    protected Object dword;
    @XmlElement(name = "LWORD")
    protected Object lword;
    @XmlElement(name = "SINT")
    protected Object sint;
    @XmlElement(name = "INT")
    protected Object _int;
    @XmlElement(name = "DINT")
    protected Object dint;
    @XmlElement(name = "LINT")
    protected Object lint;
    @XmlElement(name = "USINT")
    protected Object usint;
    @XmlElement(name = "UINT")
    protected Object uint;
    @XmlElement(name = "UDINT")
    protected Object udint;
    @XmlElement(name = "ULINT")
    protected Object ulint;
    @XmlElement(name = "REAL")
    protected Object real;
    @XmlElement(name = "LREAL")
    protected Object lreal;
    @XmlElement(name = "STRING")
    protected Object string;
    @XmlElement(name = "WSTRING")
    protected Object wstring;
    protected DataTypeIDRef dataTypeIDRef;
    protected List<ConditionalSupport> conditionalSupport;
    protected ActualValue actualValue;
    protected DefaultValue defaultValue;
    protected SubstituteValue substituteValue;
    protected AllowedValues allowedValues;
    protected Unit unit;
    protected List<Property> property;
    @XmlAttribute(required = true)
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    @XmlID
    @XmlSchemaType(name = "ID")
    protected String uniqueID;
    @XmlAttribute
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    protected String access;
    @XmlAttribute
    protected List<String> accessList;
    @XmlAttribute
    @XmlJavaTypeAdapter(CollapsedStringAdapter.class)
    protected String support;
    @XmlAttribute
    protected Boolean persistent;
    @XmlAttribute
    protected String offset;
    @XmlAttribute
    protected String multiplier;
    @XmlAttribute
    @XmlIDREF
    @XmlSchemaType(name = "IDREF")
    protected Object templateIDRef;

    /**
     * Gets the value of the bool property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getBOOL() {
        return bool;
    }

    /**
     * Sets the value of the bool property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setBOOL(Object value) {
        this.bool = value;
    }

    /**
     * Gets the value of the bitstring property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getBITSTRING() {
        return bitstring;
    }

    /**
     * Sets the value of the bitstring property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setBITSTRING(Object value) {
        this.bitstring = value;
    }

    /**
     * Gets the value of the byte property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getBYTE() {
        return _byte;
    }

    /**
     * Sets the value of the byte property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setBYTE(Object value) {
        this._byte = value;
    }

    /**
     * Gets the value of the char property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getCHAR() {
        return _char;
    }

    /**
     * Sets the value of the char property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setCHAR(Object value) {
        this._char = value;
    }

    /**
     * Gets the value of the word property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getWORD() {
        return word;
    }

    /**
     * Sets the value of the word property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setWORD(Object value) {
        this.word = value;
    }

    /**
     * Gets the value of the dword property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getDWORD() {
        return dword;
    }

    /**
     * Sets the value of the dword property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setDWORD(Object value) {
        this.dword = value;
    }

    /**
     * Gets the value of the lword property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getLWORD() {
        return lword;
    }

    /**
     * Sets the value of the lword property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setLWORD(Object value) {
        this.lword = value;
    }

    /**
     * Gets the value of the sint property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getSINT() {
        return sint;
    }

    /**
     * Sets the value of the sint property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setSINT(Object value) {
        this.sint = value;
    }

    /**
     * Gets the value of the int property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getINT() {
        return _int;
    }

    /**
     * Sets the value of the int property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setINT(Object value) {
        this._int = value;
    }

    /**
     * Gets the value of the dint property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getDINT() {
        return dint;
    }

    /**
     * Sets the value of the dint property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setDINT(Object value) {
        this.dint = value;
    }

    /**
     * Gets the value of the lint property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getLINT() {
        return lint;
    }

    /**
     * Sets the value of the lint property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setLINT(Object value) {
        this.lint = value;
    }

    /**
     * Gets the value of the usint property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getUSINT() {
        return usint;
    }

    /**
     * Sets the value of the usint property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setUSINT(Object value) {
        this.usint = value;
    }

    /**
     * Gets the value of the uint property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getUINT() {
        return uint;
    }

    /**
     * Sets the value of the uint property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setUINT(Object value) {
        this.uint = value;
    }

    /**
     * Gets the value of the udint property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getUDINT() {
        return udint;
    }

    /**
     * Sets the value of the udint property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setUDINT(Object value) {
        this.udint = value;
    }

    /**
     * Gets the value of the ulint property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getULINT() {
        return ulint;
    }

    /**
     * Sets the value of the ulint property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setULINT(Object value) {
        this.ulint = value;
    }

    /**
     * Gets the value of the real property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getREAL() {
        return real;
    }

    /**
     * Sets the value of the real property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setREAL(Object value) {
        this.real = value;
    }

    /**
     * Gets the value of the lreal property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getLREAL() {
        return lreal;
    }

    /**
     * Sets the value of the lreal property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setLREAL(Object value) {
        this.lreal = value;
    }

    /**
     * Gets the value of the string property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getSTRING() {
        return string;
    }

    /**
     * Sets the value of the string property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setSTRING(Object value) {
        this.string = value;
    }

    /**
     * Gets the value of the wstring property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getWSTRING() {
        return wstring;
    }

    /**
     * Sets the value of the wstring property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setWSTRING(Object value) {
        this.wstring = value;
    }

    /**
     * Gets the value of the dataTypeIDRef property.
     * 
     * @return
     *     possible object is
     *     {@link DataTypeIDRef }
     *     
     */
    public DataTypeIDRef getDataTypeIDRef() {
        return dataTypeIDRef;
    }

    /**
     * Sets the value of the dataTypeIDRef property.
     * 
     * @param value
     *     allowed object is
     *     {@link DataTypeIDRef }
     *     
     */
    public void setDataTypeIDRef(DataTypeIDRef value) {
        this.dataTypeIDRef = value;
    }

    /**
     * Gets the value of the conditionalSupport property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the conditionalSupport property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getConditionalSupport().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link ConditionalSupport }
     * 
     * 
     */
    public List<ConditionalSupport> getConditionalSupport() {
        if (conditionalSupport == null) {
            conditionalSupport = new ArrayList<ConditionalSupport>();
        }
        return this.conditionalSupport;
    }

    /**
     * Gets the value of the actualValue property.
     * 
     * @return
     *     possible object is
     *     {@link ActualValue }
     *     
     */
    public ActualValue getActualValue() {
        return actualValue;
    }

    /**
     * Sets the value of the actualValue property.
     * 
     * @param value
     *     allowed object is
     *     {@link ActualValue }
     *     
     */
    public void setActualValue(ActualValue value) {
        this.actualValue = value;
    }

    /**
     * Gets the value of the defaultValue property.
     * 
     * @return
     *     possible object is
     *     {@link DefaultValue }
     *     
     */
    public DefaultValue getDefaultValue() {
        return defaultValue;
    }

    /**
     * Sets the value of the defaultValue property.
     * 
     * @param value
     *     allowed object is
     *     {@link DefaultValue }
     *     
     */
    public void setDefaultValue(DefaultValue value) {
        this.defaultValue = value;
    }

    /**
     * Gets the value of the substituteValue property.
     * 
     * @return
     *     possible object is
     *     {@link SubstituteValue }
     *     
     */
    public SubstituteValue getSubstituteValue() {
        return substituteValue;
    }

    /**
     * Sets the value of the substituteValue property.
     * 
     * @param value
     *     allowed object is
     *     {@link SubstituteValue }
     *     
     */
    public void setSubstituteValue(SubstituteValue value) {
        this.substituteValue = value;
    }

    /**
     * Gets the value of the allowedValues property.
     * 
     * @return
     *     possible object is
     *     {@link AllowedValues }
     *     
     */
    public AllowedValues getAllowedValues() {
        return allowedValues;
    }

    /**
     * Sets the value of the allowedValues property.
     * 
     * @param value
     *     allowed object is
     *     {@link AllowedValues }
     *     
     */
    public void setAllowedValues(AllowedValues value) {
        this.allowedValues = value;
    }

    /**
     * Gets the value of the unit property.
     * 
     * @return
     *     possible object is
     *     {@link Unit }
     *     
     */
    public Unit getUnit() {
        return unit;
    }

    /**
     * Sets the value of the unit property.
     * 
     * @param value
     *     allowed object is
     *     {@link Unit }
     *     
     */
    public void setUnit(Unit value) {
        this.unit = value;
    }

    /**
     * Gets the value of the property property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the property property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getProperty().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Property }
     * 
     * 
     */
    public List<Property> getProperty() {
        if (property == null) {
            property = new ArrayList<Property>();
        }
        return this.property;
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
     * Gets the value of the access property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAccess() {
        if (access == null) {
            return "read";
        } else {
            return access;
        }
    }

    /**
     * Sets the value of the access property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAccess(String value) {
        this.access = value;
    }

    /**
     * Gets the value of the accessList property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the accessList property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getAccessList().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link String }
     * 
     * 
     */
    public List<String> getAccessList() {
        if (accessList == null) {
            accessList = new ArrayList<String>();
        }
        return this.accessList;
    }

    /**
     * Gets the value of the support property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSupport() {
        return support;
    }

    /**
     * Sets the value of the support property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSupport(String value) {
        this.support = value;
    }

    /**
     * Gets the value of the persistent property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    public boolean isPersistent() {
        if (persistent == null) {
            return false;
        } else {
            return persistent;
        }
    }

    /**
     * Sets the value of the persistent property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    public void setPersistent(Boolean value) {
        this.persistent = value;
    }

    /**
     * Gets the value of the offset property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getOffset() {
        return offset;
    }

    /**
     * Sets the value of the offset property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setOffset(String value) {
        this.offset = value;
    }

    /**
     * Gets the value of the multiplier property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMultiplier() {
        return multiplier;
    }

    /**
     * Sets the value of the multiplier property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMultiplier(String value) {
        this.multiplier = value;
    }

    /**
     * Gets the value of the templateIDRef property.
     * 
     * @return
     *     possible object is
     *     {@link Object }
     *     
     */
    public Object getTemplateIDRef() {
        return templateIDRef;
    }

    /**
     * Sets the value of the templateIDRef property.
     * 
     * @param value
     *     allowed object is
     *     {@link Object }
     *     
     */
    public void setTemplateIDRef(Object value) {
        this.templateIDRef = value;
    }

}
