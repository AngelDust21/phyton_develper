leeftijd = int(input("Voer je leeftijd in: "))
heeft_id = input("Heb je een geldig ID? (ja/nee): ")
is_student = "nee"
if heeft_id != "ja":
    print("Geen toegang. Je moet een geldig ID hebben.")
else:
    if leeftijd < 12:
        ticket_type = "kinderticket"
    elif leeftijd >= 12 and leeftijd <= 17:
        ticket_type = "jeugdticket"
    else: 
        ticket_type = "volwassenticket"
    if leeftijd >= 12 and leeftijd <= 17:
        korting = "Je krijgt korting (jeugd)."
    elif leeftijd >= 18:
        is_student = input("student (ja/nee): ")
        if is_student == "ja":
            korting = "Je krijgt korting (student)."
        else:
            korting = "Geen korting."
    else:
        korting = "Geen korting."
    print("Toegang verleend!")
    if leeftijd >= 18 and is_student == "ja":
        print("Je krijgt een", ticket_type, "met studentenkorting.")
    elif leeftijd >= 12 and leeftijd <= 17:
        print("Je krijgt een", ticket_type, "(jeugdkorting toegepast).")
    else:
        print("Je krijgt een", ticket_type, ".")