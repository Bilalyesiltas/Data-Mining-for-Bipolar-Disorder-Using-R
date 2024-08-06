# -*- coding: utf-8 -*-

install.packages("xlsx") ##Excel dosyalarını okuma ve yazma işlemleri için kullanılır.
install.packages("tuber") ## YouTube API ile etkileşimde bulunmak için kullanılır.
install.packages("magrittr") ## (%>%) komutu ile zincirleme yapan paket.
install.packages("purrr") ##Fonksiyonel programlama prensiplerini kullanarak veri yapıları üzerinde işlem yapmak için kullanılır
install.packages("dplyr") ##Veri çerçeveleri üzerinde veri manipülasyonu ve işlemleri için kullanılır.
install.packages("tidyverse") ##dplyr, ggplot2, tidyr gibi birçok temel paketi içeren bir veri analizi ve görselleştirme paketler bütünüdür.
install.packages("promises")##Asenkron programlama ve paralel hesaplamalar için kullanılır.
install.packages("httpuv")##Web uygulamaları oluşturmak için kullanılır.
install.packages("readr")##Düz metin dosyalarını okumak için kullanılır.
install.packages("readxl")##Excel dosyalarını okumak için kullanılır.
install.packages("stringi")##hızlı ve taşınabilir karakter dizisi işleme paketi.
install.packages("stringr")##karakter yapılı veriler için kullanılan paket.
install.packages("tm") ##metin madenciliğinde kullanılan paket.
install.packages("pander")##R Markdown belgelerini daha güzel ve özelleştirilebilir hale getirmek için kullanılır.
install.packages("RCurl")##Web sayfalarını çekmek ve HTTP istekleri yapmak için kullanılır.
install.packages("wordcloud")## Kelime bulutları oluşturmak için kullanılır.
install.packages("ROAuth")##OAuth kimlik doğrulaması için kullanılır.
install.packages("ggplot2")##Veri görselleştirmesi için kullanılan güçlü bir grafik paketidir.
install.packages("lubridate")##Tarih ve saat işlemleri için kullanılır.
install.packages("tidytext")## Metin verileri üzerinde çalışmak için tidyverse prensiplerine uygun bir şekilde tasarlanmış bir pakettir
install.packages("RColorBrewer")##Renk paletleri oluşturmak için kullanılır.
install.packages("ggthemes")##ggplot2 grafiğine tema eklemek için kullanılır.
install.packages("ggpubr")##ggplot2 tablolarını ve grafiklerini düzenlemek ve birleştirmek için kullanılır.
install.packages("formattable")##Veri çerçevelerini düzenlemek ve özelleştirmek için kullanılır.
install.packages("psych")##İstatistiksel analiz ve psikometrik testler için kullanılır.
install.packages("GGally")## ggplot2 tablolarını ve grafiklerini düzenlemek için kullanılır.
install.packages("rstatix")## İstatistik analizi ve veri görselleştirmesi için kullanılır.
install.packages("sentimentr")##Duygu analizi yapmak için kullanılır.
install.packages("webshot")##Web sayfalarının görüntülerini yakalamak için kullanılır.
install.packages("htmlwidgets")##HTML ve JavaScript tabanlı interaktif widget'ları R ortamında kullanmak için kullanılır.
install.packages("syuzhet")##Metin verilerindeki duygusal içeriği analiz etmek için kullanılır.
install.packages("skimr")##Veri çerçevelerini özetlemek ve analiz etmek için kullanılır.
install.packages("janitor")##Veri çerçevelerini temizlemek ve düzenlemek için kullanılır.
install.packages("openssl")##Güvenli iletişim ve şifreleme işlemleri için kullanılır.
install.packages("writexl")##Excel dosyalarını yazmak için kullanılır.
install.packages("stopwords")##Metin madenciliği için yaygın kelimeleri filtrelemek için kullanılır.
install.packages("devtools")##R paketlerini geliştirmek ve yönetmek için kullanılır.
install.packages("tibble")## Veri çerçeveleri için modern bir alternatiftir.
install.packages("rmarkdown")## R Markdown belgeleri oluşturmak için kullanılır
install.packages("ggstance")##Yatay (horizontal) bar plotlar oluşturmak için kullanılır.
install.packages("pastecs")##İstatistiksel özetler ve görselleştirmeler için kullanılır.
install.packages("kableExtra")##R Markdown tablolarını özelleştirmek için kullanılır.
install.packages("citation")## R paketlerine atıfta bulunmak için kullanılır.
install.packages("lubridate")## Bu paket, tarih-zaman manipülasyonları, ayrıştırma ve biçimlendirme gibi yaygın görevleri basitleştiren fonksiyonlar sağlar.


