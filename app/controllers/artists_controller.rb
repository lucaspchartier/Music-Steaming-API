# frozen_string_literal: true

class ArtistsController < ProtectedController
  before_action :set_artist, only: %i[show update destroy]
  attr_reader :current_user

  # GET /artists
  def index
    @artists = Artist.all

    render json: @artists
  end

  # GET /artists/1
  def show
    render json: @artist
  end

  # POST /artists
  def create
    @artist = current_user.artists.build(artist_params)

    if @artist.save
      render json: @artist, status: :created
    else
      render json: @artist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /artists/1
  def update
    if @artist.update(artist_params)
      render json: @artist
    else
      render json: @artist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /artists/1
  def destroy
    @artist.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = current_user.artists.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def artist_params
      params.require(:artist).permit(:name, :year_formed, :genre)
    end
end
