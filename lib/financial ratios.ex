defmodule Financial_Ratios do

import Convert

# Liquidity Ratios

# Current Ratio
  def current_ratio(%{current_assets: current_assets, current_liabilities: current_liabilities}) do
    current_assets / current_liabilities
    |> to_nearest_tenth
  end

# Quick Ratio
  def quick_ratio(%{cash: cash, ar: ar, current_liabilities: current_liabilities}) do
  	(cash + ar) / current_liabilities
  	|> to_nearest_tenth
  end

# Cash Ratio
  def cash_ratio(%{cash: cash, current_liabilities: current_liabilities}) do
  	cash / current_liabilities
  	|> to_nearest_tenth
  end

 # Profitability Ratios

 #Return on Assets	
  def roa(%{net_income: net_income, total_assets: total_assets}) do
  	net_income / total_assets
  	|> to_nearest_tenth
  end

# Return on Equity  
  def roe(%{net_income: net_income, total_equity: total_equity}) do
  	net_income / total_equity
  	|> to_nearest_tenth
  end

# Return on Capital Employed
  def ro_cap_em(%{ebit: ebit, total_assets: total_assets, current_liabilities: current_liabilities}) do
  	ebit / (total_assets - current_liabilities)
  	|> to_nearest_tenth
  end

# Revenue to equity
	def rev_to_equity(%{revenue: revenue, total_equity: total_equity}) do
		revenue / total_equity
		|> to_nearest_tenth
	end  

# Debt ratios

# Debt to Equity Ratio
	def debt_to_equity(%{total_debt: total_debt, total_equity: total_equity}) do
		total_debt / total_equity
		|> to_nearest_tenth
	end	

# Debt Ratio	
	def debt_ratio(%{total_debt: total_debt, total_assets: total_assets}) do
		total_debt / total_assets
		|> to_nearest_tenth
	end	

# Capitalization Ratio
	def capitalization_ratio(%{long_term_debt: long_term_debt, shareholders_equity: shareholders_equity}) do
		long_term_debt / (long_term_debt + shareholders_equity)
		|> to_nearest_tenth
	end	

#Interest coverage ratio
	def interest_coverage_ratio(%{ebit: ebit, interest: interest}) do
		ebit / interest
		|> to_nearest_tenth
	end	

#Cash flow to debt ratio
	def cash_flow_to_debt(%{operating_cf: operating_cf, total_debt: total_debt}) do
		operating_cf / total_debt
		|> to_nearest_tenth
	end

# Operating Ratios

#Fixed asset turnover
	def fixed_asset_turnover(%{revenue: revenue, ppe: ppe, depreciation: depreciation})	do
		revenue / (ppe - depreciation)
		|> to_nearest_tenth
	end

#Revenue per employee
	def revenue_per_employee(%{revenue: revenue, number_of_employees: number_of_employees}) do
		revenue / number_of_employees
		|> to_nearest_tenth
	end	

#Gross Margin
	def gross_margin(%{revenue: revenue, gross_margin: gross_margin }) do
		gross_margin / revenue
		|> to_nearest_tenth
	end
	
	def gross_margin(%{revenue: revenue, cogs: cogs}) do
		(revenue - cogs) / revenue
		|> to_nearest_tenth
	end		

# Cash flow ratios

#Operating cash flow == ocf
	def ocf(%{ocf: ocf, current_liabilities: current_liabilities}) do
		ocf / current_liabilities
		|> to_nearest_tenth
	end	

#Free cash flow
	def free_cash_flow(%{ebit: ebit, tax_rate: tax_rate, depreciation: depreciation, change_in_networking_capital: change_in_networking_capital, 
		capital_expenditure: capital_expenditure}) do
			ebit * (1 - tax_rate) + depreciation - change_in_networking_capital - capital_expenditure
			|> to_nearest_tenth
		end

# Look into piping the below results into the above. Refactoring the code will be important to actually get the results requried.		

#Networking capital
	def current_working_capital(%{current_assets: current_assets, current_liabilities: current_liabilities}) do
		current_assets - current_liabilities
	end

#change in net working capital	

	def change_in_networking_capital(%{current_working_capital: current_working_capital, previous_working_capital: previous_working_capital}) do
		current_working_capital - previous_working_capital
	end	




end
