xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.example.org/CONSULTA";
(:: import schema at "../Schemas/CONSULTAV1.0.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/pcbpel/adapter/db/sp/BS_CONSULTA";
(:: import schema at "../Schemas/BS_CONSULTA_sp.xsd" ::)

declare variable $OutputParameters as element() (:: schema-element(ns2:OutputParameters) ::) external;

declare function local:func($OutputParameters as element() (:: schema-element(ns2:OutputParameters) ::)) as element() (:: schema-element(ns1:CONSULT_RESPONSE) ::) {
    <ns1:CONSULT_RESPONSE>
        <ns1:NOMBRE>{fn:data($OutputParameters/ns2:NOMBRE)}</ns1:NOMBRE>
        <ns1:APELLIDO>{fn:data($OutputParameters/ns2:APELLIDO)}</ns1:APELLIDO>
        <ns1:TELEFONO>{fn:data($OutputParameters/ns2:TELEFONO)}</ns1:TELEFONO>
        <ns1:CORREO>{fn:data($OutputParameters/ns2:CORREO)}</ns1:CORREO>
        <ns1:PROFESION>{fn:data($OutputParameters/ns2:PROFESION)}</ns1:PROFESION>
        <ns1:FECHA_INGRESO>{fn:data($OutputParameters/ns2:FECHA_INGRESO)}</ns1:FECHA_INGRESO>
        <ns1:CODIGO>{fn:data($OutputParameters/ns2:CODIGO)}</ns1:CODIGO>
        <ns1:DESCRIPCION>{fn:data($OutputParameters/ns2:DESCRIPCION)}</ns1:DESCRIPCION></ns1:CONSULT_RESPONSE>
};

local:func($OutputParameters)