library(tuber)
library(magrittr)
library(purrr)
library(dplyr)
library(tidyverse)
library(promises)
library(httpuv)
library(readr)
library(readxl)
library(stringi)
library(stringr)
library(tm)
library(pander)
library(RCurl)
library(wordcloud)
library(ROAuth)
library(ggplot2)
library(lubridate)
library(tidytext)
library(RColorBrewer)
library(ggthemes)
library(ggpubr)
library(formattable)
library(psych)
library(GGally)
library(rstatix)
library(sentimentr)
library(webshot)
library(htmlwidgets)
library(syuzhet)
library(skimr)
library(janitor)
library(openssl)
library(writexl)
library(stopwords)
library(devtools)
library(tibble)
library(rmarkdown)
library(ggstance)
library(pastecs)
library(kableExtra)
library(citation)
library(lubridate)
library(tm)
library(xlsx)
library(rJava)

write.csv(liste, file = "veriler.csv", row.names = FALSE, fileEncoding = "UTF-8")

#YouTube API'sini Kullanarak Belirli Bir Videoya Ait Yorumları Çekmeye Yönelik İslemler:

client_id <- "216516758822-u548v987gp9i2maepnsle4dpd1f9u9vr.apps.googleusercontent.com"
client_secret <-"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"
yt_oauth(client_id, client_secret, token = '')
get_all_comments(video_id = "***********")
comment <- get_all_comments (video_id = "***********")
write_xlsx (comment, "C:\\Youtube\\yorumlar12.xlsx")



##Excel Dosyasindan Veri Okuma ve Temizleme:

library(openxlsx)
bip <- read.xlsx(file.choose(), sheet = 1) 

##Metin Temizleme ve Duzeltme İslemleri:


bip$metin <- str_replace_all(bip$metin, "http[^[:space:]]", " ")
bip$metin <- str_replace_all(bip$metin,"#//S+", " ")
bip$metin <- str_replace_all(bip$metin,"@//S+", " ")
bip$metin <- str_replace_all(bip$metin, "[[:punct:][:blank:]]+"," ")
bip$metin <- str_to_lower(bip$metin, "tr")
bip$metin <- removeNumbers(bip$metin)
bip$metin <- str_replace_all(bip$metin, "[<].[>]", " ")
bip$metin <- gsub("\uFFD","", bip$metin, fixed= TRUE)
bip$metin <- gsub("\n", "", bip$metin, fixed = TRUE)
bip$metin <- str_replace_all(bip$metin, "[^[:alnum:]]", " ")
Sys.setlocale("LC_CTYPE","en_US.UTF-8")

##Stopword ve Frekans Analizi:

