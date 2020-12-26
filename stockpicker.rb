require 'pry'

def stockpickerBest(arrayPrices)
    profitBest =[0,0]
    (0..(arrayPrices.length-1)).each do |i|
        (i..(arrayPrices.length-1)).each do |j|
            if (arrayPrices[j]-arrayPrices[i]>arrayPrices[profitBest[1]]-arrayPrices[profitBest[0]])
                profitBest[0]=i
                profitBest[1]=j
            end
        end
    end
    puts "Best to have bought on day #{profitBest[0]+1} for #{arrayPrices[profitBest[0]]} and sold on day #{profitBest[1]+1} for #{arrayPrices[profitBest[1]]}"
    puts "Would have made profit of #{arrayPrices[profitBest[1]]-arrayPrices[profitBest[0]]}"
    puts "Highest price during period: #{arrayPrices.max}  Lowest: #{arrayPrices.min}"
    profitBest
end
stockpickerBest([1,32,4,100])
