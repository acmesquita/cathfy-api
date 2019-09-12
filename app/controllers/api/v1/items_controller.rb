module Api
  module V1
    class ItemsController < ApplicationController
      before_action :authenticate_user

      def create
        @item = Item.create(items_params)
        render json: @item, status: :ok
      end

      def update
        @item = Item.find(params.require(:id))
        if @item.update(items_params)
          render json: @item, status: :success
        else
          render json: {error: 'Erro ao atualizar'}, status: :error
        end
      end
      
      private

      def items_params
        params.require(:item).permit!()
      end

    end
  end
end