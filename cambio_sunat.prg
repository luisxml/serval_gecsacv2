*function fx_tipo_cambio_xml
PARAMETERS p_nMes, p_nAnio, p_lUltimo
SET STEP ON

LOCAL lcMes, lcAnio, lcHttp, loXmlHttp, lcHTML, ln_PosIni, ln_PosFin, lc_Texto

lcMes  = PADL(ALLTRIM(STR(p_nMes)), 2, '0')
lcAnio = ALLTRIM(STR(p_nAnio, 4, 0))
lcHttp = "http://www.sunat.gob.pe/cl-at-ittipcam/tcS01Alias?mes=" + lcMes + "&anho=" + lcAnio

loXmlHttp = Createobject("Microsoft.XMLHTTP")
loXmlHttp.Open("POST" , lcHttp, .F.)
loXmlHttp.Send
Do While loXmlHttp.readyState<>4 Or loXmlHttp.Status <>200
***
Enddo
lcHTML = loXmlHttp.Responsetext

ln_PosIni  = AT("D�a",lcHTML)
ln_PosFin  = AT("Para efectos",lcHTML)
lc_Texto  = SUBSTR(lcHTML,ln_PosIni,ln_PosFin - ln_PosIni)
ln_PosIni  = RAT("Venta",lc_Texto)
lc_Texto  = CHRTRAN(ALLTRIM(SUBSTR(lc_Texto,ln_PosIni + 6)) + " ",CHR(10),"")
MESSAGEBOX(lc_Texto)
*IF p_lUltimo
j   = OCCURS('class="H3"', lc_Texto)
lc_Texto  = SUBSTR(lc_Texto, at('class="H3"', lc_Texto, j), 1000)
MESSAGEBOX(lc_Texto)
*endif
RETURN lc_texto