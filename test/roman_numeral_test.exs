defmodule RomanNumeralTest do
  use ExUnit.Case
  doctest RomanNumeral

  test "converts arabic into roman numerals" do
    test_values = [
      {0, ""},
      {1, "I"},
      {2, "II"},
      {3, "III"},
      {4, "IV"},
      {5, "V"},
      {6, "VI"},
      {7, "VII"},
      {14, "XIV"},
      {28, "XXVIII"}
    ]

    Enum.each(test_values, fn {arabic, roman} -> assert RomanNumeral.converts(arabic) == roman end)
  end
end
