defmodule FinancialStatements.Income do
	defstruct [
		total_revenue: 0,
			sales: 0,
			other_revenue: 0,
		cogs: 0,
			wages_benefits: 0,
			purchases: 0,
			oopening_inventory: 0,
			closing_inventory: 0,
		operating_expenses: 0,
			labour_and_commission: 0,
			amortization: 0,
			repairs: 0,
			utilities: 0,
			rent: 0,
			professional: 0,
			advertising: 0,
			shipping: 0,
			insurance: 0,
			other: 0,
		total_expenses: 0,
		net_income_or_loss: 0,
		period: nil	
	]

	defp terms do
		[
		{:november, %Term{term: november, total_revenue: 20,000, cogs: 12000, wages_benefits: 6000, purchases: 2000}},
		{:december, %Term{term: december, total_revenue: 21,000, cogs: 11000, wages_benefits: 6000, purchases: 1000}},

		]
	end

end