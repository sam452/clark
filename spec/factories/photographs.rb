# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photograph do
    association :project
    filename "MyString"
    path "MyString"
    featured false
    coolness 1
    discontinued false
    caption "MyString"
    gps "MyString"
    make "MyString"
    model "MyString"
    photographed "2013-04-29 10:06:05"
    shutter "MyString"
    f_stop "MyString"
    aperture "MyString"
    iso 1
    focal_length "MyString"
    lens "MyString"
    flash "MyText"
  end
end
