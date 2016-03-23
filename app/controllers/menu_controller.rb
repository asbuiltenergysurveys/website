class MenuController < ApplicationController
    
    def offices
        @offices = Office.select(:name, :email, :tel).distinct.order(:name)
    end

end