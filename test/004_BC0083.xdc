<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<ISO15745ProfileContainer xmlns="http://www.ethernet-powerlink.org">
    <ISO15745Profile>
        <ProfileHeader>
            <ProfileIdentification>EPL_Device_Profile_X20BC0083</ProfileIdentification>
            <ProfileRevision>1</ProfileRevision>
            <ProfileName>Ethernet POWERLINK X20BC0083 device profile</ProfileName>
            <ProfileSource></ProfileSource>
            <ProfileClassID>Device</ProfileClassID>
            <ISO15745Reference>
                <ISO15745Part>4</ISO15745Part>
                <ISO15745Edition>1</ISO15745Edition>
                <ProfileTechnology>Powerlink</ProfileTechnology>
            </ISO15745Reference>
        </ProfileHeader>
        <ProfileBody xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="ProfileBody_Device_Powerlink" fileVersion="00.03" fileModifiedBy="FieldbusDESIGNER™ POWERLINK Postbuilder, V1.3.3.0" fileModificationTime="11:23:39+02:00" fileModificationDate="2010-10-01" fileCreationTime="11:23:39+02:00" fileCreationDate="2010-10-01" fileCreator="FieldbusDESIGNER™ POWERLINK Postbuilder, V1.3.3.0" fileName="0100006C_X20BC0083_4.xdc" supportedLanguages="en de">
            <DeviceIdentity>
                <vendorName>Bernecker + Rainer Industrie-Elektronik Ges.m.b.H.</vendorName>
                <vendorID>0x0100006C</vendorID>
                <deviceFamily>
                    <label lang="en">Modular I/O system</label>
                    <label lang="de">Modulares I/O System</label>
                </deviceFamily>
                <productName>X20BC0083</productName>
                <productText>
                    <label lang="en">X2X Ethernet POWERLINK bus controller</label>
                    <label lang="de">X2X Ethernet POWERLINK Buskoppler</label>
                </productText>
            </DeviceIdentity>
            <DeviceFunction>
                <capabilities>
                    <characteristicsList>
                        <characteristic>
                            <characteristicName>
<label lang="en">Bus Controller</label>
<label lang="de">Bus Controller</label>
                            </characteristicName>
                            <characteristicContent>
<label lang="en">ETHERNET Powerlink Controlled Node</label>
<label lang="de">ETHERNET Powerlink Controlled Node</label>
                            </characteristicContent>
                        </characteristic>
                        <characteristic>
                            <characteristicName>
<label lang="en">Input/Output</label>
<label lang="de">Ein-/Ausgaenge</label>
                            </characteristicName>
                            <characteristicContent>
