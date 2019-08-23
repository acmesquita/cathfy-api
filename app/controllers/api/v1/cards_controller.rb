module Api
  module V1
    class CardsController < ApplicationController

      def create
        @card = Card.new(card_params)
        
        if @card.save
          render json: @card, satuts: :created 
        end
      end
      
      private

      def card_params
        params.permit(:content, :user_id, :list_id)
      end

      def find_list

      end

    end
  end
end