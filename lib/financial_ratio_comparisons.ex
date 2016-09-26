defmodule FinancialRatioComparisons do
	
import Financial_Ratios

	def financial_analysis_current_ratio(month) when is_map(month) do
		month
		|> current_ratio
	end

end