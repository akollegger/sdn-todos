$(document).ready(function() {

	 $.ajaxSetup ({  
		    cache: false  
		});
	
  var BetterListModel = function (datastore) {
    this.datastore = datastore;
    this.itemToAdd = ko.observable("");
    this.allItems = ko.observableArray(["Fries", "Eggs Benedict", "Ham", "Cheese"]); // Initial items
    this.selectedItems = ko.observableArray(["Ham"]);                                // Initial selection
 
    this.addItem = function () {
        if ((this.itemToAdd() != "") && (this.allItems.indexOf(this.itemToAdd()) < 0)) // Prevent blanks and duplicates
            this.allItems.push(this.itemToAdd());
        this.itemToAdd(""); // Clear the text box
    };
 
    this.removeSelected = function () {
        this.allItems.removeAll(this.selectedItems());
        this.selectedItems([]); // Clear selection
    };
 
    this.sortItems = function() {
        this.allItems.sort();
    };

    // load items from server
    this.refreshItems = function() {
      this.selectedItems([]);
      this.allItems([]);
      this.datastore.loadTodos(this.allItems);
    };


  };

  var Neo4jDataStore = function() {
    var jsonUrl = "api/todos";

    this.loadTodos = function(model) {
	   
      $.getJSON(  
        jsonUrl,  
        function(json) {  
          // clear selection and initial items

          $.each(json, function(i, todo) {
            model.push(todo);
          });
        }  
      );   
    }
  };
 
  ko.applyBindings(new BetterListModel(new Neo4jDataStore()));
  
  
});
