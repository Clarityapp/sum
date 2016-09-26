defmodule SumTest do
  use ExUnit.Case
  doctest Sum

  test "Curent Ratio calculations are correct" do
    ev = Financial_Ratios.current_ratio(%{current_assets: 15, current_liabilities: 7})
    	assert ev == 2.14

  end

  test "Quick ratio calculations are correct" do
    ev = Financial_Ratios.quick_ratio(%{cash: 10, ar: 5, current_liabilities: 7})
    	assert ev == 2.14
 end

 test "Cash ratio calculations are correct?" do
 	ev = Financial_Ratios.cash_ratio(%{cash: 10, current_liabilities: 7}) 
 		assert ev == 1.43
 end

 test "Return on assests are correct" do
 	ev = Financial_Ratios.roa(%{net_income: 15, total_assets: 20})
 	assert ev == 0.75
 end

 test "Return on equity is correct" do
 	ev = Financial_Ratios.roe(%{net_income: 15, total_equity: 25}) 
 	assert ev == 0.6
 end 	

 test "Return on capital employed is correct" do
 	ev = Financial_Ratios.ro_cap_em(%{ebit: 20, total_assets: 20, current_liabilities: 7})
 	assert ev == 1.54
 end

 test "Revenue to equity" do
 	ev = Financial_Ratios.rev_to_equity(%{revenue: 25, total_equity: 25}) 
 	assert ev == 1.00
 end

 #debt ratio tests

 	test "Debt to equity ratio is correct" do
 		ev = Financial_Ratios.debt_to_equity(%{total_debt: 25, total_equity: 25})
 		assert ev == 1.0
 	end

 	test "Debt to assets ratio is correct" do
 		ev = Financial_Ratios.debt_ratio(%{total_debt: 25, total_assets: 20})
 		assert ev == 1.25
 	end

 	test "capitalization ratio is correct" do
 		ev = Financial_Ratios.capitalization_ratio(%{long_term_debt: 13, shareholders_equity: 15})
 		assert ev == 0.46
 	end

 	test "Interst coverage ratio is correct" do
 		ev = Financial_Ratios.interest_coverage_ratio(%{ebit: 20, interest: 5}) 
 		assert ev == 4.0
 	end

 	test "Cash flow to debt ratio is correct" do
 		ev = Financial_Ratios.cash_flow_to_debt(%{operating_cf: 5, total_debt: 25})
 		assert ev == 0.2
 	end

 #Operating Ratios tests
 	test "Fixed asset turnover is correct" do
 		ev = Financial_Ratios.fixed_asset_turnover(%{revenue: 25, ppe: 10, depreciation: 5})
 		assert ev == 5.0
 	end

 	test "revenue per employee" do
 		ev = Financial_Ratios.revenue_per_employee(%{revenue: 25, number_of_employees: 2})
		assert ev == 12.5
 	end

 	test "Gross margin ratio (normal way)" do
 		ev = Financial_Ratios.gross_margin(%{revenue: 25, gross_margin: 10 })
 		assert ev == 0.4
 	end

 	test "Gross margin ratio alternative" do
 		ev = Financial_Ratios.gross_margin(%{revenue: 25, cogs: 15})
 		assert ev == 0.4
 	end


# Cash flow ratios
 	test "Operating cash flow" do
 		ev = Financial_Ratios.ocf(%{ocf: 5, current_liabilities: 7})
 		assert ev == 0.71
 	end

 	test "Free cash flow" do
 		ev = Financial_Ratios.free_cash_flow(%{ebit: 20, tax_rate: 0.15,  depreciation: 5, change_in_networking_capital: 5, 
		capital_expenditure: 5})
		assert ev == 12
 	end

 	test "Net working capital" do
 		ev = Financial_Ratios.current_working_capital(%{current_assets: 15, current_liabilities: 7})
 		assert ev == 8
 	end	

 	test "Change in networking capital" do
 		ev = Financial_Ratios.change_in_networking_capital(%{current_working_capital: 8, previous_working_capital: 6})
 		assert ev == 2
 	end
end