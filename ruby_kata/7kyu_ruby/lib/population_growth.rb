
    year = 1
    population = 1500
    until population >= 5000
    year += 1
    deci_percent = (5.to_f / 100.to_f)
    population = (population / (1.to_f - deci_percent)) + 100
    end
  p year



# Test.assert_equals(nb_year(1500, 5, 100, 5000), 15)
