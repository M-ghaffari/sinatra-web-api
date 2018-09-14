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
get '/ohayo' do

   diary = {
    aisatu:"おはよう川村君。今日も眼鏡が似合っているね。"
   }
   diary.to_json
end
  get '/where' do

    diary = {
      here:"神戸電子専門学校　Webエンジニアコース南東　椅子の上"
    }
      diary.to_json



end
    get '/*' do

        diary = {
        rand1:"おはよう
        で絵でd"
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