liste <- c(stopwords("en"),"bir","ve","çok","bu","ama","de","ben","var","da","gibi","için","ne","o", "daha","bende","kadar","iyi",
           "her","yok","sonra","hiç","bana","benim","bi","en","zor","olan","ki","olarak","mı","diye","sadece","değil","beni","şey",
           "cok","ya","ile","oluyor","bile","bazen","zaman","nasıl", "kötü","önce","insanlar","bunu","çünkü","olsun","artık","yıldır",
           "durum","allah","yıl","oldu","gün","fazla","kendi","sürekli","böyle","onu","olur","aynı","zaten","ay","olduğunu","hep","kabul",
           "ise", "kendimi","normal","öyle","insan","an","gerçekten","şuan","yada","tam","mı","fakat","az","hatta","olmak","sanki","yoksa",
           "önemli", "şeyler","ediyor","istiyorum","sizin","tüm","düzenli","annem","asla","biri", "mu","son","varsa","belki","devam",
           "ona","sene","yeni","şu","düşünüyorum","eğer", "geliyor","iki","içinde","olabilir","güzel","kimse","hepsi","hocam","neden","size",
           "veya","olduğu","olduğumu","ediyorum","farklı","hiçbir","lütfen","hem","aşırı", "yanı","mi","yani","ilk","kullanıyorum","ağır",
           "bilmiyorum","bence","başka","şimdi","şekilde","doktora","hastalığın","vs","kendini","ilacı","hastaları","durumu","yaşıyorum",
           "uzun","siz","kilo","dönem","doğru","biraz","acaba","yaşında","senedir","para","herkes","değildir","büyük", "tek","sizi","sen",
           "oldum","değilim","ciddi","arkadaşlar","versin","kontrol","kendime","bunun","boyu","bütüm","eşim","görüyorum","herkese", "için",
           "ilaçların","insanların","iyiyim","işe","konuldu","yüzden","babam","bazı","dedi","diğer","dönemde", "döneminde","ettim","evet",
           "gerekiyor","göre","insanlara","kız","mesela","olsa", "ortaya","sanırım","çoğu","aile","arkadaşım","başladı","dönemi","gerek",
           "istemiyorum","kaç","kesinlikle","kez","yapıyor","yardımcı","öğrendim","aslında","hiç","hissediyorum","kullandım","sahip","umarım",
           "yaşadım","ömür","anda","beri","biz","biz","destek","kullanmak","onun","vardı","vardır","yine","zarar","hemen","bütün","için","hiç",
           "anksiyete","icin","hic","teşhisi","ancak","hayat","yaşayan","yanlış,", "kendine","gittim","yüksek","kısa","lazım","nefret","bozukluğu","manik",
           "biliyorum","olup","başladım","hafta","kısa","yüksek","hastalığını","yaşayan","lazım","hayat","ailem","yanlış","gördüm","tavsiye",
           "ilaçla","hayatımı","hastalar","korkuyorum","sevgi","ayrıca","olmuş","çıktı","herşeyi","geçirdim","dolayı","genelde","olmuyor","duygu","mutlu","ruh",
           "kere","kişi", "yalnız", "kolay", "yapmak", "gun", "maddi", "kendinizi", "ilaçlarını", "tane", "tekrar", "hafta", "ilac", "ilaçları","ilaçlar",
           "kalp", "hastalığını", "degil", "şeyi", "gördüm", "geldi", "çocuk", "insanın", "bizim",  "insanları", "kendisi", "falan", "kondu",
           "yüzünden", "yüksek", "nefret", "hayat",  "bipolarlar", "olacak", "olun", "olup", "gelen", "yardım", "ailem", "fark", "biliyorum", 
           "bıraktım", "ancak", "başladım","yaşamak", "hastaneye", "almak","ilgili", "olmaz", "video",  "yanlış", "lazım", "yaşayan", "kendine", 
           "diyorum", "keşke", "etmek", "tamamen", "gittim ara", "olmayan", "ilaçlarla", "diyor", "birlikte", "yemek", "oluyorum", "tedavisi","hastasıyım",
           "süre", "kendinize", "zorunda", "buna", "hızlı", "belli", "hangi", "bunlar", "kesin", "bunları", "kişiler", "edin", "peki", "birden", 
           "acı", "sinir", "durumda", "ederim", "insanı", "bipolarim", "hastalıklar", "akıl", "merhaba", "hayatım", "rahatsızlığı", "zamanlar",
           "yüzünden", "kondu", "hayatım", "korkuyorum", "zorunda", "rahatsızlığı", "olmayan",  "merhaba", "ilaçla", "maddi", "genelde etmek", 
           "olun", "geçirdim", "degil", "sirah", "geldi", "peki", "başladım", "herşeyi", "tekrar", "olmuyor", "ilaçlarını", "nefret", "olacak", 
           "hala", "şeyi", "bizim", "yalnız","kısa", "insanların", "keşke", "hastalıklar", "etti", "ilgili", "fark", "gördüm", "yaşayan", 
           "hayat", "ara", "tane", "lazım", "hızlı", "ailem", "kolay", "herşey", "kişiler", "hangi", "ancak", "ederim", "gittim", "yardım", 
           "geçti", "kalp", "diyor", "beyin", "kere", "yüksek", "kendisi", "olup", "tamamen", "hamama", "ayrıca", "ilaçlarla", "kendinizi", 
           "yanlış", "kendine", "buna", "edin", "bunlar", "diyorum",  "tabi", "olmuş", "süre", "insanın", "yemek", "kullanıyor", "kendinize", 
           "bunları",  "yapmak", "kesin", "gun", "düşünce", "acı", "sonunda", "birden", "bipolarlar", "doktorlar",  "olmaz", "hastanede",
           "dolayı", "bıraktım", "falan", "zamanlar", "oluyorum", "bipoların" ,"gördüm","kendinizi","hastaneye","ilaçlarını","lazım",
           "biliyorum","şeyi","yaşayan","kendine","ailem","nefret","gittim","yanlış","yüksek","seni", "psikoloğa","kardeşim","panik","hastalarına",
           "tarafından", "onlar","tedaviye","bilgi","depresyonda","dönemleri","depresif","yanında","yere","boyunca","sorun", "yakın","iş","mümkün",
           "sabah","yan","halde","gidin","mutlaka","depresyonda", "mümkün","tedaviye","panik","yakın", "bilgi","boyunca","iş","tarafından",
           "kardeşim","dönemleri","yanında","defa","yapıyorum","neler","galiba","yapıyorum","kendim","rağmen","hale","hastalığı","bipolarım","hastası","tanısı","uyku","sağlıklı")
           

           
