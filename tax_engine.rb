require './bracketed_tax_engine.rb'

class TaxEngine
  include BracketedTaxEngine
  # Configurations examples
  def caclulate_tax(tax_brackets, above, incomes)
    #Input: incomes
    incomes.each do |i|
      p = tax_amount(i["income"], tax_brackets, above)
      puts("#{i['client']}. Income: #{i['income']}, tax: #{p}")
    end
  end
end
