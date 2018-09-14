require 'sinatra'
require 'json'

# GET /show
# (HTTPのGETメソッドで /show というパスにリクエストを送る）


get ['/hirame','/ohayo']do
  # Rubyのハッシュを作成、diaryという名前を付ける
  if point == 1
    diary = {
      mondai:"日本で一番北にある県は？？",
      select:"/hokkaido？ /aomori？"
    }
    diary.to_json
  end
  end
  get '/where' do
    # Rubyのハッシュを作成、diaryという名前を付ける
    diary = {
      here:"神戸電子専門学校　Webエンジニアコース南東　椅子の上"
    }
    diary.to_json
  end

get '/*' do
        # Rubyのハッシュを作成、diaryという名前を付ける
        count = 0
        point = 0
        if point == 0
        diary = {
          aisatu:"おはよう。                                                                 ",
          hajimeni:"いきなりだけど、５問クイズを出すから正解だと思う方を入力して",
          mondai:"            「鮃」この漢字の読みは？ /hirame /tai       "
        }

    # diaryをJSONテキストに変換して返す
    # （Rubyでは、最終行はメソッドの返り値(return)）
    diary.to_json

  end
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
