require 'json'
require './tax_engine.rb'

bracket_data = File.read('./config/bracket_1.json')
income_data = File.read('./config/incomes_1.json')
bracket = JSON.parse(bracket_data)
incomes = JSON.parse(income_data)
te = TaxEngine.new()
te.caclulate_tax(bracket["bounds"], bracket["above"], incomes["incomes"])
