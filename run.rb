  require 'apriori'
require "pp"


  transactions = [  %w{beer doritos},
                    %w{apple cheese}, 
                    %w{beer doritos}, 
                    %w{apple cheese}, 
                    %w{apple cheese}, 
                    %w{apple doritos} ]
puts Apriori.find_association_rules(transactions,
                            :min_items => 2,
                            :max_items => 5,
                            :min_support => 1, 
                            :max_support => 100, 
                            :min_confidence => 20).inspect
