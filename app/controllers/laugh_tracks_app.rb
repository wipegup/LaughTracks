class LaughTracksApp < Sinatra::Base

  get '/' do
    @comedians = Comedian.all
    erb :default, :layout => :mylayout
  end

  get '/basic' do
    @comedians = Comedian.all
    erb :index
  end

  get '/specials/default' do
    erb :default_specials
  end

  get '/specials/:comedian_id' do
    @specials = Special.where(comedian_id: params[:comedian_id])
    erb :"specials"
  end

  get '/:comedian_id/:comedian' do
    @comedian_id = params[:comedian_id]
    # params.delete(:comedian_id)
    # params.delete(:comedian)

    @comedians = Comedian.all
    # params.each do |key, value|
    #   @comedians = @comedians.where(key, value)
    # end

    @comedian_info = Comedian.find(@comedian_id)
    @specials = Special.where(comedian_id: @comedian_id)
    # require 'pry'; binding.pry
    erb :comedian2, :layout => :mylayout
  end


end
