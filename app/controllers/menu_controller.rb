class MenuController < ApplicationController
    
    def offices
        @offices = Office.order(:name).uniq.pluck(:name, :email, :tel)
    end

end