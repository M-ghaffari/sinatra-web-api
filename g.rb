require 'sinatra'
require 'json'


# GET /show
# (HTTPのGETメソッドで /show というパスにリクエストを送る）
#def initialize
#  @i = 1
#  $x = "a"
#  require_relative "sub"
  #if $x == "v"
  #  @count = 1
  #  @point = 1
  #  File.open("sub.rb","w") do |x|
  #    x.puts("Hello")
  #  end
  #  elsif @i == 1
  #    @point += 1
  #    @count += 1
  #  end
  #end
get ['/hirame']do
    $a = 1
    diary = {
      mondai:"日本で一番北にある県は？？",
      select:"/hokkaido？ /aomori？"
    }
    diary.to_json
end
get ['/tai']do
$a = 0
diary = {
  mondai:"日本で一番北にある県は？？",
  select:"/hokkaido？ /aomori？"
}
diary.to_json
end

    get ['/aomori']do
   $b = 1
    diary = {
      mondai:"世界一寒いのは？",
      select:"/hokkyoku？ /nankyoku？"
    }
    diary.to_json
  end

      get ['/hokkaido']do
      $b = 0
      diary = {
        mondai:"世界一寒いのは？",
        select:"/hokkyoku？ /nankyoku？"
      }
      diary.to_json
    end
    get ['/nankyoku']do
   $c = 1
    diary = {
      mondaid:"扇子の本来の目的は？",
      select:"/memo？ /mamorigatana？"
    }
    diary.to_json
  end
  get ['/hokkyoku']do
  $c = 0
  diary = {
    mondaid:"扇子の本来の目的は？",
    select:"/memo？ /mamorigatana？"
  }
  diary.to_json
end
get ['/memo']do
$d = 1
diary = {
  mondaid:"ドライブスルーできるのは？",
  select:"/uma？ /toho？"
}
diary.to_json
end
get ['/mamorigatana']do
$d = 0
diary = {
  mondaid:"ドライブスルーできるのは？",
  select:"/uma？ /toho？"
}
diary.to_json
end
get ['/uma']do
$e = 1
x = 0
x = $a + $b + $c + $d + $e
diary = {
  finish:"あなたの得点は#{x}点です"
}
diary.to_json
end

get ['/toho']do
$e = 0
x = 0
x = $a + $b + $c + $d + $e
diary = {
  finish:"あなたの得点は#{x}点です"
}
diary.to_json
end


get '/*' do
        # Rubyのハッシュを作成、diaryという名前を付ける

        diary = {
          aisatu:"おはよう。",
          hajimeni:"いきなりだけど、５問クイズを出すから正解だと思う方を入力して",
          mondai:"「鮃」この漢字の読みは？ /hirame /tai"
        }

    # diaryをJSONテキストに変換して返す
    # （Rubyでは、最終行はメソッドの返り値(return)）
    diary.to_json
  end
  get '/show' do
    param1 = params['param1']
    param2 = params['param2']
    '1番目: ' + param1 + ', 2番目: ' + param2   # レスポンスを返す
  end
# POST /edit
# (HTTPのPOSTメソッドで /edit というパスにリクエストを送る）
# 要・リクエストボディ（パラメータを渡す必要がある）
post '/edit' do
  # リクエストボディを読み込む
  body = request.body.read.force_encoding("utf-8")
  if body == ''
    # HTTPのステータスコード「400」（Bad Request）を返す
    # （400は「クライアント側のリクエストが間違っている」という意味）
    status 400
  else

    # 送られてきたbodyを、そのままJSONテキストとして返す
    body.to_json

  end
end
