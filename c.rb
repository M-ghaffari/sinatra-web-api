require 'sinatra'
require 'json'

# GET /show
# (HTTPのGETメソッドで /show というパスにリクエストを送る）


get '/ohayo' do

   diary = {
    slect:""
   }
   diary.to_json
end
get '/*' do
　
   diary = {
    aisatu:"おはよう。今日も眼鏡が似合っているね。",
    hajimeni:"５問クイズを出すね。",
    mondai:"「鮃」この漢字の読みは？ /hirame /tai"
    }
    diary.to_json
end
get '/show' do
    param1 = params['param1']
    param2 = params['param2']

    '1番目: ' + param1 + ', 2番目: ' + param2   # レスポンスを返す
end

post '/edit' do

  body = request.body.read.force_encoding("utf-8")

if body == ''
    # HTTPのステータスコード「400」（Bad Request）を返す
    # （400は「クライアント側のリクエストが間違っている」という意味）
    status 400
else

    body.to_json
  end
end
