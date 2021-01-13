module BracketedTaxEngine
  def percentage(n, portion)
    x = (n * portion) / 100
  end

  def tax_amount(income,
    brackets,
    above)
    portion = above
    #Input brackets
    upper_bounds = brackets.keys.map { |b| b.to_s.to_f }
    upper_bounds = upper_bounds.sort()
    upper_bounds.each do |b|
      if income < b
        portion = brackets[b.to_i.to_s]
        break
      end
    end
    return percentage(income, portion)
  end
end
