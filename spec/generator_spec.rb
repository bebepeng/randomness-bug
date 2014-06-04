require 'generator'

describe Generator do
  it 'returns an array of a given length' do
    expect(Generator.new(4).generate.length).to eq 4
  end
  it 'returns an array with all unique names' do
    all_people = Generator.new(4).generate.map {|item| [item[0], item[1]]}
    expect(all_people.uniq).to match_array all_people
  end
  it 'returns an array with unique companies that have two employees' do
    all_companies = Generator.new(4).generate.map {|item| item[2]}
    expect(all_companies.uniq.length).to eq 2
  end
  it 'gives a company for an odd number of outputs' do
    all_companies = Generator.new(3).generate.map {|item| item[2]}
    expect(all_companies.uniq.length).to eq 2
  end
end