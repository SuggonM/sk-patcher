# gems
/_cumulative_consume_gems"/d
/_cumulative_gems"/d
/_last_gems"/d
/_var_gems"/d
s/(_gems" value=)"[0-9]+"/\1"1000000"/

# character, pet
s/(_c[0-9]+_unlock">)False/\1True/i
s/(_p[0-9]+_unlock">)False/\1True/i

# level, skin, skill
s/(_c[0-9]+_level" value=)"[0-7]"/\1"7"/
s/(_c[0-9]+_skin[0-9]+" value=)"-?[0-9]+"/\1"1"/
s/(_c_[a-zA-Z]+_skill_[0-2]_unlock" value=)"0"/\1"1"/

# crit, pet atk, speed, coins
s/(_furniture_book_level" value=)"[0-9]+"/\1"100"/
s/(_furniture_pet_food_level" value=)"[0-9]+"/\1"1000"/
s/(_furniture_plant_level" value=)"[0-9]+"/\1"50"/
s/(_furniture_safe_level" value=)"[0-9]+"/\1"5000"/
