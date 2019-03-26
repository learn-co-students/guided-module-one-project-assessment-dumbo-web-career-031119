# strain
strawberry_og = Strain.create(name: "Strawberry OG", indica: 40, sativa: 60, thc: 23.00, cbd: 0.03, benefits: "euphoria, happiness, relaxation, uplift, creativity", medical: "depression, nausea, lack of appetite, stress, pain")
# purple_kush = Strain.create(name: "Purple Kush", indica: 100, sativa: 0, thc: 22.00, cbd: 0.08 benefits: "relaxation, sleep", medical: "stress, pain, insomnia, depression")
chrome_cake = Strain.create(name: "Chrome Cake", indica: 80, sativa: 20, thc: 28.00, cbd: 0.04)
twenty_two_jack = Strain.create(name: "22Jack", indica: 50, sativa: 50, thc: 15.00, cbd: 0.07, benefits: "uplift, happiness, energy, euphoria, creativity", medical: "depression, fatigue, stress, muscle spasms, nausea")
chocolope = Strain.create(name: "Chocolope", indica: 5, sativa: 95, thc: 13.00, cbd: 0.03, benefits: "happiness, uplift, relaxation, euphoria, energy", medical: "stress, depression, fatigue, lack of appetite, pain")
girl_scout_cookies = Strain.create(name: "Girl Scout Cookies", indica: 60, sativa: 40, thc: 23.00, cbd: 0.15, benefits: "creativity, euphoria, happiness, relaxation, uplift", medical: "depression, fatigue, stress")
skywalker = Strain.create(name: "Sky Walker Kush", indica: 60, sativa: 40, thc: 16.00, cbd: 0.03, benefits: "euphoria, relaxation, happiness", medical: "anxiety, pain, depression, insomnia")
acdc = Strain.create(name: "ACDC", indica: 60, sativa: 40, thc: 1.00, cbd: 16.00, benefits: "energy, focus, happiness, relaxation, uplift", medical: "depression, inflammation, muscle spasms, pain")
frosty = Strain.create(name: "Frosty Kush", indica: 65, sativa: 35, thc: 22.00, cbd: 0.05, benefits: "happiness, uplift, euphoria", medical: "stress, depression")

harmony = Dispensary.create(name: "Harmony", location: "600 Meadowlands Pkwy", town: "Seacaucus", zip_code: "07094")
compassionate = Dispensary.create(name: "Compassionate Care Foundation", location: "100 Century Dr.", town: "Egg Harbor Township", zip_code: "08234")
curaleaf = Dispensary.create(name: "CuraLeaf NJ", location: "640 Creek Road", town: "Bellmawr", zip_code: "08031")
garden_state = Dispensary.create(name: "Garden State Dispensary", location: "950 US-1", town: "Woodbridge", zip_code: "07095")
greenleaf = Dispensary.create(name: "Greenleaf Compassion Center", location: "395 Bloomfield Ave", town: "Montclair", zip_code: "07042")

harmony_strains = [strawberry_og, chrome_cake, twenty_two_jack, chocolope, girl_scout_cookies, skywalker]
compassionate_strains = [twenty_two_jack, acdc]
curaleaf_strains = [girl_scout_cookies, skywalker]
garden_state_strains = [acdc, girl_scout_cookies]
greenleaf_strains = [acdc, strawberry_og]

harmony.add_to_inventory(harmony_strains)
compassionate.add_to_inventory(compassionate_strains)
curaleaf.add_to_inventory(curaleaf_strains)
garden_state.add_to_inventory(garden_state_strains)
greenleaf.add_to_inventory(greenleaf_strains)



User.create(username: "Serena", password: "serena")
