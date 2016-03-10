defmodule Tutor.Strings do
	@moduledoc """
  A module of functions for manipulating Strings
  """

  @doc """
  Converts all characters in the given string to lowercase.

  ## Example

      iex> Tutor.Strings.lowercase "Hello"
      "hello"
      iex> Tutor.Strings.lowercase "HELLO"
      "hello"

  """
  def lowercase(str), do: String.downcase str

  @doc """
  Converts all characters in the given string to lowercase,
  and then doubles the given string.

  ## Example

      iex> Tutor.Strings.lowercase_doubled "Hello"
      "hellohello"
      iex> Tutor.Strings.lowercase_doubled "HELLO"
      "hellohello"

  """
  def lowercase_doubled(str) do
    str
    |> String.downcase
    |> String.duplicate(2)
  end

  @doc """
  Greets someone with the given name

  ## Example

      iex> Tutor.Strings.greet "Huxley Boon"
      "Hello, Huxley Boon!"

  """
  def greet(name), do: "Hello, #{name}!"

  @doc """
  With a given first name and last name, returns the full name

  ## Example

      iex> Tutor.Strings.full_name("Rich", "Phoenix")
      "Rich Phoenix"

  """
  def full_name(last, first) do
    first <> " " <> last
  end


  @doc """
  Checks if a given string contains the character a.

  ## Example

      iex> Tutor.Strings.has_an_a? "hello there"
      false
      iex> Tutor.Strings.has_an_a? "hallo there"
      true

  """
  def has_an_a?(str), do: String.contains?(str, "a")

  @doc """
  Checks if a given string is a question.
  A string is defined as a question if it's last character
  is a question mark

  ## Example

      iex> Tutor.Strings.question? "How are you?"
      true
      iex> Tutor.Strings.question? "Hello"
      false

  """
  def question?(str), do: String.last(str) == "?"

  @doc """
  Replaces the string "Donald Trump" with "Someone With Tiny Hands"
  [Reference](http://www.theverge.com/2016/3/9/11185484/donald-trump-chrome-extension-strikes-at-the-heart-of-media)

  ## Example

      iex> Tutor.Strings.trump("Donald Trump is running for President")
      "Someone With Tiny Hands is running for President"

  """
  def trump(str) do
    String.replace(str, "Donald Trump", "Someone With Tiny Hands")
  end

  @doc """
  Returns a list of all the words in the given string,
  where each word is reversed

  ## Example

      iex> Tutor.Strings.list_reversed "good day to you"
      ["uoy", "ot", "yad", "doog"]

  """
  def list_reversed(str) do
    str
    |> String.reverse
    |> String.split
  end

  @doc """
  Returns first two letters of a given string

  ## Example

      iex> Tutor.Strings.first_two "Hello"
      "He"
      iex> Tutor.Strings.first_two "How are you?"
      "Ho"
      iex> Tutor.Strings.first_two "  Hello"
      "He"

  """
  def first_two(str) do
    str
    |> String.lstrip
    |> String.slice(0..1)
  end

  @doc """
  Returns the given string as an atom
  """
  def to_atom(str) do
    str
    |> String.replace(" ", "_")
    |> String.to_atom
  end

  @doc """
  With a given name, and a given verb,
  says what that person did today
  """
  def did_today(name, activity) do
    "Today, #{name} #{activity}."
  end

  @doc """
  Returns any given string as a shouted question
  """
  def shout_question(str) do
    String.upcase(str) <> "?"
  end
end
