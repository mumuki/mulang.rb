require "spec_helper"

describe Mulang::Code do
  context 'when language is javascript' do
    let(:code) { Mulang::Code.new(Mulang::Language::Native.new('JavaScript'), 'x = 1') }

    it { expect(code.ast).to eq "tag"=>"Assignment", "contents"=>["x", {"tag"=>"MuNumber", "contents"=>1}] }
  end

  context 'when language is lowercase' do
    let(:code) { Mulang::Code.new(Mulang::Language::Native.new('Haskell'), 'x = 1') }

    it { expect(code.ast).to eq "tag"=>"Variable", "contents"=>["x", {"tag"=>"MuNumber", "contents"=>1}] }
  end

  context 'when code is well-formed' do
    let(:code) { Mulang::Code.new(Mulang::Language::Native.new('Haskell'), 'x = 1') }

    it { expect(code.ast).to eq "tag"=>"Variable", "contents"=>["x", {"tag"=>"MuNumber", "contents"=>1}] }
  end

  context 'when code is ill-formed' do
    let(:code) { Mulang::Code.new(Mulang::Language::Native.new('Haskell'), '= 1') }

    it { expect(code.ast).to be nil }
  end
end
