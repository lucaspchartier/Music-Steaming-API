# frozen_string_literal: true

class ReleasesController < ProtectedController
  before_action :set_release, only: %i[show update]
  attr_reader :current_user

  # POST /releases
  def create
    @release = current_user.artists.find(params[:release][:artist_id]).releases.build(release_params)

    if @release.save
      render json: @release, status: :created, location: @release
    else
      render json: @release.errors, status: :unprocessable_entity
    end
  end

  # PATCH /releases/1
  def update
    if @release.update(release_params)
      render json: @release
    else
      render json: @release.errors, status: :unprocessable_entity
    end
  end

  # DELETE /releases/1
  def destroy
    @release = current_user.releases.find(params[:id])

    @release.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_release
    @release = current_user.artists.find(params[:release][:artist_id]).build(release_params)
  end

  # Only allow a trusted parameter "white list" through.
  def release_params
    params.require(:release).permit(:title, :year_released, :number_of_tracks)
  end
end
