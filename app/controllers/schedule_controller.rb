class ScheduleController < ApplicationController
  def index
    @games = {start_time: "2022-02-17", name: "vs CBJ"}
  end
end
