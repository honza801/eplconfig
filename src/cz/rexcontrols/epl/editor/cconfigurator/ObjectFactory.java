//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2010.10.17 at 09:50:52 PM CEST 
//


package cz.rexcontrols.epl.editor.cconfigurator;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the cz.rexcontrols.epl.editor.cconfigurator package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _RecentFiles_QNAME = new QName("http://www.example.org/configuration", "RecentFiles");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: cz.rexcontrols.epl.editor.cconfigurator
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link CConfiguration }
     * 
     */
    public CConfiguration createCConfiguration() {
        return new CConfiguration();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.example.org/configuration", name = "RecentFiles")
    public JAXBElement<String> createRecentFiles(String value) {
        return new JAXBElement<String>(_RecentFiles_QNAME, String.class, null, value);
    }

}