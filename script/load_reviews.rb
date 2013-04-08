Review.transaction do
  (1..50).each do |i|
    Review.create(:name => "Client #{i}", :review => "Thank you very much!!!")
  end
end
