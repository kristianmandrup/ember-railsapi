var Pet = Em.Object.extend({
    name: null
});

var PetOwner = Ember.Mixin.create({
    pet: null,

    init: function() {
        // this._super();
        this.set("pet", Pet.create({}));
    }
});

var Male = Ember.Mixin.create({
    chromosomes: null,

    init: function() {
        // this._super();
        this.set("chromosomes", ["x", "y"]);
    }
});

var joe = Ember.Object.create(PetOwner, Male, {
    name: "Joe",

    init: function() {
        this.set("pet", Pet.create({}));
        this.set("chromosomes", ["x", "y"]);   
        this.get("pet").set("name", "Fifi");
    }
}, {
    age: 25
});

console.log(joe.get("name"));
console.log("- age: " + joe.get("age"));
console.log("- chromosomes: " + joe.get("chromosomes"));
console.log("- pet: " + joe.get("pet.name"));