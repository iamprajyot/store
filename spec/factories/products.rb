FactoryGirl.define do
  factory :pen do
    name "pen test"
    price "9.99"
    color "test color"
    status false
    inward_date "2017-08-06"
    type Pen.model_name.to_s
    description "MyText"
  end

  factory :notebook do
    name "notebook test"
    price "9.99"
    status false
    inward_date "2017-08-06"
    type Notebook.model_name.to_s
    description "MyText"
  end
end
