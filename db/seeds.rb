require 'date'
nowt = Time.now
Question.create(:uname => "hiro", :content => "テスト大変？", :quetime => nowt)
Question.create(:uname => "haru", :content => "好きな食べ物は？", :quetime => nowt)
Question.create(:uname => "takashi", :content => "どうしていつも半そで半ズボンなの？", :quetime => nowt)
Question.create(:uname => "hirohiroshi", :content => "明日の実験どうする？", :quetime => nowt)