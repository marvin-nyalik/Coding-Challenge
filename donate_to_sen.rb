def predict_senate_victory(senate)
    radiant = []
    dire = []
  
    senate.chars.each_with_index do |party, index|
      party == 'R' ? radiant << index : dire << index
    end
  
    while !radiant.empty? && !dire.empty?
      radiant_index = radiant.shift
      dire_index = dire.shift
  
      if radiant_index < dire_index
        radiant << radiant_index + senate.length
      else
        dire << dire_index + senate.length
      end
    end
  
    radiant.empty? ? "Dire" : "Radiant"
end
  