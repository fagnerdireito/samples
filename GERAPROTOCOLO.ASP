
<%
'## GERA PROTOCOLO SEGUENCIAL SIMPLES
sql ="call geraprotocolosimples(userid,codinteressado,codorgao,codsetor)"
set rs = conexao.execute (sql)
protocolo = rs("protocolo")


'## GERA PROTOCOLO SEGUENCIAL COMPLETO
sql ="call geraprotocolocompleto(userid,codinteressado,codorgao,codassunto,codsetor)"
set rs = conexao.execute (sql)
protocolo = rs("protocolo")
%>
