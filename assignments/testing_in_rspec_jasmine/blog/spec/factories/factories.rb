FactoryGirl.define do
  factory :post do
    title 'The Call of Cthulhu'
    body  'The most merciful thing in the world, I think, is the inability of the human mind to correlate all its contents. We live on a placid island of ignorance in the midst of black seas of infinity, and it was not meant that we should voyage far. The sciences, each straining in its own direction, have hitherto harmed us little; but some day the piecing together of dissociated knowledge will open up such terrifying vistas of reality, and of our frightful position therein, that we shall either go mad from the revelation or flee from the light into the peace and safety of a new dark age.'
	user
  end

  factory :user do
  	sequence(:email) {|n| "hp#{n}@lovecraft.com" }
    password "12312312"
    password_confirmation { "12312312" }
  end
end