#Metin verileri üzerinde temizleme islemleri yapma, kelimelere ayırma ve bu kelimelerin frekanslarını görselleştirme:          

bip$metin <- removeWords(bip$metin, liste)

library(tidyverse)

kelimeler <- bip %>% select(metin) %>% mutate(linenumber = row_number()) %>% unnest_tokens(word,metin)

head(kelimeler)

kelimeler %>%
  count(word,sort = TRUE) %>%
  filter(n>20) %>%
  mutate(word = reorder(word,n)) %>%
  ggplot(aes(word,n,fill=word))+
  geom_col()+
  xlab(NULL)+
  coord_flip() + theme_minimal()+
  ggtitle("bipolar bozukluk hastaligi verisindeki kelimelerin frekans araliklari")


#Wordcloud fonksiyonunu kullanarak kelimelerin bir kelime bulutu olarak görselleştirilmesini sağlamak:

wordcloud(kelimeler$word, min.freq = 1, max.words = 30, scale = c(4,1,8),
          colors = brewer.pal(8, "Dark2"), random.color = T, random.order = F)


#Bir metin veri cercevesi olan bip üzerinde bir duygu analizi gerçeklestirme ve sonucları görselleştirme:

kutuphane<-bip

#Turkce kelimelerin polarite karsiligi -1 ve 1 olan lexicon verisetini cagirma

lexicon <- read.table(file.choose(),
                      header = TRUE,
                      sep = ';',
                      stringsAsFactors = FALSE)

lexicon2 <- lexicon %>%
  select(c("WORD","POLARITY")) %>%
  rename('word'="WORD", 'value'="POLARITY")

#Duygu Analizi ve Sonucların Hesaplanmasi:

kutuphane %>%
  mutate(linenumber = row_number()) %>%
  unnest_tokens(word, metin) %>%
  inner_join(lexicon2) %>%
  group_by(linenumber) %>%
  summarise(sentiment = sum(value)) %>%
  left_join(
    kutuphane %>%
      mutate(linenumber = row_number())
  ) %>% write_csv("sentiment_output.csv")

yeni <- read_csv("sentiment_output.csv")

#Duygu Analizi Sonuclarinin İstatiksel Hesaplamalari:

neutral <- length(which(yeni$sentiment == 0))
positive <- length(which(yeni$sentiment > 0))
negative <- length(which(yeni$sentiment < 0))

toplam = positive + neutral + negative
Sentiment <- c("Pozitif", "Nötr", "Negatif")
Count <- c((positive/toplam)*100, (neutral/toplam)*100, (negative/toplam)*100)
output <- data.frame(Sentiment, Count)
output$Sentiment <- factor(output$Sentiment, levels=Sentiment)
ggplot(output, aes(x=Sentiment, y=Count))+
  geom_bar(stat = "identity", aes(fill = Sentiment))+
  ggtitle("Bipolar Bozukluk Hastaligi  Duygu Analizinin Oranlari")

head((positive/toplam)*100)
head((neutral/toplam)*100)
head((negative/toplam)*100)
