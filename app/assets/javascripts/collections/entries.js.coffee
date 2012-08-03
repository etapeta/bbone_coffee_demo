class Raffler.Collections.Entries extends Backbone.Collection

  model: Raffler.Models.Entry

  url: '/api/entries'
  # GET /entries
  # POST /entries
  # GET /entries/:id
  # PUT /entries/:id
  # DELETE /entries/:id

  drawWinner: ->
    winner = @shuffle()[0]
    if winner
      winner.set(winner: true)
      winner.save()
      