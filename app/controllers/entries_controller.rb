class EntriesController < ApplicationController
    def notebook
    end

    def index
        @entries = Entry.all
    end

    def show
        @entry = Entry.find(params[:id])
    end

    def new
        @entry = Entry.new
    end

    def create
        @entry = Entry.new(params.require(:entry).permit(:title, :body))

        if @entry.save
            redirect_to @entry
        else
            render :new
        end
    end

    def edit
        @entry = Entry.find(params[:id])
    end

    def update
        @entry = Entry.find(params[:id])

        if @entry.update(params.require(:entry).permit(:title, :body))
            redirect_to @entry
        else
            render :edit
        end
    end

    def destroy
        @entry = Entry.find(params[:id])

        @entry.destroy
        redirect_to entries_path
    end
end
