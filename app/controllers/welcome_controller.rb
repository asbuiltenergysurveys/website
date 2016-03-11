class WelcomeController < ApplicationController
    def index

    end

    def find_local_office
        @office =
        respond_to do |format|
            format.js   {}
        end
    end

end
