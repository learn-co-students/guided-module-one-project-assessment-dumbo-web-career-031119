# strain
Strain.create(name: "Strawberry OG", indica: 40, sativa: 60, thc: 23.00, cbd: 0.03, benefits: "euphoria, happiness, relaxation, uplift, creativity", medical: "depression, nausea, lack of appetite, stress, pain")
Strain.create(name: "Purple Kush", indica: 100, sativa: 0, thc: 22.00, cbd: 0.08, benefits: "relaxation, sleep", medical: "stress, pain, insomnia, depression")
Strain.create(name: "Chrome Cake", indica: 80, sativa: 20)
Strain.create(name: "22Jack", indica: 50, sativa: 50, thc: 15.00, cbd: 0.07, benefits: "uplift, happiness, energy, euphoria, creativity", medical: "depression, fatigue, stress, muscle spasms, nausea")
Strain.create(name: "Chocolope", indica: 5, sativa: 95, thc: 13.00, cbd: 0.03, benefits: "happiness, uplift, relaxation, euphoria, energy", medical: "stress, depression, fatigue, lack of appetite, pain")

Dispensary.create(name: "Harmony", location: "600 Meadowlands Pkwy", zip_code: "07094")

DispensaryInventory.create(dispensary_id: Dispensary.find_by(name: "Harmony").id, strain_id: Strain.find_by(name: "Strawberry OG").id)

DispensaryInventory.create(dispensary_id: Dispensary.find_by(name: "Harmony").id, strain_id: Strain.find_by(name: "Strawberry OG").id)
serena = User.create(username: "Serena", password: "serena")
