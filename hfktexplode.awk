# Liste von werten und Häufigkeiten ausbreiten ("explode")
# Werte und Häufigkeiten sind durch Leerzeichen getrennt
# vgl das gleichnamige LISP-Programm


BEGIN { FS=","}

{
    elargi($1,$2)
}

function elargi(x,h)
{
    if (h>0)
    {
	print x
	elargi(x,h-1)
    }
}
