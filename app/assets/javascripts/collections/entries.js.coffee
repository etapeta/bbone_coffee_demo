class Raffler.Collections.Entries extends Backbone.Collection

  url: '/api/entries'
  # GET /entries
  # POST /entries
  # GET /entries/:id
  # PUT /entries/:id
  # DELETE /entries/:id
  model: Raffler.Models.Entry

  drawWinner: ->
    winner = @shuffle()[0]
    winner.win() if winner
