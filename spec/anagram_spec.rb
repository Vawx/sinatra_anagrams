require('rspec')
require('anagram')

describe("String#anagram") do
  it("checks for anagrams for word") do
    expect("fox".check_for_anagrams(["ofx", "kel", "xof"]) ).to(eq(["ofx", "xof"]))
  end
end
