Before do |scenarios|
    puts 'Estou executando antes de cada cenário'
end

After do |scenario|
    puts 'Estou executando depois'
    puts scenario.failed?
end    