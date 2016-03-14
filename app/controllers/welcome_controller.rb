class WelcomeController < ApplicationController
    def index

    end

    def find_local_office
        if params["postcode"].empty?
            @office=nil;
        else
            @office = Office.where("lower(post_code) LIKE ?", "%#{params["postcode"].downcase.split[0]}%");
        end

        respond_to do |format|
            format.js   {}
        end
    end

end
