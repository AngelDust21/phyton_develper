# Les 4 Eindopdracht - Mini Rekenmachine
#funtie voor optellen
def optellen(a, b):
    return a + b

#funtie voor aftrekken
def aftrekken(a, b):
    return a - b

#funtie voor vermenigvuldigen
def vermenigvuldigen(a, b):
    return a * b

#funtie voor delen
def delen(a, b):
    return a / b

# Hoofdprogramma - rekenmachine
print("Mini Rekenmachine")
print("Bewerkingen: +, -, *, /")
print("Typ uit om te stoppen")

bewerking = input("Welke bewerking? ")

while bewerking != "uit":
    eerste_getal = float(input("Eerste getal "))
    tweede_getal = float(input("Tweede getal "))
    
    if bewerking == "+":
        uitkomst = optellen(eerste_getal, tweede_getal)
        print("Uitkomst:", uitkomst)
    elif bewerking == "-":
        uitkomst = aftrekken(eerste_getal, tweede_getal)
        print("Uitkomst:", uitkomst)
    elif bewerking == "*":
        uitkomst = vermenigvuldigen(eerste_getal, tweede_getal)
        print("Uitkomst:", uitkomst)
    elif bewerking == "/":
        uitkomst = delen(eerste_getal, tweede_getal)
        print("Uitkomst:", uitkomst)
    else:
        print("Onbekende bewerking")

    bewerking = input("Welke bewerking? ")