defmodule Tutor.StringsTest do
  use ExUnit.Case

  alias Tutor.Strings

  # @tag :skip
  test "converts string to lowercase" do
    assert Strings.lowercase("Hello") == "hello"
    assert Strings.lowercase("hello") == "hello"
    assert Strings.lowercase("HELLO") == "hello"
  end

  # @tag :skip
  test "converts string to lowercase and doubles it" do
    assert Strings.lowercase_doubled("hello") == "hellohello"
    assert Strings.lowercase_doubled("HELLO") == "hellohello"
    assert Strings.lowercase_doubled("Hello") == "hellohello"
  end

  # @tag :skip
  test "greets person" do
    assert Strings.greet("Jack") == "Hello, Jack!"
  end

  # @tag :skip
  test "returns full name" do
    assert Strings.full_name("Phoenix", "Leila") == "Leila Phoenix"
  end

  # @tag :skip
  test "returns true if string contains the character a" do
    assert Strings.has_an_a?("a") == true
    assert Strings.has_an_a?("an elephant") == true
    assert Strings.has_an_a?("sauna") == true
    assert Strings.has_an_a?("sssssssssssssauna") == true
  end

  # @tag :skip
  test "returns false if string does not contain the character a" do
    assert Strings.has_an_a?(" ") == false
    assert Strings.has_an_a?("No") == false
    assert Strings.has_an_a?("youth") == false
  end

  # @tag :skip
  test "returns true if the given string is a question" do
    assert Strings.question?("Is this a question?") == true
  end

  # @tag :skip
  test "returns false if the given string is not a question" do
    assert Strings.question?("This is not a question.") == false
  end

  # @tag :skip
  test "returns false if the given string is not a question but contains a question mark" do
    assert Strings.question?("Hello? Hello? Fine. Whatever.") == false
  end

  # @tag :skip
  test "replaces Donald Trump with Someone With Tiny Hands" do
    paragraph = "Donald Trump said Wednesday that he thinks \"Islam hates us,\" drawing little distinction between the religion and radical Islamic terrorism. Asked if the hate was \"in Islam itself,\" Donald Trump would only say that was for the media to figure out."
    expected = "Someone With Tiny Hands said Wednesday that he thinks \"Islam hates us,\" drawing little distinction between the religion and radical Islamic terrorism. Asked if the hate was \"in Islam itself,\" Someone With Tiny Hands would only say that was for the media to figure out."
    assert Strings.trump("Donald Trump") == "Someone With Tiny Hands"
    assert Strings.trump(paragraph) == expected
  end

  # @tag :skip
  test "returns a list of reversed words" do
    assert Strings.list_reversed("Say it ain't so") == ["os", "t'nia", "ti", "yaS"]
  end

  # @tag :skip
  test "returns first two letters of given string" do
    assert Strings.first_two("goodbye") == "go"
  end

  # @tag :skip
  test "returns first two letters of a given string, ignoring whitespace" do
    assert Strings.first_two("     goodbye") == "go"
  end

  # @tag :skip
  test "returns given string as an atom" do
    assert Strings.to_atom("huxleyboon") == :huxleyboon
  end

  # @tag :skip
  test "returns string with spaces as an atom without quotations" do
    assert Strings.to_atom("huxley boon") == :huxley_boon
  end

  # @tag :skip
  test "returns what the given person did today" do
    assert Strings.did_today("Nicole", "lost her phone") == "Today, Nicole lost her phone."
  end

  # @tag :skip
  test "turns normal string into shouted question" do
    assert Strings.shout_question("hello") == "HELLO?"
  end
end
