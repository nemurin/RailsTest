# RailsTest

## 2章
- HTML出力
- クエリパラメータ使い方(if params['msg']!=nil then)
- Viewテンプレート(index.html.reb,sccs,controller,routes.rb)
- hello controller.rb 
```
class HeloController < ApplicationController
    def index
        if params['msg']!=nil then
            @title=params['msg']
        else 
            @title='index'
        end
        @msg='this is redirect sample...'
    end
    def other
        redirect_to action: :index,params:{'msg':'from other page'}
    end
end
```
- index.html.erb

```
<h1><%= @title %></h1>
<p><%= @msg %></p>
```
- helo.css
```
body{
    color:darkgray;
    font-size: 18pt;
    margin: 10px 20px;
}
h1{
    color:darkgray;
    font-size:32pt;
    margin:50px 0px;
}
```
- routes.rb
```
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'helo/index'
  get 'helo', to: 'helo#index'
  get 'helo/other'
end

```
- リダイレクト(redirect_to action)
- フォームの送信
