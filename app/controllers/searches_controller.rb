class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = VGTTXFIR1KPBXWIJQ252YLXHAKBKDMRFDXYG0FIPO4WOA0PN
      req.params['client_secret'] = QTIAEZH5Q5DB32J5ZZVSTZDDVTPTSYP4ZXZKTR1RTSQ4OSKD
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
