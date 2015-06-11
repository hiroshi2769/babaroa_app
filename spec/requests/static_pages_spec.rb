require 'spec_helper'

describe "StaticPages" do
   describe "Home page" do
     it "ニセコイかも知れない 'Babaroa App'" do
     visit '/static_pages/home'
     expect(page).to have_content('小野寺')
     end

     it "正しいタイトル持ってるだろ！" do
     visit '/static_pages/home'
     expect(page).to have_title("ニセコイ | 小野寺")
     end
   
   end
   describe "Help page" do
     it "あー楽様かも知れない 'Babaroa App'" do
     visit '/static_pages/help'
     expect(page).to have_content('らく様')
     end

     it "正しいタイトル持ってるだろ！らく様" do
     visit '/static_pages/help'
     expect(page).to have_title("ニセコイ | あーらく様")
     end
   
   end

   describe "千棘の攻撃 page" do
     it "気付いてしまった千棘'About ニセコイ'" do
     visit '/static_pages/about'
     expect(page).to have_content('千棘')
     end
   end

     it "正しいタイトル持ってるだろ！千棘" do
     visit '/static_pages/about'
     expect(page).to have_title("ニセコイ | 千棘")
     end
   
end
