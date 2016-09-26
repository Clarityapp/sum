#need to set schema

defmodule GeneralLedgerAnalysis do
	#Set schema
import 


def count do
	File.stream!("source", :line)
	|> Flow.from_enumerable()
	|> Flow.flat_map(&String.split/1)
	|> Flow.partition()
	|> Flow.reduce(fn -> %{} end, fn word, map ->
		Map.update(map, word, 1, & &1 + 1))
	|> Enum.into
end

end
