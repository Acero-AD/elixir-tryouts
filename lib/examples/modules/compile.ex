defmodule Examples.Modules.Compile do

  IO.puts "This is a compile time message"

  @now Time.utc_now

  def runtime do
    IO.puts "This was compiled at #{@now}. It is #{runtime_now()}"
  end

  defp runtime_now do
    Time.utc_now
  end
end
