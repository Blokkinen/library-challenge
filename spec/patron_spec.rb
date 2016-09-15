require './lib/patron.rb'

describe Patron do
  subject { Patron.new }

 it 'should have borrowed a book' do
   book = subject.search('The choice')
   expect(subject.book).to
 end
end
