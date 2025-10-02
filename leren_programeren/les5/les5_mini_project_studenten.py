def mini_project_studenten_tuples_en_sets():
    # Studenten als list van tuples: (naam, leeftijd)
    try:
        aantal = int(input("Hoeveel studenten wil je invoeren? "))
    except ValueError:
        print("Geef een geldig getal.")
        return

    studenten = []
    for _ in range(aantal):
        naam = input("Naam: ")
        while True:
            try:
                leeftijd = int(input("Leeftijd: "))
                break
            except ValueError:
                print("Geef een geldig getal voor leeftijd.")
        studenten.append((naam, leeftijd))

    print("Alle studenten:")
    for naam, leeftijd in studenten:
        print(f"- {naam} ({leeftijd})")

    # Unieke leeftijden via set-comprehension
    unieke_leeftijden = {leeftijd for _, leeftijd in studenten}
    print("Unieke leeftijden:", unieke_leeftijden)

mini_project_studenten_tuples_en_sets()