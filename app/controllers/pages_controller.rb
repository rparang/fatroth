class PagesController < ApplicationController

  def bing_verify
	data = '<?xml version="1.0"?><users><user>0820DD2B1700372D911D7738B5510DE8</user></users>'
    render xml: data
  end

  def about
  	@title = "About Us | FatRoth"
  end

  def disclaimer
  	@title = "Disclaimer | FatRoth"
  end

end