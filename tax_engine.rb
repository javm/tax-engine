require 'json'
require './bracketed_tax_engine.rb'

class TaxEngine
  include BracketedTaxEngine
  # Configurations examples
  def caclulate_tax(tax_brackets, above)
    #Input: incomes
    incomes = [60000, 800, 15000, 3000, 20001.5]
    incomes.each do |i|
      p = tax_amount(i, tax_brackets, above)
      puts("#{i} #{p}")
    end
  end
end

file = File.read('./config/bracket_1.json')
brackets = JSON.parse(file)
te = TaxEngine.new()
te.caclulate_tax(brackets["bounds"], brackets["above"])
