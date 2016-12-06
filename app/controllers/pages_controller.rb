class PagesController < ApplicationController
    def home
    end
    
    def products
        @products = Product.all #Product.includes() TODO
    end
    
    def news
    end
    
    def faq
    end
    
    def about
    end
end