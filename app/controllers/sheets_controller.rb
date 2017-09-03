class SheetsController < ApplicationController

  before_action :set_sheet, only: [:show, :edit, :update, :destroy] # Permet un refactoring de la methode set_sheet (défini en private)
                                                                    # et ainsi supprimer la ligne de code dans les autres methodes
  def index
    @sheets = Sheet.all
  end

  def show
  end

  def new
    @sheet = Sheet.new
  end

  def create
    sheet = Sheet.create(sheet_params) #'sheet' = variable donnée lors de la creation d'une nouvelle sheet...
    redirect_to sheet_path(sheet)      #... pour pouvoir rediriger l'utilisateur vers cette sheet une fois crée (sheet_path(sheet))
  end

  def edit
  end

  def update
    @sheet.update(params[:sheet])
    redirect_to sheet_path(sheet)
  end

  def destroy
    @sheet.destroy
    redirect_to sheets_path
  end

  private

  def sheet_params
    params.require(:sheet).permit(:title, :artist, :genre)
  end

  def set_sheet
    @sheet = Sheet.find(params[:id])
  end

end
