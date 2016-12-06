class PagesController < ApplicationController
    def home
        if user_signed_in?
            @admin = current_user.admin
        end
    end
    
    def news
    end
    
    def faq
    end
    
    def about
    end
end