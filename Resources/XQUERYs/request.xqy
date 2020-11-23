xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.example.org/CONSULTA";
(:: import schema at "../Schemas/CONSULTAV1.0.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/pcbpel/adapter/db/sp/BS_CONSULTA";
(:: import schema at "../Schemas/BS_CONSULTA_sp.xsd" ::)

declare variable $CONSUL_REQUEST as element() (:: schema-element(ns1:CONSUL_REQUEST) ::) external;

declare function local:func($CONSUL_REQUEST as element() (:: schema-element(ns1:CONSUL_REQUEST) ::)) as element() (:: schema-element(ns2:InputParameters) ::) {
    <ns2:InputParameters>
        <ns2:DOCUMENTO>{fn:data($CONSUL_REQUEST/ns1:DOCUMENTO)}</ns2:DOCUMENTO>
    </ns2:InputParameters>
};

local:func($CONSUL_REQUEST)
