defmodule Examples.Modules.Extract do
  def inline do
    Enum.each(names(), fn name ->
      capitalized = String.capitalize(name)
      phrase = "Hello #{capitalized}"
      IO.puts(phrase)
    end)
  end

  def extracted do
    Enum.each(names(), & print_name/1)
  end

  def print_name(name) do
    capitalized = String.capitalize(name)
    phrase = "Hello #{capitalized}"
    IO.puts(phrase)
  end

  def names do
    ["mike", "joe", "sue"]
  end
  
end
