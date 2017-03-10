require 'spec_helper'

describe Locker do
  subject { Locker.new }

  it 'gets a list of all possible lock combinations' do
    combos = subject.get_combos

    expect(combos).to include('0123')
    expect(combos).to include('0931')
    expect(combos).to_not include('0121')
    expect(combos).to_not include('012')
    expect(combos).to_not include('0935')
  end
end
