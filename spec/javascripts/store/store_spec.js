//= require spec_helper
//= require store

describe("App.Store", function() {
  var store;

  beforeEach(function() {
    store = Util.lookupStore();
  });

  it("works with latest Ember-Data revision", function() {
    assert.equal(store.get('revision'), 12);
  });
});