maas = 0

while maas <= 0
  puts "Lütfen maaşınızı giriniz"
  maas = gets.chomp.to_i

  if maas <= 0
    puts "Geçerli bir maaş giriniz."
  end
end

yuzde = nil

while yuzde.nil? || yuzde.to_i.to_s != yuzde
  puts "Lütfen zam yüzdesini giriniz (örneğin, %35 ise 35 olarak giriniz)"
  yuzde = gets.chomp

  if yuzde.to_i.to_s != yuzde
    puts "Geçerli bir rakam giriniz."
  end
end

yuzde = yuzde.to_i


zam_miktari = (maas * yuzde) / 100
zam_sonrasi_maas = maas + zam_miktari


puts "Zam miktarı: #{zam_miktari} TL"
puts "Zamdan sonra maaşınız: #{zam_sonrasi_maas} TL"
