class Api::V1::FactsController < ApplicationController
before_action :find_fact, only: [:show, :update, :destroy]


    # GET /procedures
    # GET /procedures.json
    def index
      @facts = Fact.all
      render json: @facts
    end

    # GET /procedures/1
    # GET /procedures/1.json
    def show
      render json: @fact
    end

    # POST /procedures
    # POST /procedures.json
    def create
      @fact = Fact.new(fact_params)


        if @fact.save
          format json: @fact
        else
          render error: {error: 'Unable to create facts.'}, status: 400
        end

    end


    # PATCH/PUT /procedures/1
    # PATCH/PUT /procedures/1.json
    def update
        if @fact
          @fact.update(fact_params)
          render json: {message: 'facts successfully update'}, status: 200
        else
          render json: {error: 'Unable to update facts.'}, status: 400
        end
    end

    # DELETE /procedures/1
    # DELETE /procedures/1.json
    def destroy
      if @fact
        @fact.destroy
        render json: {message: 'facts successfully deleted'}, status: 200
      else
        render json: {error: 'Unable to delete fact'}, status: 400
      end
    end

    private

      # Never trust parameters from the scary internet, only allow the white list through.
      def fact_params
        params.require(:fact).permit(:fact, :likes, :user_id)
      end

      def find_fact
        @fact = Fact.find(params[:id])
      end


end