<label lang="en">X20 IO System</label>
<label lang="de">X20 IO System</label>
                            </characteristicContent>
                        </characteristic>
                    </characteristicsList>
                </capabilities>
            </DeviceFunction>
            <ApplicationProcess>
                <dataTypeList>
                    <struct uniqueID="UID_DT_Index2100_Sub1E" name="Index2100_Sub1E">
                        <varDeclaration uniqueID="Index2100_Sub1E_OK" name="NetworkStatus">
                            <label lang="en">Network status from module</label>
                            <label lang="de">Netzwerkstatus vom Modul</label>
                            <USINT/>
                        </varDeclaration>
                        <varDeclaration initialValue="" size="2" uniqueID="UID_Index2100_Sub1E_StatusInput01" name="StatusInput01">
                            <label lang="de">Busversorgungswarnung (1 = Ueberstrom &gt;2,3 A oder Unterspannung &lt;4,7 V)</label>
                            <label lang="en">Bus power supply warning (1 = over current &gt;2.3 A or low voltage &lt;4.7 V)</label>
                            <BITSTRING/>
                        </varDeclaration>
                        <varDeclaration size="1" uniqueID="UID_Index2100_Sub1E_Bit_Unused_01" name="Bit_Unused_01">
                            <label lang="en">Unused</label>
                            <label lang="de">Keine Funktion</label>
                            <BITSTRING/>
                        </varDeclaration>
                        <varDeclaration size="1" uniqueID="UID_Index2100_Sub1E_StatusInput02" name="StatusInput02">
                            <label lang="de">I/O Versorgungswarnung (0 = DC OK)</label>
                            <label lang="en">I/O power supply warning (0 = DC OK)</label>
                            <BITSTRING/>
                        </varDeclaration>
                        <varDeclaration size="5" uniqueID="UID_Index2100_Sub1E_Bit_Unused_02" name="Bit_Unused_02">
                            <label lang="en">Unused</label>
                            <label lang="de">Keine Funktion</label>
                            <BITSTRING/>
                        </varDeclaration>
                    </struct>
                    <struct uniqueID="UID_DT_Index2101_Sub1E" name="Index2101_Sub1E">
                        <varDeclaration uniqueID="Index2101_Sub1E_OK" name="NetworkStatus">
                            <label lang="en">Network status from module</label>
                            <label lang="de">Netzwerkstatus vom Modul</label>
                            <USINT/>
                        </varDeclaration>
                        <varDeclaration uniqueID="UID_Index2101_Sub1E_AnalogInput01" name="AnalogInput01">
                            <label lang="de">±10 V / 0 bis 20 mA, Aufloesung 16 Bit</label>
                            <label lang="en">±10 V / 0 to 20 mA, resolution 16 bit</label>
                            <INT/>
                        </varDeclaration>
                    </struct>
                    <struct uniqueID="UID_DT_Index2102_Sub1E" name="Index2102_Sub1E">
                        <varDeclaration uniqueID="Index2102_Sub1E_OK" name="NetworkStatus">
                            <label lang="en">Network status from module</label>
                            <label lang="de">Netzwerkstatus vom Modul</label>
                            <USINT/>
                        </varDeclaration>
                        <varDeclaration size="1" uniqueID="UID_Index2102_Sub1E_DigitalInput01" name="DigitalInput01">
                            <label lang="de">24 VDC, 0,1 bis 25 ms Schaltverzoegerung, Source</label>
                            <label lang="en">24 VDC, 0.1 to 25 ms switching delay, source</label>
                            <label lang="fr">24 VDC, retard de commutation 0ms - 25ms</label>
                            <BITSTRING/>
                        </varDeclaration>
                        <varDeclaration size="1" uniqueID="UID_Index2102_Sub1E_DigitalInput02" name="DigitalInput02">
                            <label lang="de">24 VDC, 0,1 bis 25 ms Schaltverzoegerung, Source</label>
                            <label lang="en">24 VDC, 0.1 to 25 ms switching delay, source</label>
                            <label lang="fr">24 VDC, retard de commutation 0ms - 25ms</label>
                            <BITSTRING/>
                        </varDeclaration>
                        <varDeclaration size="1" uniqueID="UID_Index2102_Sub1E_DigitalInput03" name="DigitalInput03">
                            <label lang="de">24 VDC, 0,1 bis 25 ms Schaltverzoegerung, Source</label>
                            <label lang="en">24 VDC, 0.1 to 25 ms switching delay, source</label>
                            <label lang="fr">24 VDC, retard de commutation 0ms - 25ms</label>
                            <BITSTRING/>
                        </varDeclaration>
                        <varDeclaration size="1" uniqueID="UID_Index2102_Sub1E_DigitalInput04" name="DigitalInput04">
                            <label lang="de">24 VDC, 0,1 bis 25 ms Schaltverzoegerung, Source</label>
                            <label lang="en">24 VDC, 0.1 to 25 ms switching delay, source</label>
                            <label lang="fr">24 VDC, retard de commutation 0ms - 25ms</label>
                            <BITSTRING/>
                        </varDeclaration>
                        <varDeclaration size="4" uniqueID="UID_Index2102_Sub1E_Bit_Unused_01" name="Bit_Unused_01">
                            <label lang="en">Unused</label>
                            <label lang="de">Keine Funktion</label>
                            <BITSTRING/>
                        </varDeclaration>
                    </struct>
                    <struct uniqueID="UID_DT_Index2103_Sub20" name="Index2103_Sub20">
                        <varDeclaration size="1" uniqueID="UID_Index2103_Sub20_DigitalOutput01" name="DigitalOutput01">
                            <label lang="de">24 VDC / 2 A, Source</label>
                            <label lang="en">24 VDC / 2 A, source</label>
                            <label lang="fr">FET, 24 VDC</label>
                            <BITSTRING/>
                        </varDeclaration>
                        <varDeclaration size="1" uniqueID="UID_Index2103_Sub20_DigitalOutput02" name="DigitalOutput02">
                            <label lang="de">24 VDC / 2 A, Source</label>
                            <label lang="en">24 VDC / 2 A, source</label>
                            <label lang="fr">FET, 24 VDC</label>
                            <BITSTRING/>
                        </varDeclaration>
                        <varDeclaration size="1" uniqueID="UID_Index2103_Sub20_DigitalOutput03" name="DigitalOutput03">
                            <label lang="de">24 VDC / 2 A, Source</label>
                            <label lang="en">24 VDC / 2 A, source</label>
                            <label lang="fr">FET, 24 VDC</label>
                            <BITSTRING/>
                        </varDeclaration>
                        <varDeclaration size="1" uniqueID="UID_Index2103_Sub20_DigitalOutput04" name="DigitalOutput04">
                            <label lang="de">24 VDC / 2 A, Source</label>
                            <label lang="en">24 VDC / 2 A, source</label>
                            <label lang="fr">FET, 24 VDC</label>
                            <BITSTRING/>
                        </varDeclaration>
                        <varDeclaration size="4" uniqueID="UID_Index2103_Sub20_Bit_Unused_01" name="Bit_Unused_01">
                            <label lang="en">Unused</label>
                            <label lang="de">Keine Funktion</label>
                            <BITSTRING/>
                        </varDeclaration>
                    </struct>
                    <struct uniqueID="UID_DT_Index2103_Sub1E" name="Index2103_Sub1E">
                        <varDeclaration uniqueID="Index2103_Sub1E_OK" name="NetworkStatus">
                            <label lang="en">Network status from module</label>
                            <label lang="de">Netzwerkstatus vom Modul</label>
                            <USINT/>
                        </varDeclaration>
                        <varDeclaration size="1" uniqueID="UID_Index2103_Sub1E_StatusDigitalOutput01" name="StatusDigitalOutput01">
                            <label lang="de">Status digitaler Ausgang 01 (0 = OK)</label>
                            <label lang="en">Status digital output 01 (0 = OK)</label>
                            <label lang="fr">Etat sortie digitale 01 (0 = OK)</label>
                            <BITSTRING/>
                        </varDeclaration>
                        <varDeclaration size="1" uniqueID="UID_Index2103_Sub1E_StatusDigitalOutput02" name="StatusDigitalOutput02">
                            <label lang="de">Status digitaler Ausgang 02 (0 = OK)</label>
                            <label lang="en">Status digital output 02 (0 = OK)</label>
                            <label lang="fr">Etat sortie digitale 02 (0 = OK)</label>
                            <BITSTRING/>
                        </varDeclaration>
                        <varDeclaration size="1" uniqueID="UID_Index2103_Sub1E_StatusDigitalOutput03" name="StatusDigitalOutput03">
                            <label lang="de">Status digitaler Ausgang 03 (0 = OK)</label>
                            <label lang="en">Status digital output 03 (0 = OK)</label>
                            <label lang="fr">Etat sortie digitale 03 (0 = OK)</label>
                            <BITSTRING/>
                        </varDeclaration>
                        <varDeclaration size="1" uniqueID="UID_Index2103_Sub1E_StatusDigitalOutput04" name="StatusDigitalOutput04">
                            <label lang="de">Status digitaler Ausgang 04 (0 = OK)</label>
                            <label lang="en">Status digital output 04 (0 = OK)</label>
                            <label lang="fr">Etat sortie digitale 04 (0 = OK)</label>
                            <BITSTRING/>
                        </varDeclaration>
                        <varDeclaration size="4" uniqueID="UID_Index2103_Sub1E_Bit_Unused_01" name="Bit_Unused_01">
                            <label lang="en">Unused</label>
                            <label lang="de">Keine Funktion</label>
                            <BITSTRING/>
                        </varDeclaration>
                    </struct>
                    <struct uniqueID="UID_DT_Index2104_Sub20" name="Index2104_Sub20">
                        <varDeclaration uniqueID="UID_Index2104_Sub20_AnalogOutput01" name="AnalogOutput01">
                            <label lang="de">±10 V / 0 bis 20 mA, Aufloesung 12 Bit</label>
                            <label lang="en">±10 V / 0 to 20 mA, resolution 12 bit</label>
                            <INT/>
                        </varDeclaration>
                        <varDeclaration uniqueID="UID_Index2104_Sub20_AnalogOutput02" name="AnalogOutput02">
                            <label lang="de">±10 V / 0 bis 20 mA, Aufloesung 12 Bit</label>
                            <label lang="en">±10 V / 0 to 20 mA, resolution 12 bit</label>
                            <INT/>
                        </varDeclaration>
                    </struct>
                    <struct uniqueID="UID_DT_Index2104_Sub1E" name="Index2104_Sub1E">
                        <varDeclaration uniqueID="Index2104_Sub1E_OK" name="NetworkStatus">
                            <label lang="en">Network status from module</label>
                            <label lang="de">Netzwerkstatus vom Modul</label>
                            <USINT/>
                        </varDeclaration>
                    </struct>
                </dataTypeList>
                <parameterList>
                    <parameter access="read" uniqueID="UID_DOM_Index2100_Sub1E">
                        <label lang="en">MOD_InputImage_DOM</label>
                        <label lang="de">MOD_InputImage_DOM</label>
                        <dataTypeIDRef uniqueIDRef="UID_DT_Index2100_Sub1E"/>
                    </parameter>
                    <parameter access="read" uniqueID="UID_DOM_Index2101_Sub1E">
                        <label lang="en">MOD_InputImage_DOM</label>
                        <label lang="de">MOD_InputImage_DOM</label>
                        <dataTypeIDRef uniqueIDRef="UID_DT_Index2101_Sub1E"/>
                    </parameter>
                    <parameter access="read" uniqueID="UID_DOM_Index2102_Sub1E">
                        <label lang="en">MOD_InputImage_DOM</label>
                        <label lang="de">MOD_InputImage_DOM</label>
                        <dataTypeIDRef uniqueIDRef="UID_DT_Index2102_Sub1E"/>
                    </parameter>
                    <parameter access="readWrite" uniqueID="UID_DOM_Index2103_Sub20">
                        <label lang="en">MOD_OutputImage_DOM</label>
                        <label lang="de">MOD_OutputImage_DOM</label>
                        <dataTypeIDRef uniqueIDRef="UID_DT_Index2103_Sub20"/>
                    </parameter>
                    <parameter access="read" uniqueID="UID_DOM_Index2103_Sub1E">
                        <label lang="en">MOD_InputImage_DOM</label>
                        <label lang="de">MOD_InputImage_DOM</label>
                        <dataTypeIDRef uniqueIDRef="UID_DT_Index2103_Sub1E"/>
                    </parameter>
                    <parameter access="readWrite" uniqueID="UID_DOM_Index2104_Sub20">
                        <label lang="en">MOD_OutputImage_DOM</label>
                        <label lang="de">MOD_OutputImage_DOM</label>
                        <dataTypeIDRef uniqueIDRef="UID_DT_Index2104_Sub20"/>
                    </parameter>
                    <parameter access="read" uniqueID="UID_DOM_Index2104_Sub1E">
                        <label lang="en">MOD_InputImage_DOM</label>
                        <label lang="de">MOD_InputImage_DOM</label>
                        <dataTypeIDRef uniqueIDRef="UID_DT_Index2104_Sub1E"/>
                    </parameter>
                </parameterList>
            </ApplicationProcess>
        </ProfileBody>
    </ISO15745Profile>
    <ISO15745Profile>
        <ProfileHeader>
            <ProfileIdentification>EPL_Device_Profile_X20BC0083</ProfileIdentification>
            <ProfileRevision>1</ProfileRevision>
            <ProfileName>Ethernet POWERLINK X20BC0083 device profile</ProfileName>
            <ProfileSource></ProfileSource>
            <ProfileClassID>CommunicationNetwork</ProfileClassID>
            <ISO15745Reference>
                <ISO15745Part>4</ISO15745Part>
                <ISO15745Edition>1</ISO15745Edition>
                <ProfileTechnology>Powerlink</ProfileTechnology>
            </ISO15745Reference>
        </ProfileHeader>
        <ProfileBody xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="ProfileBody_CommunicationNetwork_Powerlink" fileVersion="00.03" fileModifiedBy="FieldbusDESIGNER™ POWERLINK Postbuilder, V1.3.3.0" fileModificationTime="11:23:39+02:00" fileModificationDate="2010-10-01" fileCreationTime="11:23:39+02:00" fileCreationDate="2010-10-01" fileCreator="FieldbusDESIGNER™ POWERLINK Postbuilder, V1.3.3.0" fileName="0100006C_X20BC0083_4.xdc" supportedLanguages="en de">
            <ApplicationLayers>
                <identity>
                    <vendorID>0x0100006C</vendorID>
                    <deviceFamily>
                        <label lang="en">Modular I/O system</label>
                        <label lang="de">Modulares I/O System</label>
                    </deviceFamily>
                </identity>
                <DataTypeList>
                    <defType dataType="0001">
                        <Boolean/>
                    </defType>
                    <defType dataType="0002">
                        <Integer8/>
                    </defType>
                    <defType dataType="0003">
                        <Integer16/>
                    </defType>
                    <defType dataType="0004">
                        <Integer32/>
                    </defType>
                    <defType dataType="0005">
                        <Unsigned8/>
                    </defType>
                    <defType dataType="0006">
                        <Unsigned16/>
                    </defType>
                    <defType dataType="0007">
                        <Unsigned32/>
                    </defType>
                    <defType dataType="0008">
                        <Real32/>
                    </defType>
                    <defType dataType="0009">
                        <Visible_String/>
                    </defType>
                    <defType dataType="0010">
                        <Integer24/>
                    </defType>
                    <defType dataType="0011">
                        <Real64/>
                    </defType>
                    <defType dataType="0012">
                        <Integer40/>
                    </defType>
                    <defType dataType="0013">
                        <Integer48/>
                    </defType>
                    <defType dataType="0014">
                        <Integer56/>
                    </defType>
                    <defType dataType="0015">
                        <Integer64/>
                    </defType>
                    <defType dataType="000A">
                        <Octet_String/>
                    </defType>
                    <defType dataType="000B">
                        <Unicode_String/>
                    </defType>
                    <defType dataType="000C">
                        <Time_of_Day/>
                    </defType>
                    <defType dataType="000D">
                        <Time_Diff/>
                    </defType>
                    <defType dataType="000F">
                        <Domain/>
                    </defType>
                    <defType dataType="0016">
                        <Unsigned24/>
                    </defType>
                    <defType dataType="0018">
                        <Unsigned40/>
                    </defType>
                    <defType dataType="0019">
                        <Unsigned48/>
                    </defType>
                    <defType dataType="001A">
                        <Unsigned56/>
                    </defType>
                    <defType dataType="001B">
                        <Unsigned64/>
                    </defType>
                    <defType dataType="0401">
                        <MAC_ADDRESS/>
                    </defType>
                    <defType dataType="0402">
                        <IP_ADDRESS/>
                    </defType>
                    <defType dataType="0403">
                        <NETTIME/>
                    </defType>
                </DataTypeList>
                <ObjectList>
                    <Object defaultValue="0x000F0191" accessType="const" dataType="0007" objectType="7" name="NMT_DeviceType_U32" index="1000"/>
                    <Object defaultValue="0" accessType="ro" dataType="0005" objectType="8" name="ERR_ErrorRegister_U8" index="1001">
                        <SubObject actualValue="0x04" accessType="const" dataType="0005" objectType="0" name="NumberOfEntries" subIndex="00"/>
                        <SubObject dataType="0002" objectType="8" name="retard" subIndex="04"/>
                    </Object>
                    <Object dataType="000F" objectType="8" name="ERR_History_ADOM" index="1003">
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="01"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="02"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="03"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="04"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="05"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="06"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="07"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="08"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="09"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="0A"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="0B"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="0C"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="0D"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="0E"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="0F"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="10"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="11"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="12"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="13"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="14"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="15"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="16"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="17"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="18"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="19"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="1A"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="1B"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="1C"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="1D"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="1E"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="1F"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="20"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="21"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="22"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="23"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="24"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="25"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="26"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="27"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="28"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="29"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="2A"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="2B"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="2C"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="2D"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="2E"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="2F"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="30"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="31"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="32"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="33"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="34"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="35"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="36"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="37"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="38"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="39"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="3A"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="3B"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="3C"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="3D"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="3E"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="3F"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="40"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="41"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="42"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="43"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="44"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="45"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="46"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="47"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="48"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="49"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="4A"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="4B"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="4C"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="4D"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="4E"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="4F"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="50"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="51"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="52"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="53"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="54"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="55"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="56"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="57"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="58"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="59"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="5A"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="5B"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="5C"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="5D"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="5E"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="5F"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="60"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="61"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="62"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="63"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="64"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="65"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="66"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="67"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="68"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="69"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="6A"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="6B"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="6C"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="6D"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="6E"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="6F"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="70"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="71"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="72"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="73"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="74"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="75"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="76"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="77"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="78"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="79"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="7A"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="7B"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="7C"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="7D"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="7E"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="7F"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="80"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="81"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="82"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="83"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="84"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="85"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="86"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="87"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="88"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="89"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="8A"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="8B"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="8C"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="8D"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="8E"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="8F"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="90"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="91"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="92"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="93"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="94"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="95"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="96"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="97"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="98"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="99"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="9A"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="9B"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="9C"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="9D"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="9E"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="9F"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="A0"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="A1"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="A2"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="A3"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="A4"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="A5"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="A6"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="A7"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="A8"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="A9"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="AA"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="AB"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="AC"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="AD"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="AE"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="AF"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="B0"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="B1"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="B2"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="B3"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="B4"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="B5"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="B6"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="B7"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="B8"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="B9"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="BA"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="BB"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="BC"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="BD"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="BE"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="BF"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="C0"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="C1"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="C2"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="C3"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="C4"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="C5"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="C6"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="C7"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="C8"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="C9"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="CA"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="CB"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="CC"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="CD"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="CE"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="CF"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="D0"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="D1"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="D2"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="D3"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="D4"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="D5"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="D6"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="D7"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="D8"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="D9"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="DA"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="DB"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="DC"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="DD"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="DE"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="DF"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="E0"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="E1"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="E2"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="E3"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="E4"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="E5"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="E6"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="E7"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="E8"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="E9"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="EA"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="EB"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="EC"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="ED"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="EE"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="EF"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="F0"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="F1"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="F2"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="F3"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="F4"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="F5"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="F6"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="F7"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="F8"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="F9"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="FA"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="FB"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="FC"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="FD"/>
                        <SubObject accessType="ro" dataType="000F" objectType="7" name="ErrorEntry_DOM" subIndex="FE"/>
                    </Object>
                    <Object actualValue="0x000007D0" defaultValue="1000" accessType="rw" dataType="0007" objectType="7" name="NMT_CycleLen_U32" index="1006"/>
                    <Object accessType="const" dataType="0009" objectType="7" name="NMT_ManufactDevName_VS" index="1008"/>
                    <Object accessType="const" dataType="0009" objectType="7" name="NMT_ManufactHwVers_VS" index="1009"/>
                    <Object accessType="const" dataType="0009" objectType="7" name="NMT_ManufactSwVers_VS" index="100A"/>
                    <Object objectType="9" name="NMT_StoreParam_REC" index="1010">
                        <SubObject defaultValue="3" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject defaultValue="1" accessType="rw" dataType="0007" objectType="7" name="AllParam_U32" subIndex="01"/>
                        <SubObject defaultValue="1" accessType="rw" dataType="0007" objectType="7" name="CommunicationParam_U32" subIndex="02"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="ApplicationParam_U32" subIndex="03"/>
                    </Object>
                    <Object dataType="0002" objectType="9" name="NMT_RestoreDefParam_REC" index="1011">
                        <SubObject defaultValue="3" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject defaultValue="1" accessType="rw" dataType="0007" objectType="7" name="AllParam_U32" subIndex="01"/>
                        <SubObject defaultValue="1" accessType="rw" dataType="0007" objectType="7" name="CommunicationParam_U32" subIndex="02"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="ApplicationParam_U32" subIndex="03"/>
                    </Object>
                    <Object dataType="0002" objectType="9" name="NMT_IdentityObject_REC" index="1018">
                        <SubObject defaultValue="4" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject defaultValue="0x0100006C" accessType="const" dataType="0007" objectType="7" name="VendorId_U32" subIndex="01"/>
                        <SubObject defaultValue="0x1F1E" accessType="const" dataType="0007" objectType="7" name="ProductCode_U32" subIndex="02"/>
                        <SubObject accessType="const" dataType="0007" objectType="7" name="RevisionNo_U32" subIndex="03"/>
                        <SubObject accessType="const" dataType="0007" objectType="7" name="SerialNo_U32" subIndex="04"/>
                    </Object>
                    <Object dataType="0002" objectType="9" name="CFM_VerifyConfiguration_REC" index="1020">
                        <SubObject defaultValue="2" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject actualValue="0x0000260D" defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="ConfDate_U32" subIndex="01"/>
                        <SubObject actualValue="0x03FD0387" defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="ConfTime_U32" subIndex="02"/>
                    </Object>
                    <Object dataType="0002" objectType="9" name="NMT_InterfaceGroup_0h_REC" index="1030">
                        <SubObject defaultValue="9" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject defaultValue="0" accessType="ro" dataType="0006" objectType="7" name="InterfaceIndex_U16" subIndex="01"/>
                        <SubObject accessType="const" dataType="0009" objectType="7" name="InterfaceDescription_VSTR" subIndex="02"/>
                        <SubObject defaultValue="6" accessType="const" dataType="0005" objectType="7" name="InterfaceType_U8" subIndex="03"/>
                        <SubObject defaultValue="1500" accessType="const" dataType="0006" objectType="7" name="InterfaceMtu_U16" subIndex="04"/>
                        <SubObject accessType="const" dataType="000A" objectType="7" name="InterfacePhysAddress_OSTR" subIndex="05"/>
                        <SubObject defaultValue="IF1" accessType="rw" dataType="0009" objectType="7" name="InterfaceName_VSTR" subIndex="06"/>
                        <SubObject defaultValue="1" accessType="ro" dataType="0005" objectType="7" name="InterfaceOperStatus_U8" subIndex="07"/>
                        <SubObject defaultValue="1" accessType="rw" dataType="0005" objectType="7" name="InterfaceAdminState_U8" subIndex="08"/>
                        <SubObject defaultValue="True" accessType="rw" dataType="0001" objectType="7" name="Valid_BOOL" subIndex="09"/>
                    </Object>
                    <Object dataType="0002" objectType="9" name="DIA_NMTTelegrCount_REC" index="1101">
                        <SubObject defaultValue="8" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="IsochrCyc_U32" subIndex="01"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="IsochrRx_U32" subIndex="02"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="IsochrTx_U32" subIndex="03"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="AsyncRx_U32" subIndex="04"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="AsyncTx_U32" subIndex="05"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="SdoRx_U32" subIndex="06"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="SdoTx_U32" subIndex="07"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="Status_U32" subIndex="08"/>
                    </Object>
                    <Object dataType="0002" objectType="9" name="PDO_RxCommParam_0h_REC" index="1400">
                        <SubObject PDOmapping="no" actualValue="0x00" defaultValue="0x2" accessType="ro" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject PDOmapping="no" defaultValue="0x0" accessType="rw" dataType="0005" objectType="7" name="NodeID_U8" subIndex="01"/>
                        <SubObject PDOmapping="no" defaultValue="0x0" accessType="ro" dataType="0005" objectType="7" name="MappingVersion_U8" subIndex="02"/>
                    </Object>
                    <Object objectType="8" name="PDO_RxMappParam_0h_AU64" index="1600">
                        <SubObject PDOmapping="no" actualValue="0x00" accessType="ro" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject PDOmapping="no" actualValue="0x0008000000202103" accessType="ro" dataType="001B" objectType="7" name="ObjectMapping 1" subIndex="01"/>
                        <SubObject PDOmapping="no" actualValue="0x0020000800202104" accessType="ro" dataType="001B" objectType="7" name="ObjectMapping 2" subIndex="02"/>
                    </Object>
                    <Object objectType="9" name="PDO_TxCommParam_0h_REC" index="1800">
                        <SubObject PDOmapping="no" actualValue="0x00" defaultValue="0x2" accessType="ro" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject PDOmapping="no" defaultValue="0x0" accessType="rw" dataType="0005" objectType="7" name="NodeID_U8" subIndex="01"/>
                        <SubObject PDOmapping="no" defaultValue="0x0" accessType="ro" dataType="0005" objectType="7" name="MappingVersion_U8" subIndex="02"/>
                    </Object>
                    <Object dataType="0002" objectType="8" name="PDO_TxMappParam_0h_AU64" index="1A00">
                        <SubObject PDOmapping="no" actualValue="0x00" defaultValue="0x0A" accessType="ro" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject PDOmapping="no" actualValue="0x00100000001E2100" accessType="ro" dataType="001B" objectType="7" name="ObjectMapping 1" subIndex="01"/>
                        <SubObject PDOmapping="no" actualValue="0x00180010001E2101" accessType="ro" dataType="001B" objectType="7" name="ObjectMapping 2" subIndex="02"/>
                        <SubObject PDOmapping="no" actualValue="0x00100028001E2102" accessType="ro" dataType="001B" objectType="7" name="ObjectMapping 3" subIndex="03"/>
                        <SubObject PDOmapping="no" actualValue="0x00100038001E2103" accessType="ro" dataType="001B" objectType="7" name="ObjectMapping 4" subIndex="04"/>
                        <SubObject PDOmapping="no" actualValue="0x00080048001E2104" accessType="ro" dataType="0015" objectType="7" name="ObjectMapping 5" subIndex="05"/>
                    </Object>
                    <Object objectType="9" name="DLL_CNLossSoC_REC" index="1C0B">
                        <SubObject defaultValue="3" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject accessType="rw" dataType="0007" objectType="7" name="CumulativeCnt_U32" subIndex="01"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="ThresholdCnt_U32" subIndex="02"/>
                        <SubObject defaultValue="15" accessType="rw" dataType="0007" objectType="7" name="Threshold_U32" subIndex="03"/>
                    </Object>
                    <Object objectType="9" name="DLL_CNLossSoA_REC" index="1C0C">
                        <SubObject defaultValue="3" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject accessType="rw" dataType="0007" objectType="7" name="CumulativeCnt_U32" subIndex="01"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="ThresholdCnt_U32" subIndex="02"/>
                        <SubObject defaultValue="15" accessType="rw" dataType="0007" objectType="7" name="Threshold_U32" subIndex="03"/>
                    </Object>
                    <Object dataType="0002" objectType="9" name="DLL_CNLossPReq_REC" index="1C0D">
                        <SubObject defaultValue="3" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject accessType="rw" dataType="0007" objectType="7" name="CumulativeCnt_U32" subIndex="01"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="ThresholdCnt_U32" subIndex="02"/>
                        <SubObject defaultValue="15" accessType="rw" dataType="0007" objectType="7" name="Threshold_U32" subIndex="03"/>
                    </Object>
                    <Object dataType="0002" objectType="9" name="DLL_CNCRCError_REC" index="1C0F">
                        <SubObject defaultValue="3" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject accessType="rw" dataType="0007" objectType="7" name="CumulativeCnt_U32" subIndex="01"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="ThresholdCnt_U32" subIndex="02"/>
                        <SubObject defaultValue="15" accessType="rw" dataType="0007" objectType="7" name="Threshold_U32" subIndex="03"/>
                    </Object>
                    <Object accessType="rw" dataType="0007" objectType="7" name="DLL_CNLossOfLinkCum_U32" index="1C10"/>
                    <Object defaultValue="100000" accessType="rw" dataType="0007" objectType="7" name="DLL_LossOfFrameTolerance_U32" index="1C14"/>
                    <Object objectType="9" name="NWL_IpAddrTable_0h_REC" index="1E40">
                        <SubObject defaultValue="5" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject defaultValue="0" accessType="ro" dataType="0006" objectType="7" name="IfIndex_U16" subIndex="01"/>
                        <SubObject actualValue="192.168.100.4" defaultValue="192.168.100.1" accessType="rw" dataType="0402" objectType="7" name="Addr_IPAD" subIndex="02"/>
                        <SubObject defaultValue="255.255.255.0" accessType="rw" dataType="0402" objectType="7" name="NetMask_IPAD" subIndex="03"/>
                        <SubObject defaultValue="0" accessType="ro" dataType="0006" objectType="7" name="ReasmMaxSize_U16" subIndex="04"/>
                        <SubObject defaultValue="192.168.100.254" accessType="rw" dataType="0402" objectType="7" name="DefaultGateway_IPAD" subIndex="05"/>
                    </Object>
                    <Object objectType="9" name="NWL_IpGroup_REC" index="1E4A">
                        <SubObject defaultValue="3" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject defaultValue="False" accessType="rw" dataType="0001" objectType="7" name="Forwarding_BOOL" subIndex="01"/>
                        <SubObject defaultValue="64" accessType="rw" dataType="0006" objectType="7" name="DefaultTTL_U16" subIndex="02"/>
                        <SubObject defaultValue="0" accessType="ro" dataType="0007" objectType="7" name="ForwardDatagrams_U32" subIndex="03"/>
                    </Object>
                    <Object dataType="000F" objectType="8" name="PDL_DownloadProgData_ADOM" index="1F50">
                        <SubObject defaultValue="1" accessType="rw" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject accessType="rw" dataType="000F" objectType="7" name="Program_DOM" subIndex="01"/>
                    </Object>
                    <Object dataType="0005" objectType="8" name="PDL_ProgCtrl_AU8" index="1F51">
                        <SubObject defaultValue="1" accessType="rw" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject defaultValue="1" accessType="rw" dataType="0005" objectType="7" name="ProgCtrl_U8" subIndex="01"/>
                    </Object>
                    <Object objectType="9" name="PDL_LocVerApplSw_REC" index="1F52">
                        <SubObject defaultValue="2" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="ApplSwDate_U32" subIndex="01"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="ApplSwTime_U32" subIndex="02"/>
                    </Object>
                    <Object dataType="0007" objectType="8" name="NMT_NodeAssignment_AU32" index="1F81">
                        <SubObject defaultValue="254" accessType="rw" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="01"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="02"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="03"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="04"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="05"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="06"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="07"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="08"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="09"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="0A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="0B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="0C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="0D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="0E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="0F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="10"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="11"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="12"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="13"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="14"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="15"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="16"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="17"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="18"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="19"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="1A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="1B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="1C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="1D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="1E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="1F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="20"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="21"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="22"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="23"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="24"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="25"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="26"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="27"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="28"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="29"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="2A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="2B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="2C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="2D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="2E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="2F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="30"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="31"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="32"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="33"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="34"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="35"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="36"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="37"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="38"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="39"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="3A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="3B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="3C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="3D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="3E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="3F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="40"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="41"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="42"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="43"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="44"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="45"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="46"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="47"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="48"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="49"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="4A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="4B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="4C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="4D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="4E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="4F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="50"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="51"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="52"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="53"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="54"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="55"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="56"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="57"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="58"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="59"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="5A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="5B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="5C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="5D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="5E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="5F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="60"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="61"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="62"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="63"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="64"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="65"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="66"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="67"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="68"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="69"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="6A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="6B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="6C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="6D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="6E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="6F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="70"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="71"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="72"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="73"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="74"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="75"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="76"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="77"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="78"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="79"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="7A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="7B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="7C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="7D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="7E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="7F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="80"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="81"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="82"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="83"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="84"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="85"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="86"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="87"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="88"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="89"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="8A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="8B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="8C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="8D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="8E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="8F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="90"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="91"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="92"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="93"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="94"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="95"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="96"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="97"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="98"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="99"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="9A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="9B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="9C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="9D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="9E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="9F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="A0"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="A1"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="A2"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="A3"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="A4"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="A5"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="A6"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="A7"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="A8"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="A9"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="AA"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="AB"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="AC"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="AD"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="AE"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="AF"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="B0"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="B1"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="B2"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="B3"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="B4"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="B5"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="B6"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="B7"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="B8"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="B9"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="BA"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="BB"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="BC"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="BD"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="BE"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="BF"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="C0"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="C1"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="C2"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="C3"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="C4"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="C5"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="C6"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="C7"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="C8"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="C9"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="CA"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="CB"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="CC"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="CD"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="CE"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="CF"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="D0"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="D1"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="D2"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="D3"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="D4"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="D5"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="D6"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="D7"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="D8"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="D9"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="DA"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="DB"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="DC"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="DD"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="DE"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="DF"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="E0"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="E1"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="E2"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="E3"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="E4"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="E5"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="E6"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="E7"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="E8"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="E9"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="EA"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="EB"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="EC"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="ED"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="EE"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="EF"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="F0"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="F1"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="F2"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="F3"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="F4"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="F5"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="F6"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="F7"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="F8"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="F9"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="FA"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="FB"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="FC"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="FD"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="CNAssignment" subIndex="FE"/>
                    </Object>
                    <Object defaultValue="0xC7" accessType="const" dataType="0007" objectType="7" name="NMT_FeatureFlags_U32" index="1F82"/>
                    <Object defaultValue="0x20" accessType="const" dataType="0005" objectType="7" name="NMT_EPLVersion_U8" index="1F83"/>
                    <Object accessType="ro" dataType="0005" objectType="7" name="NMT_CurrNMTState_U8" index="1F8C"/>
                    <Object objectType="9" name="NMT_EPLNodeID_REC" index="1F93">
                        <SubObject defaultValue="2" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="NodeID_U8" subIndex="01"/>
                        <SubObject accessType="ro" dataType="0001" objectType="7" name="NodeIDByHW_BOOL" subIndex="02"/>
                    </Object>
                    <Object objectType="9" name="NMT_CycleTiming_REC" index="1F98">
                        <SubObject defaultValue="8" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject defaultValue="1490" accessType="const" dataType="0006" objectType="7" name="IsochrTxMaxPayload_U16" subIndex="01"/>
                        <SubObject defaultValue="1490" accessType="const" dataType="0006" objectType="7" name="IsochrRxMaxPayload_U16" subIndex="02"/>
                        <SubObject defaultValue="2000" accessType="const" dataType="0007" objectType="7" name="PResMaxLatency_U32" subIndex="03"/>
                        <SubObject actualValue="0x0000" accessType="rw" dataType="0006" objectType="7" name="PReqActPayload_U16" subIndex="04"/>
                        <SubObject actualValue="0x0000" accessType="rw" dataType="0006" objectType="7" name="PResActPayload_U16" subIndex="05"/>
                        <SubObject defaultValue="2000" accessType="const" dataType="0007" objectType="7" name="ASndMaxLatency_U32" subIndex="06"/>
                        <SubObject actualValue="0x00" accessType="rw" dataType="0005" objectType="7" name="MultiplCycleCnt_U8" subIndex="07"/>
                        <SubObject defaultValue="1500" accessType="rw" dataType="0006" objectType="7" name="AsyncMTUSize_U16" subIndex="08"/>
                    </Object>
                    <Object defaultValue="5000000" accessType="rw" dataType="0007" objectType="7" name="NMT_CNBasicEthernetTimeout_U32" index="1F99"/>
                    <Object accessType="rw" dataType="0009" objectType="7" name="NMT_HostName_VSTR" index="1F9A"/>
                    <Object dataType="0005" objectType="8" name="NMT_MultipleCycleAssign_AU8" index="1F9B">
                        <SubObject defaultValue="254" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="01"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="02"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="03"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="04"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="05"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="06"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="07"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="08"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="09"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="0A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="0B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="0C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="0D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="0E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="0F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="10"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="11"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="12"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="13"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="14"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="15"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="16"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="17"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="18"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="19"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="1A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="1B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="1C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="1D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="1E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="1F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="20"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="21"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="22"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="23"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="24"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="25"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="26"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="27"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="28"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="29"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="2A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="2B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="2C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="2D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="2E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="2F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="30"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="31"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="32"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="33"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="34"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="35"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="36"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="37"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="38"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="39"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="3A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="3B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="3C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="3D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="3E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="3F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="40"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="41"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="42"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="43"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="44"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="45"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="46"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="47"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="48"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="49"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="4A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="4B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="4C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="4D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="4E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="4F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="50"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="51"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="52"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="53"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="54"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="55"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="56"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="57"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="58"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="59"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="5A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="5B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="5C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="5D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="5E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="5F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="60"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="61"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="62"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="63"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="64"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="65"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="66"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="67"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="68"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="69"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="6A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="6B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="6C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="6D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="6E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="6F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="70"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="71"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="72"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="73"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="74"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="75"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="76"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="77"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="78"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="79"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="7A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="7B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="7C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="7D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="7E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="7F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="80"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="81"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="82"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="83"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="84"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="85"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="86"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="87"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="88"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="89"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="8A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="8B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="8C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="8D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="8E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="8F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="90"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="91"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="92"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="93"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="94"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="95"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="96"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="97"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="98"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="99"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="9A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="9B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="9C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="9D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="9E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="9F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="A0"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="A1"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="A2"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="A3"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="A4"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="A5"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="A6"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="A7"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="A8"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="A9"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="AA"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="AB"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="AC"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="AD"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="AE"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="AF"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="B0"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="B1"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="B2"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="B3"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="B4"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="B5"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="B6"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="B7"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="B8"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="B9"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="BA"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="BB"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="BC"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="BD"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="BE"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="BF"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="C0"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="C1"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="C2"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="C3"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="C4"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="C5"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="C6"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="C7"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="C8"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="C9"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="CA"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="CB"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="CC"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="CD"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="CE"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="CF"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="D0"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="D1"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="D2"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="D3"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="D4"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="D5"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="D6"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="D7"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="D8"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="D9"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="DA"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="DB"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="DC"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="DD"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="DE"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="DF"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="E0"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="E1"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="E2"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="E3"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="E4"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="E5"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="E6"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="E7"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="E8"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="E9"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="EA"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="EB"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="EC"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="ED"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="EE"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="EF"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="F0"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="F1"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="F2"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="F3"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="F4"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="F5"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="F6"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="F7"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="F8"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="F9"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="FA"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="FB"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="FC"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="FD"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="CycleNo" subIndex="FE"/>
                    </Object>
                    <Object defaultValue="255" accessType="rw" dataType="0005" objectType="7" name="NMT_ResetCmd_U8" index="1F9E"/>
                    <Object dataType="0005" objectType="8" name="IO_DigitalInput_AU8" index="6000">
                        <SubObject defaultValue="254" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="01"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="02"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="03"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="04"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="05"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="06"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="07"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="08"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="09"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="0A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="0B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="0C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="0D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="0E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="0F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="10"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="11"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="12"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="13"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="14"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="15"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="16"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="17"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="18"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="19"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="1A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="1B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="1C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="1D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="1E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="1F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="20"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="21"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="22"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="23"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="24"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="25"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="26"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="27"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="28"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="29"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="2A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="2B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="2C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="2D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="2E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="2F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="30"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="31"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="32"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="33"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="34"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="35"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="36"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="37"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="38"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="39"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="3A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="3B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="3C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="3D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="3E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="3F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="40"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="41"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="42"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="43"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="44"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="45"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="46"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="47"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="48"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="49"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="4A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="4B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="4C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="4D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="4E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="4F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="50"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="51"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="52"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="53"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="54"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="55"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="56"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="57"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="58"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="59"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="5A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="5B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="5C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="5D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="5E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="5F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="60"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="61"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="62"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="63"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="64"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="65"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="66"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="67"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="68"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="69"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="6A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="6B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="6C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="6D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="6E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="6F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="70"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="71"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="72"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="73"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="74"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="75"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="76"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="77"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="78"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="79"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="7A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="7B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="7C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="7D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="7E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="7F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="80"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="81"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="82"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="83"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="84"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="85"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="86"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="87"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="88"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="89"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="8A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="8B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="8C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="8D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="8E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="8F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="90"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="91"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="92"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="93"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="94"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="95"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="96"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="97"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="98"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="99"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="9A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="9B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="9C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="9D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="9E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="9F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="A0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="A1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="A2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="A3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="A4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="A5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="A6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="A7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="A8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="A9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="AA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="AB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="AC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="AD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="AE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="AF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="B0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="B1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="B2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="B3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="B4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="B5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="B6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="B7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="B8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="B9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="BA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="BB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="BC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="BD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="BE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="BF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="C0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="C1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="C2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="C3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="C4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="C5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="C6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="C7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="C8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="C9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="CA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="CB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="CC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="CD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="CE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="CF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="D0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="D1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="D2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="D3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="D4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="D5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="D6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="D7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="D8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="D9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="DA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="DB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="DC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="DD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="DE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="DF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="E0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="E1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="E2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="E3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="E4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="E5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="E6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="E7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="E8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="E9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="EA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="EB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="EC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="ED"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="EE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="EF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="F0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="F1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="F2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="F3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="F4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="F5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="F6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="F7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="F8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="F9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="FA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="FB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="FC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="FD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0005" objectType="7" name="IO_DigitalInput" subIndex="FE"/>
                    </Object>
                    <Object dataType="0005" objectType="8" name="IO_DigitalOutput_AU8" index="6200">
                        <SubObject defaultValue="254" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="01"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="02"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="03"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="04"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="05"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="06"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="07"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="08"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="09"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="0A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="0B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="0C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="0D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="0E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="0F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="10"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="11"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="12"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="13"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="14"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="15"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="16"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="17"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="18"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="19"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="1A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="1B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="1C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="1D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="1E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="1F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="20"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="21"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="22"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="23"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="24"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="25"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="26"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="27"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="28"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="29"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="2A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="2B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="2C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="2D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="2E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="2F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="30"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="31"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="32"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="33"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="34"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="35"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="36"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="37"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="38"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="39"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="3A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="3B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="3C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="3D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="3E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="3F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="40"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="41"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="42"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="43"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="44"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="45"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="46"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="47"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="48"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="49"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="4A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="4B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="4C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="4D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="4E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="4F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="50"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="51"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="52"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="53"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="54"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="55"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="56"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="57"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="58"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="59"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="5A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="5B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="5C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="5D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="5E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="5F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="60"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="61"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="62"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="63"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="64"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="65"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="66"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="67"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="68"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="69"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="6A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="6B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="6C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="6D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="6E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="6F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="70"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="71"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="72"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="73"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="74"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="75"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="76"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="77"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="78"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="79"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="7A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="7B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="7C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="7D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="7E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="7F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="80"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="81"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="82"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="83"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="84"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="85"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="86"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="87"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="88"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="89"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="8A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="8B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="8C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="8D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="8E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="8F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="90"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="91"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="92"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="93"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="94"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="95"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="96"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="97"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="98"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="99"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="9A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="9B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="9C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="9D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="9E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="9F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="A0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="A1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="A2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="A3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="A4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="A5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="A6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="A7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="A8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="A9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="AA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="AB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="AC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="AD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="AE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="AF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="B0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="B1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="B2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="B3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="B4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="B5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="B6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="B7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="B8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="B9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="BA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="BB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="BC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="BD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="BE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="BF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="C0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="C1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="C2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="C3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="C4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="C5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="C6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="C7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="C8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="C9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="CA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="CB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="CC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="CD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="CE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="CF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="D0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="D1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="D2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="D3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="D4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="D5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="D6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="D7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="D8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="D9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="DA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="DB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="DC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="DD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="DE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="DF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="E0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="E1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="E2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="E3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="E4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="E5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="E6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="E7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="E8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="E9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="EA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="EB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="EC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="ED"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="EE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="EF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="F0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="F1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="F2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="F3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="F4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="F5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="F6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="F7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="F8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="F9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="FA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="FB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="FC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="FD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="IO_DigitalOutput" subIndex="FE"/>
                    </Object>
                    <Object dataType="0002" objectType="8" name="IO_AnalogInput_8Bit_AU8" index="6400">
                        <SubObject defaultValue="254" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="01"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="02"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="03"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="04"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="05"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="06"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="07"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="08"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="09"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="0A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="0B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="0C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="0D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="0E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="0F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="10"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="11"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="12"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="13"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="14"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="15"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="16"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="17"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="18"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="19"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="1A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="1B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="1C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="1D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="1E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="1F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="20"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="21"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="22"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="23"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="24"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="25"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="26"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="27"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="28"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="29"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="2A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="2B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="2C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="2D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="2E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="2F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="30"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="31"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="32"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="33"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="34"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="35"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="36"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="37"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="38"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="39"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="3A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="3B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="3C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="3D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="3E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="3F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="40"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="41"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="42"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="43"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="44"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="45"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="46"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="47"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="48"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="49"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="4A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="4B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="4C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="4D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="4E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="4F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="50"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="51"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="52"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="53"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="54"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="55"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="56"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="57"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="58"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="59"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="5A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="5B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="5C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="5D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="5E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="5F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="60"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="61"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="62"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="63"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="64"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="65"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="66"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="67"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="68"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="69"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="6A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="6B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="6C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="6D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="6E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="6F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="70"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="71"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="72"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="73"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="74"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="75"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="76"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="77"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="78"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="79"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="7A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="7B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="7C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="7D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="7E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="7F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="80"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="81"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="82"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="83"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="84"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="85"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="86"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="87"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="88"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="89"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="8A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="8B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="8C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="8D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="8E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="8F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="90"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="91"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="92"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="93"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="94"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="95"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="96"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="97"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="98"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="99"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="9A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="9B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="9C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="9D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="9E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="9F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="A0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="A1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="A2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="A3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="A4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="A5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="A6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="A7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="A8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="A9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="AA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="AB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="AC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="AD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="AE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="AF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="B0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="B1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="B2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="B3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="B4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="B5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="B6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="B7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="B8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="B9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="BA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="BB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="BC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="BD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="BE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="BF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="C0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="C1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="C2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="C3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="C4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="C5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="C6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="C7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="C8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="C9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="CA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="CB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="CC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="CD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="CE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="CF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="D0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="D1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="D2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="D3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="D4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="D5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="D6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="D7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="D8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="D9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="DA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="DB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="DC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="DD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="DE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="DF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="E0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="E1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="E2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="E3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="E4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="E5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="E6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="E7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="E8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="E9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="EA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="EB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="EC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="ED"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="EE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="EF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="F0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="F1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="F2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="F3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="F4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="F5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="F6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="F7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="F8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="F9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="FA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="FB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="FC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="FD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0002" objectType="7" name="IO_AnalogInput_8Bit" subIndex="FE"/>
                    </Object>
                    <Object dataType="0003" objectType="8" name="IO_AnalogInput_16Bit_AU8" index="6401">
                        <SubObject defaultValue="254" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="01"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="02"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="03"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="04"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="05"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="06"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="07"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="08"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="09"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="0A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="0B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="0C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="0D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="0E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="0F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="10"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="11"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="12"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="13"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="14"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="15"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="16"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="17"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="18"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="19"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="1A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="1B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="1C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="1D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="1E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="1F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="20"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="21"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="22"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="23"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="24"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="25"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="26"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="27"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="28"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="29"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="2A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="2B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="2C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="2D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="2E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="2F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="30"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="31"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="32"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="33"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="34"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="35"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="36"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="37"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="38"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="39"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="3A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="3B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="3C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="3D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="3E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="3F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="40"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="41"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="42"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="43"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="44"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="45"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="46"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="47"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="48"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="49"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="4A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="4B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="4C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="4D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="4E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="4F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="50"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="51"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="52"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="53"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="54"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="55"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="56"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="57"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="58"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="59"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="5A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="5B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="5C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="5D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="5E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="5F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="60"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="61"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="62"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="63"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="64"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="65"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="66"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="67"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="68"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="69"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="6A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="6B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="6C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="6D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="6E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="6F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="70"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="71"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="72"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="73"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="74"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="75"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="76"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="77"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="78"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="79"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="7A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="7B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="7C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="7D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="7E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="7F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="80"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="81"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="82"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="83"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="84"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="85"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="86"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="87"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="88"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="89"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="8A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="8B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="8C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="8D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="8E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="8F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="90"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="91"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="92"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="93"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="94"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="95"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="96"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="97"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="98"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="99"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="9A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="9B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="9C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="9D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="9E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="9F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="A0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="A1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="A2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="A3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="A4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="A5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="A6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="A7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="A8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="A9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="AA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="AB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="AC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="AD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="AE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="AF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="B0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="B1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="B2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="B3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="B4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="B5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="B6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="B7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="B8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="B9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="BA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="BB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="BC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="BD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="BE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="BF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="C0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="C1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="C2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="C3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="C4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="C5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="C6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="C7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="C8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="C9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="CA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="CB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="CC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="CD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="CE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="CF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="D0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="D1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="D2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="D3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="D4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="D5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="D6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="D7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="D8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="D9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="DA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="DB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="DC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="DD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="DE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="DF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="E0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="E1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="E2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="E3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="E4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="E5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="E6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="E7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="E8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="E9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="EA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="EB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="EC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="ED"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="EE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="EF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="F0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="F1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="F2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="F3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="F4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="F5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="F6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="F7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="F8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="F9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="FA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="FB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="FC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="FD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0003" objectType="7" name="IO_AnalogInput_16Bit" subIndex="FE"/>
                    </Object>
                    <Object dataType="0004" objectType="8" name="IO_AnalogInput_32Bit_AU8" index="6402">
                        <SubObject defaultValue="254" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="01"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="02"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="03"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="04"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="05"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="06"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="07"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="08"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="09"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="0A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="0B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="0C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="0D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="0E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="0F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="10"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="11"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="12"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="13"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="14"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="15"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="16"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="17"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="18"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="19"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="1A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="1B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="1C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="1D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="1E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="1F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="20"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="21"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="22"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="23"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="24"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="25"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="26"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="27"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="28"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="29"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="2A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="2B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="2C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="2D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="2E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="2F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="30"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="31"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="32"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="33"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="34"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="35"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="36"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="37"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="38"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="39"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="3A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="3B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="3C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="3D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="3E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="3F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="40"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="41"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="42"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="43"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="44"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="45"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="46"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="47"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="48"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="49"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="4A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="4B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="4C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="4D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="4E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="4F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="50"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="51"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="52"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="53"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="54"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="55"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="56"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="57"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="58"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="59"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="5A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="5B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="5C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="5D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="5E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="5F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="60"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="61"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="62"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="63"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="64"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="65"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="66"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="67"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="68"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="69"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="6A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="6B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="6C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="6D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="6E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="6F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="70"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="71"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="72"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="73"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="74"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="75"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="76"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="77"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="78"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="79"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="7A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="7B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="7C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="7D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="7E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="7F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="80"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="81"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="82"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="83"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="84"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="85"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="86"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="87"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="88"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="89"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="8A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="8B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="8C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="8D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="8E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="8F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="90"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="91"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="92"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="93"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="94"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="95"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="96"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="97"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="98"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="99"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="9A"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="9B"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="9C"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="9D"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="9E"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="9F"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="A0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="A1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="A2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="A3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="A4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="A5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="A6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="A7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="A8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="A9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="AA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="AB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="AC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="AD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="AE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="AF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="B0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="B1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="B2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="B3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="B4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="B5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="B6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="B7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="B8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="B9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="BA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="BB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="BC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="BD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="BE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="BF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="C0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="C1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="C2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="C3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="C4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="C5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="C6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="C7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="C8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="C9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="CA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="CB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="CC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="CD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="CE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="CF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="D0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="D1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="D2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="D3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="D4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="D5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="D6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="D7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="D8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="D9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="DA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="DB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="DC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="DD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="DE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="DF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="E0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="E1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="E2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="E3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="E4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="E5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="E6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="E7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="E8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="E9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="EA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="EB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="EC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="ED"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="EE"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="EF"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="F0"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="F1"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="F2"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="F3"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="F4"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="F5"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="F6"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="F7"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="F8"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="F9"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="FA"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="FB"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="FC"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="FD"/>
                        <SubObject PDOmapping="TPDO" defaultValue="0" accessType="ro" dataType="0004" objectType="7" name="IO_AnalogInput_32Bit" subIndex="FE"/>
                    </Object>
                    <Object dataType="0002" objectType="8" name="IO_AnalogOutput_8Bit_AU8" index="6410">
                        <SubObject defaultValue="254" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="01"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="02"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="03"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="04"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="05"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="06"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="07"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="08"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="09"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="0A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="0B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="0C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="0D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="0E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="0F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="10"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="11"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="12"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="13"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="14"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="15"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="16"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="17"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="18"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="19"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="1A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="1B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="1C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="1D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="1E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="1F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="20"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="21"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="22"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="23"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="24"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="25"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="26"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="27"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="28"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="29"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="2A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="2B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="2C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="2D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="2E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="2F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="30"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="31"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="32"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="33"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="34"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="35"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="36"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="37"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="38"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="39"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="3A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="3B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="3C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="3D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="3E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="3F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="40"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="41"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="42"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="43"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="44"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="45"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="46"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="47"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="48"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="49"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="4A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="4B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="4C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="4D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="4E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="4F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="50"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="51"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="52"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="53"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="54"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="55"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="56"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="57"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="58"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="59"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="5A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="5B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="5C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="5D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="5E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="5F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="60"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="61"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="62"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="63"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="64"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="65"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="66"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="67"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="68"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="69"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="6A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="6B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="6C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="6D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="6E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="6F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="70"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="71"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="72"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="73"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="74"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="75"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="76"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="77"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="78"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="79"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="7A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="7B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="7C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="7D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="7E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="7F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="80"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="81"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="82"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="83"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="84"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="85"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="86"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="87"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="88"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="89"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="8A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="8B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="8C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="8D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="8E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="8F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="90"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="91"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="92"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="93"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="94"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="95"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="96"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="97"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="98"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="99"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="9A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="9B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="9C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="9D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="9E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="9F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="A0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="A1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="A2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="A3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="A4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="A5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="A6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="A7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="A8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="A9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="AA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="AB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="AC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="AD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="AE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="AF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="B0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="B1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="B2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="B3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="B4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="B5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="B6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="B7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="B8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="B9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="BA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="BB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="BC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="BD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="BE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="BF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="C0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="C1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="C2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="C3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="C4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="C5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="C6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="C7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="C8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="C9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="CA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="CB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="CC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="CD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="CE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="CF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="D0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="D1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="D2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="D3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="D4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="D5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="D6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="D7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="D8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="D9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="DA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="DB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="DC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="DD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="DE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="DF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="E0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="E1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="E2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="E3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="E4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="E5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="E6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="E7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="E8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="E9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="EA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="EB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="EC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="ED"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="EE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="EF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="F0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="F1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="F2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="F3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="F4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="F5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="F6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="F7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="F8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="F9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="FA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="FB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="FC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="FD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0002" objectType="7" name="IO_AnalogOutput_8Bit" subIndex="FE"/>
                    </Object>
                    <Object dataType="0003" objectType="8" name="IO_AnalogOutput_16Bit_AU8" index="6411">
                        <SubObject defaultValue="254" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="01"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="02"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="03"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="04"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="05"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="06"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="07"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="08"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="09"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="0A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="0B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="0C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="0D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="0E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="0F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="10"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="11"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="12"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="13"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="14"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="15"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="16"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="17"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="18"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="19"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="1A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="1B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="1C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="1D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="1E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="1F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="20"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="21"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="22"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="23"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="24"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="25"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="26"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="27"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="28"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="29"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="2A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="2B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="2C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="2D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="2E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="2F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="30"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="31"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="32"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="33"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="34"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="35"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="36"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="37"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="38"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="39"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="3A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="3B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="3C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="3D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="3E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="3F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="40"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="41"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="42"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="43"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="44"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="45"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="46"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="47"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="48"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="49"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="4A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="4B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="4C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="4D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="4E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="4F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="50"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="51"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="52"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="53"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="54"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="55"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="56"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="57"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="58"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="59"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="5A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="5B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="5C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="5D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="5E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="5F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="60"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="61"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="62"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="63"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="64"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="65"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="66"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="67"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="68"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="69"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="6A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="6B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="6C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="6D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="6E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="6F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="70"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="71"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="72"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="73"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="74"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="75"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="76"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="77"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="78"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="79"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="7A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="7B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="7C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="7D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="7E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="7F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="80"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="81"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="82"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="83"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="84"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="85"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="86"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="87"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="88"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="89"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="8A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="8B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="8C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="8D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="8E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="8F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="90"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="91"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="92"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="93"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="94"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="95"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="96"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="97"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="98"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="99"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="9A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="9B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="9C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="9D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="9E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="9F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="A0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="A1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="A2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="A3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="A4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="A5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="A6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="A7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="A8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="A9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="AA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="AB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="AC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="AD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="AE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="AF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="B0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="B1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="B2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="B3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="B4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="B5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="B6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="B7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="B8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="B9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="BA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="BB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="BC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="BD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="BE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="BF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="C0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="C1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="C2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="C3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="C4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="C5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="C6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="C7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="C8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="C9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="CA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="CB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="CC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="CD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="CE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="CF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="D0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="D1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="D2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="D3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="D4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="D5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="D6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="D7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="D8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="D9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="DA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="DB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="DC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="DD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="DE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="DF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="E0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="E1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="E2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="E3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="E4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="E5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="E6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="E7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="E8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="E9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="EA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="EB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="EC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="ED"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="EE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="EF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="F0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="F1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="F2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="F3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="F4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="F5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="F6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="F7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="F8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="F9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="FA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="FB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="FC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="FD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0003" objectType="7" name="IO_AnalogOutput_16Bit" subIndex="FE"/>
                    </Object>
                    <Object dataType="0004" objectType="8" name="IO_AnalogOutput_32Bit_AU8" index="6412">
                        <SubObject defaultValue="254" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="01"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="02"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="03"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="04"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="05"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="06"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="07"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="08"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="09"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="0A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="0B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="0C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="0D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="0E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="0F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="10"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="11"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="12"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="13"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="14"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="15"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="16"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="17"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="18"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="19"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="1A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="1B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="1C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="1D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="1E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="1F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="20"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="21"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="22"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="23"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="24"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="25"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="26"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="27"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="28"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="29"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="2A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="2B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="2C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="2D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="2E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="2F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="30"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="31"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="32"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="33"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="34"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="35"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="36"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="37"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="38"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="39"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="3A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="3B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="3C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="3D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="3E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="3F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="40"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="41"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="42"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="43"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="44"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="45"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="46"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="47"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="48"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="49"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="4A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="4B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="4C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="4D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="4E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="4F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="50"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="51"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="52"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="53"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="54"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="55"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="56"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="57"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="58"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="59"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="5A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="5B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="5C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="5D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="5E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="5F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="60"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="61"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="62"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="63"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="64"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="65"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="66"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="67"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="68"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="69"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="6A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="6B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="6C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="6D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="6E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="6F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="70"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="71"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="72"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="73"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="74"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="75"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="76"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="77"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="78"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="79"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="7A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="7B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="7C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="7D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="7E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="7F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="80"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="81"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="82"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="83"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="84"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="85"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="86"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="87"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="88"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="89"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="8A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="8B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="8C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="8D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="8E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="8F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="90"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="91"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="92"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="93"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="94"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="95"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="96"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="97"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="98"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="99"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="9A"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="9B"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="9C"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="9D"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="9E"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="9F"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="A0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="A1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="A2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="A3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="A4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="A5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="A6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="A7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="A8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="A9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="AA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="AB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="AC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="AD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="AE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="AF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="B0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="B1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="B2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="B3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="B4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="B5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="B6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="B7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="B8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="B9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="BA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="BB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="BC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="BD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="BE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="BF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="C0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="C1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="C2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="C3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="C4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="C5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="C6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="C7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="C8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="C9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="CA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="CB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="CC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="CD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="CE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="CF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="D0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="D1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="D2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="D3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="D4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="D5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="D6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="D7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="D8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="D9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="DA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="DB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="DC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="DD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="DE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="DF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="E0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="E1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="E2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="E3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="E4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="E5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="E6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="E7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="E8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="E9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="EA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="EB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="EC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="ED"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="EE"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="EF"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="F0"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="F1"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="F2"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="F3"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="F4"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="F5"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="F6"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="F7"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="F8"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="F9"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="FA"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="FB"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="FC"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="FD"/>
                        <SubObject PDOmapping="RPDO" defaultValue="0" accessType="rw" dataType="0004" objectType="7" name="IO_AnalogOutput_32Bit" subIndex="FE"/>
                    </Object>
                    <Object objectType="9" name="X2X_CycleConfig_REC" index="2000">
                        <SubObject defaultValue="12" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject actualValue="1" accessType="rw" dataType="0005" objectType="7" name="X2X_CycleMode_U8" subIndex="01"/>
                        <SubObject actualValue="1000" accessType="rw" lowLimit="100" dataType="0007" objectType="7" name="X2X_CycleTimeUs_U32" subIndex="03"/>
                        <SubObject actualValue="0" accessType="rw" highLimit="1" lowLimit="0" dataType="0005" objectType="7" name="X2X_SyncMode_U8" subIndex="04"/>
                        <SubObject actualValue="22" accessType="rw" highLimit="1490" lowLimit="10" dataType="0006" objectType="7" name="X2X_SyncOutSize_U16" subIndex="06"/>
                        <SubObject actualValue="22" accessType="rw" highLimit="1490" lowLimit="10" dataType="0006" objectType="7" name="X2X_SyncInSize_U16" subIndex="07"/>
                        <SubObject actualValue="526" accessType="rw" highLimit="800" lowLimit="20" dataType="0006" objectType="7" name="X2X_AsyncSize_U16" subIndex="08"/>
                        <SubObject actualValue="35" accessType="rw" highLimit="253" lowLimit="1" dataType="0005" objectType="7" name="X2X_PhysicalSlots_U8" subIndex="09"/>
                        <SubObject defaultValue="1500000" accessType="rw" dataType="0007" objectType="7" name="X2X_StartupDelayUs_U32" subIndex="0A"/>
                        <SubObject actualValue="1" accessType="rw" dataType="0001" objectType="7" name="X2X_CfgModeUploadDisable_BOOL" subIndex="0B"/>
                        <SubObject accessType="rw" dataType="0006" objectType="7" name="X2X_ResponseMinUs_U16" subIndex="0C"/>
                        <SubObject accessType="rw" dataType="0006" objectType="7" name="X2X_ResponseMaxUs_U16" subIndex="0D"/>
                        <SubObject accessType="rw" dataType="0006" objectType="7" name="X2X_ResponseAverageUs_U16" subIndex="0E"/>
                    </Object>
                    <Object objectType="9" name="X2X_OutputConfig_REC " index="2001">
                        <SubObject defaultValue="4" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject defaultValue="0" accessType="rw" highLimit="1" lowLimit="0" dataType="0005" objectType="7" name="X2X_OutputControl_U8" subIndex="01"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="X2X_OutputOffDelayUs_U32" subIndex="02"/>
                        <SubObject defaultValue="10" accessType="rw" dataType="0005" objectType="7" name="X2X_PollReady0_Limit_U8" subIndex="05"/>
                        <SubObject defaultValue="1000" accessType="rw" dataType="0006" objectType="7" name="X2X_PollReady0_InhibitTimeMs_U16" subIndex="06"/>
                    </Object>
                    <Object objectType="9" name="DIA_StatisticErrorCount_REC" index="2011">
                        <SubObject defaultValue="29" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_Total_U32" subIndex="01"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_EthRxLost_U32" subIndex="02"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_EthRxOversize_U32" subIndex="03"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_EthRxCrcError_U32" subIndex="04"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_EthRxOverflow_U32" subIndex="05"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_EthTxCollision_U32" subIndex="06"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_Phy7LinkLoss_U32" subIndex="08"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_Phy8LinkLoss_U32" subIndex="09"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_Phy1LinkLoss_U32" subIndex="0A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_Phy2LinkLoss_U32" subIndex="0B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_Phy3LinkLoss_U32" subIndex="0C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_Phy4LinkLoss_U32" subIndex="0D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_Phy5LinkLoss_U32" subIndex="0E"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_Phy6LinkLoss_U32" subIndex="0F"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_XlkCycleCount_U32" subIndex="10"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_XlkBreakCount_U32" subIndex="11"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_XlkSyncErrorCount_U32" subIndex="12"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_XlkSyncBusyErrorCount_U32" subIndex="13"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_XlkSyncNoRxErrorCount_U32" subIndex="14"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_XlkSyncFormatErrorCount_U32" subIndex="15"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_XlkSyncPendingErrorCount_U32" subIndex="16"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_XlkAsynErrorCount_U32" subIndex="17"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_XlkAsynBusyErrorCount_U32" subIndex="18"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_XlkAsynNoRxErrorCount_U32" subIndex="19"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_XlkAsynFormatErrorCount_U32 " subIndex="1A"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_XlkAsynPendingErrorCount_U32" subIndex="1B"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_XlkModuleLostWhileOperational_U32" subIndex="1C"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_XlkModuleNewWhileOperational_U32 " subIndex="1D"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="DIA_RamAccessViolation_U32" subIndex="20"/>
                    </Object>
                    <Object actualValue="5" accessType="rw" dataType="0005" objectType="7" name="MOD_CfgCount_U8" index="20A0"/>
                    <Object accessType="ro" dataType="0005" objectType="7" name="MOD_SlotCount_U8" index="20A1"/>
                    <Object dataType="001B" objectType="8" name="MOD_NetworkStatus_AU64" index="20B0">
                        <SubObject defaultValue="32" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="01"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="02"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="03"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="04"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="05"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="06"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="07"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="08"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="09"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="0A"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="0B"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="0C"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="0D"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="0E"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="0F"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="10"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="11"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="12"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="13"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="14"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="15"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="16"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="17"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="18"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="19"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="1A"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="1B"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="1C"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="1D"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="1E"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="1F"/>
                        <SubObject PDOmapping="no" accessType="ro" dataType="001B" objectType="7" name="MOD_NetworkStatus_AU64" subIndex="20"/>
                    </Object>
                    <Object objectType="9" name="BC_Internal_REC" index="20F0">
                        <SubObject defaultValue="19" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="BC_BootFpgaVersion_U16" subIndex="01"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="BC_BootFirmwareVersion_U16" subIndex="02"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="BC_UpgradeFpgaVersion_U16" subIndex="03"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="BC_UpgradeFirmwareVersion_U16" subIndex="04"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="BC_NodeNumber_U8" subIndex="06"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="BC_MemFree_U32" subIndex="07"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="BC_CntNvmStore_U16" subIndex="0A"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="BC_CntNvmInconsistent_U16" subIndex="0B"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="BC_CntNvmVersionChange_U16" subIndex="0C"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="BC_CntNvmReload_U16" subIndex="0D"/>
                        <SubObject PDOmapping="TPDO" accessType="ro" dataType="0005" objectType="7" name="BC_IoCycleCount_U8" subIndex="0E"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="BC_MsTime_U32" subIndex="0F"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="BC_PhysicalPorts_U8" subIndex="11"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="BC_PhysicalLink_U8" subIndex="12"/>
                        <SubObject accessType="rw" highLimit="1" lowLimit="0" dataType="0005" objectType="7" name="BC_SupportedSdoProtocols_U8" subIndex="13"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="BC_LineSpeed_U16" subIndex="14"/>
                        <SubObject accessType="rw" dataType="0007" objectType="7" name="BC_UserDataWriteEnable_U32" subIndex="15"/>
                        <SubObject defaultValue="00" accessType="rw" dataType="000F" objectType="7" name="BC_UserData_DOM" subIndex="16"/>
                        <SubObject defaultValue="0" accessType="ro" dataType="0006" objectType="7" name="BC_UserDataCountdown_U16" subIndex="17"/>
                    </Object>
                    <Object objectType="9" name="X20PS9400a" index="2100">
                        <SubObject defaultValue="22" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject actualValue="1" defaultValue="0" accessType="rw" highLimit="3" lowLimit="0" dataType="0005" objectType="7" name="MOD_CfgMode_U8" subIndex="04"/>
                        <SubObject actualValue="8076" defaultValue="0" accessType="rw" dataType="0006" objectType="7" name="MOD_RequestedHardwareId_U16" subIndex="05"/>
                        <SubObject accessType="rw" dataType="0006" objectType="7" name="MOD_RequestedVendorId_U16" subIndex="06"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_HardwareId_U16" subIndex="07"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_VendorId_U16" subIndex="08"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_Status_U16" subIndex="0A"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_NetworkStatus_U8" subIndex="0B"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_BlockMask_U8" subIndex="0C"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_BootCount_U8" subIndex="0D"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_FirmwareVersion_U16" subIndex="11"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_HardwareVariant_U16" subIndex="12"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="MOD_SerialNo_U32" subIndex="13"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_PhysicalSlotNumber_U8" subIndex="14"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_NodeSwitch_U8" subIndex="15"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="MOD_RequestedSerialNo_U32" subIndex="16"/>
                        <SubObject uniqueIDRef="UID_DOM_Index2100_Sub1E" PDOmapping="default" accessType="ro" dataType="000F" objectType="7" name="MOD_InputImage_DOM" subIndex="1E"/>
                        <SubObject PDOmapping="default" accessType="rw" dataType="000F" objectType="7" name="MOD_OutputImage_DOM" subIndex="20"/>
                        <SubObject accessType="rw" dataType="001B" objectType="7" name="MOD_AsyncRead_U64" subIndex="21"/>
                        <SubObject accessType="wo" dataType="001B" objectType="7" name="MOD_AsyncWrite_U64" subIndex="22"/>
                        <SubObject actualValue="0" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="MOD_CfgFunctionMode_U8" subIndex="5A"/>
                        <SubObject actualValue="1" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="MOD_CfgEntryCount_U8" subIndex="5B"/>
                        <SubObject actualValue="0x0000000002010001" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="64"/>
                    </Object>
                    <Object objectType="9" name="X20AI2632" index="2101">
                        <SubObject defaultValue="34" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject actualValue="1" defaultValue="0" accessType="rw" highLimit="3" lowLimit="0" dataType="0005" objectType="7" name="MOD_CfgMode_U8" subIndex="04"/>
                        <SubObject actualValue="7072" defaultValue="0" accessType="rw" dataType="0006" objectType="7" name="MOD_RequestedHardwareId_U16" subIndex="05"/>
                        <SubObject accessType="rw" dataType="0006" objectType="7" name="MOD_RequestedVendorId_U16" subIndex="06"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_HardwareId_U16" subIndex="07"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_VendorId_U16" subIndex="08"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_Status_U16" subIndex="0A"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_NetworkStatus_U8" subIndex="0B"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_BlockMask_U8" subIndex="0C"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_BootCount_U8" subIndex="0D"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_FirmwareVersion_U16" subIndex="11"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_HardwareVariant_U16" subIndex="12"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="MOD_SerialNo_U32" subIndex="13"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_PhysicalSlotNumber_U8" subIndex="14"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_NodeSwitch_U8" subIndex="15"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="MOD_RequestedSerialNo_U32" subIndex="16"/>
                        <SubObject uniqueIDRef="UID_DOM_Index2101_Sub1E" PDOmapping="default" accessType="ro" dataType="000F" objectType="7" name="MOD_InputImage_DOM" subIndex="1E"/>
                        <SubObject PDOmapping="default" accessType="rw" dataType="000F" objectType="7" name="MOD_OutputImage_DOM" subIndex="20"/>
                        <SubObject accessType="rw" dataType="001B" objectType="7" name="MOD_AsyncRead_U64" subIndex="21"/>
                        <SubObject accessType="wo" dataType="001B" objectType="7" name="MOD_AsyncWrite_U64" subIndex="22"/>
                        <SubObject actualValue="0" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="MOD_CfgFunctionMode_U8" subIndex="5A"/>
                        <SubObject actualValue="13" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="MOD_CfgEntryCount_U8" subIndex="5B"/>
                        <SubObject actualValue="0x0000000000020000" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="64"/>
                        <SubObject actualValue="0x000000C805020186" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="65"/>
                        <SubObject actualValue="0x0000001305010101" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="66"/>
                        <SubObject actualValue="0x000080000502010A" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="67"/>
                        <SubObject actualValue="0x00007FFF0502010E" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="68"/>
                        <SubObject actualValue="0x0001000005040114" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="69"/>
                        <SubObject actualValue="0x000000000504011C" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="6A"/>
                        <SubObject actualValue="0x0000000105010103" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="6B"/>
                        <SubObject actualValue="0x000001F405020106" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="6C"/>
                        <SubObject actualValue="0x0000008005010121" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="6D"/>
                        <SubObject actualValue="0x0000000005010085" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="6E"/>
                        <SubObject actualValue="0x0000000005010087" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="6F"/>
                        <SubObject actualValue="0x0000006405020186" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="70"/>
                    </Object>
                    <Object objectType="9" name="X20DI4372" index="2102">
                        <SubObject defaultValue="23" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject actualValue="1" defaultValue="0" accessType="rw" highLimit="3" lowLimit="0" dataType="0005" objectType="7" name="MOD_CfgMode_U8" subIndex="04"/>
                        <SubObject actualValue="8872" defaultValue="0" accessType="rw" dataType="0006" objectType="7" name="MOD_RequestedHardwareId_U16" subIndex="05"/>
                        <SubObject accessType="rw" dataType="0006" objectType="7" name="MOD_RequestedVendorId_U16" subIndex="06"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_HardwareId_U16" subIndex="07"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_VendorId_U16" subIndex="08"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_Status_U16" subIndex="0A"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_NetworkStatus_U8" subIndex="0B"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_BlockMask_U8" subIndex="0C"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_BootCount_U8" subIndex="0D"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_FirmwareVersion_U16" subIndex="11"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_HardwareVariant_U16" subIndex="12"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="MOD_SerialNo_U32" subIndex="13"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_PhysicalSlotNumber_U8" subIndex="14"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_NodeSwitch_U8" subIndex="15"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="MOD_RequestedSerialNo_U32" subIndex="16"/>
                        <SubObject uniqueIDRef="UID_DOM_Index2102_Sub1E" PDOmapping="default" accessType="ro" dataType="000F" objectType="7" name="MOD_InputImage_DOM" subIndex="1E"/>
                        <SubObject PDOmapping="default" accessType="rw" dataType="000F" objectType="7" name="MOD_OutputImage_DOM" subIndex="20"/>
                        <SubObject accessType="rw" dataType="001B" objectType="7" name="MOD_AsyncRead_U64" subIndex="21"/>
                        <SubObject accessType="wo" dataType="001B" objectType="7" name="MOD_AsyncWrite_U64" subIndex="22"/>
                        <SubObject actualValue="0" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="MOD_CfgFunctionMode_U8" subIndex="5A"/>
                        <SubObject actualValue="2" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="MOD_CfgEntryCount_U8" subIndex="5B"/>
                        <SubObject actualValue="0x0000000002010001" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="64"/>
                        <SubObject actualValue="0x0000000A05010012" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="65"/>
                    </Object>
                    <Object objectType="9" name="X20DO4332" index="2103">
                        <SubObject defaultValue="23" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject actualValue="1" defaultValue="0" accessType="rw" highLimit="3" lowLimit="0" dataType="0005" objectType="7" name="MOD_CfgMode_U8" subIndex="04"/>
                        <SubObject actualValue="7068" defaultValue="0" accessType="rw" dataType="0006" objectType="7" name="MOD_RequestedHardwareId_U16" subIndex="05"/>
                        <SubObject accessType="rw" dataType="0006" objectType="7" name="MOD_RequestedVendorId_U16" subIndex="06"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_HardwareId_U16" subIndex="07"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_VendorId_U16" subIndex="08"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_Status_U16" subIndex="0A"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_NetworkStatus_U8" subIndex="0B"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_BlockMask_U8" subIndex="0C"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_BootCount_U8" subIndex="0D"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_FirmwareVersion_U16" subIndex="11"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_HardwareVariant_U16" subIndex="12"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="MOD_SerialNo_U32" subIndex="13"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_PhysicalSlotNumber_U8" subIndex="14"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_NodeSwitch_U8" subIndex="15"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="MOD_RequestedSerialNo_U32" subIndex="16"/>
                        <SubObject uniqueIDRef="UID_DOM_Index2103_Sub1E" PDOmapping="default" accessType="ro" dataType="000F" objectType="7" name="MOD_InputImage_DOM" subIndex="1E"/>
                        <SubObject uniqueIDRef="UID_DOM_Index2103_Sub20" PDOmapping="default" accessType="rw" dataType="000F" objectType="7" name="MOD_OutputImage_DOM" subIndex="20"/>
                        <SubObject accessType="rw" dataType="001B" objectType="7" name="MOD_AsyncRead_U64" subIndex="21"/>
                        <SubObject accessType="wo" dataType="001B" objectType="7" name="MOD_AsyncWrite_U64" subIndex="22"/>
                        <SubObject actualValue="0" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="MOD_CfgFunctionMode_U8" subIndex="5A"/>
                        <SubObject actualValue="2" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="MOD_CfgEntryCount_U8" subIndex="5B"/>
                        <SubObject actualValue="0x0000000003010000" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="64"/>
                        <SubObject actualValue="0x0000000002010001" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="65"/>
                    </Object>
                    <Object objectType="9" name="X20AO2622" index="2104">
                        <SubObject defaultValue="24" accessType="const" dataType="0005" objectType="7" name="NumberOfEntries" subIndex="00"/>
                        <SubObject actualValue="1" defaultValue="0" accessType="rw" highLimit="3" lowLimit="0" dataType="0005" objectType="7" name="MOD_CfgMode_U8" subIndex="04"/>
                        <SubObject actualValue="7074" defaultValue="0" accessType="rw" dataType="0006" objectType="7" name="MOD_RequestedHardwareId_U16" subIndex="05"/>
                        <SubObject accessType="rw" dataType="0006" objectType="7" name="MOD_RequestedVendorId_U16" subIndex="06"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_HardwareId_U16" subIndex="07"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_VendorId_U16" subIndex="08"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_Status_U16" subIndex="0A"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_NetworkStatus_U8" subIndex="0B"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_BlockMask_U8" subIndex="0C"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_BootCount_U8" subIndex="0D"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_FirmwareVersion_U16" subIndex="11"/>
                        <SubObject accessType="ro" dataType="0006" objectType="7" name="MOD_HardwareVariant_U16" subIndex="12"/>
                        <SubObject accessType="ro" dataType="0007" objectType="7" name="MOD_SerialNo_U32" subIndex="13"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_PhysicalSlotNumber_U8" subIndex="14"/>
                        <SubObject accessType="ro" dataType="0005" objectType="7" name="MOD_NodeSwitch_U8" subIndex="15"/>
                        <SubObject defaultValue="0" accessType="rw" dataType="0007" objectType="7" name="MOD_RequestedSerialNo_U32" subIndex="16"/>
                        <SubObject uniqueIDRef="UID_DOM_Index2104_Sub1E" PDOmapping="default" accessType="ro" dataType="000F" objectType="7" name="MOD_InputImage_DOM" subIndex="1E"/>
                        <SubObject uniqueIDRef="UID_DOM_Index2104_Sub20" PDOmapping="default" accessType="rw" dataType="000F" objectType="7" name="MOD_OutputImage_DOM" subIndex="20"/>
                        <SubObject accessType="rw" dataType="001B" objectType="7" name="MOD_AsyncRead_U64" subIndex="21"/>
                        <SubObject accessType="wo" dataType="001B" objectType="7" name="MOD_AsyncWrite_U64" subIndex="22"/>
                        <SubObject actualValue="1" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="MOD_CfgFunctionMode_U8" subIndex="5A"/>
                        <SubObject actualValue="3" defaultValue="0" accessType="rw" dataType="0005" objectType="7" name="MOD_CfgEntryCount_U8" subIndex="5B"/>
                        <SubObject actualValue="0x0000000001020000" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="64"/>
                        <SubObject actualValue="0x0000000001020002" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="65"/>
                        <SubObject actualValue="0x0000000005010012" defaultValue="0" accessType="rw" dataType="001B" objectType="7" name="MOD_CfgEntry_U64" subIndex="66"/>
                    </Object>
                    <Object defaultValue="True" accessType="rw" dataType="0001" objectType="7" name="IO_AnalogIrqEnable_BOOL" index="6423"/>
                </ObjectList>
            </ApplicationLayers>
            <TransportLayers>
      </TransportLayers>
            <NetworkManagement>
                <GeneralFeatures NMTErrorEntries="2" NMTCycleTimeMin="200" NMTCycleTimeMax="60000" NMTBootTimeNotActive="8000000" DLLFeatureMN="false"/>
                <CNFeatures NMTCNSoC2PReq="0" DLLCNFeatureMultiplex="true"/>
                <Diagnostic/>
            </NetworkManagement>
        </ProfileBody>
    </ISO15745Profile>
</ISO15745ProfileContainer>
