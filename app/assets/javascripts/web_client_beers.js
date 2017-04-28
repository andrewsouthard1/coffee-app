/* global $ */
/* global Vue */

document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      message: 'Hello Vue!',
      beers: [],
      newName: '',
      newHop: '',
      newIbu: ''
    },
    methods: {
      createBeer: function() {
        var parameters = {
          name: this.newName,
          hop: this.newHop,
          ibu: this.newIbu,
          id: this.id
        };
        console.log("create beer method");
        $.post('/api/v1/beers', parameters, function(response) {
          console.log(response);
          this.beers.push(response);
        }.bind(this)).fail(function(response) {
          console.log(response.responseJSON);
        }.bind(this));
        this.newName = '';
        this.newHop = '';
        this.newIbu = '';
      },

      deleteBeer: function() {
        console.log("delete beer method called");

      }
    },
    mounted: function() {
      $.get('/api/v1/beers', function(response) {
        console.log(response);
        this.beers = response;
      }.bind(this));
    }
  });
});