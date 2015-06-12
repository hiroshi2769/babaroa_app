require 'spec_helper'

describe "StaticPages" do

   let(:base_title) { "ニセコイバンバン" }

   describe "Home page" do
     it "ニセコイかも知れない 'Babaroa App'" do
     visit '/static_pages/home'
     expect(page).to have_content('小野寺')
     end

     it "正しいタイトル持ってるだろ！" do
     visit '/static_pages/home'
     expect(page).to have_title("#{base_title} | 小野寺")
     end
   
   end

   describe "Help page" do
     it "あー楽様かも知れない 'Babaroa App'" do
     visit '/static_pages/help'
     expect(page).to have_content('あーらく様')
     end

     it "正しいタイトル持ってるだろ！らく様" do
     visit '/static_pages/help'
     expect(page).to have_title("#{base_title} | あーらく様")
     end
   
   end

   describe "千棘の攻撃 page" do
     it "気付いてしまった千棘'About ニセコイ'" do
     visit '/static_pages/about'
     expect(page).to have_content('千棘')
     end

     it "正しいタイトル持ってるだろ！千棘" do
     visit '/static_pages/about'
     expect(page).to have_title("#{base_title} | 千棘")
     end
   end
   
   describe "マリカの強襲 page" do
     it "本当は身体が弱い万里花'About ニセコイ'" do
     visit '/static_pages/contact'
     expect(page).to have_content('万里花')
     end

     it "正しいタイトル持ってるだろ！万里花" do
     visit '/static_pages/contact'
     expect(page).to have_title("#{base_title} | 万里花")
     end
   end

end
