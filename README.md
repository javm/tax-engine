# Bracketed tax calculator

# Requirements
Ruby >= 2.7

# Installation
bundle install  

## Run
ruby tax_engine_test.rb

## Design:
BracketedTaxEngine module that implements the tax calculation

TaxEngine class that includes the BracketedTaxEngine and takes the tax bracket and a list of income by client and perform the tax calculation

tax_engine_test.rb implements the solution taking the bracket configuration from a json file. Also takse the incomes and client data from a json file. This enables the TexEngine to be confugurable and change the brackets and the income data as we want being flexible to scale and be a solution for the requirements 1) and 2).


## Scalation
To scale the program and adapt it to a new bracket scales the following is suggested

1. Write the ranges in a configuration file or array containing the upper range limits for each bracket

2. Parallelize or queueing the process could increase the performance, having (1) we got an array where we can search a place for our income, I imagine something like insertion sort heuristic.

3. Expose the server as a web server (socket or REST)
