class HomeController < ApplicationController
  def index
    # index라는 메서드(액션)을 만들었다. 이것은 view 폴더에 index.erb와 같은 이름
  end

  def hi
    @show_message = true
    @message = "도망쳐!"
  end
end
