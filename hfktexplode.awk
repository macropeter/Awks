# Liste von werten und Häufigkeiten ausbreiten ("explode")
# Werte und Häufigkeiten sind durch Kommata getrennt
# vgl das entsprechende LISP-Programm


BEGIN { FS=","}

{
    elargi($1,$2)
}

function elargi(x,h)
# rekursiv!
{
    if (h>0)
    {
	print x
	elargi(x,h-1)
    }
}
