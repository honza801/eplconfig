//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2010.11.04 at 06:51:08 PM CET 
//


package cz.rexcontrols.epl.editor.project;

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
 *         &lt;element ref="{}Number"/>
 *         &lt;element ref="{}CdcExportable"/>
 *         &lt;element name="UserObject" type="{http://www.w3.org/2001/XMLSchema}boolean"/>
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
    "number",
    "cdcExportable",
    "userObject"
})
@XmlRootElement(name = "CfgSubindex")
public class CfgSubindex {

    @XmlElement(name = "Number")
    protected int number;
    @XmlElement(name = "CdcExportable")
    protected boolean cdcExportable;
    @XmlElement(name = "UserObject")
    protected boolean userObject;

    /**
     * Gets the value of the number property.
     * 
     */
    public int getNumber() {
        return number;
    }

    /**
     * Sets the value of the number property.
     * 
     */
    public void setNumber(int value) {
        this.number = value;
    }

    /**
     * Gets the value of the cdcExportable property.
     * 
     */
    public boolean isCdcExportable() {
        return cdcExportable;
    }

    /**
     * Sets the value of the cdcExportable property.
     * 
     */
    public void setCdcExportable(boolean value) {
        this.cdcExportable = value;
    }

    /**
     * Gets the value of the userObject property.
     * 
     */
    public boolean isUserObject() {
        return userObject;
    }

    /**
     * Sets the value of the userObject property.
     * 
     */
    public void setUserObject(boolean value) {
        this.userObject = value;
    }

}
