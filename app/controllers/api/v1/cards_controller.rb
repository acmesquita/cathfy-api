module Api
  module V1
    class CardsController < ApplicationController
      before_action :authenticate_user

      def create
        @card = Card.new(card_params)
        if(@card.position == -1)
          @card.position = @card.list.cards.size
        end
        if @card.save
          render json: @card, satuts: :created 
        end
      end

      def update
        @card = Card.find(params.require(:id))
        if @card.update(card_params)
          render json: @card, status: :success
        else
          render json: {error: 'Erro ao atualizar'}, status: :error
        end
      end
      
      def update_cards
        parametros = cards_params['cards']
        
        parametros.pluck(:id).each do |id_card|
          up = parametros.select{|p| p['id'] == id_card}.first
          puts up
          Card.update(id_card, up)
        end
      end
      
      private

      def card_params
        params.require(:card).permit!()
      end

      def cards_params
        params.permit!()
      end

    end
  end
end