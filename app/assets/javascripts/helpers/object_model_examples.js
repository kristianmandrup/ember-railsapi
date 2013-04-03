Logger = Ember.Object.extend({
    log: function(thing) {
        console.log(thing + ' wassup');
    }
});

var logger1 = Logger.create();
var logger2 = Logger.create();

// instances of Logger have a 'wassup' method
try { Logger.log("1, yo"); } catch (e) {} // Object (subclass of Ember.Object) has no method 'log'
logger1.log("1, yo"); // 1, yo wassup
logger2.log("1, yo"); // 1, yo wassup

console.log('----');

// overwrite log of concrete logger instance logger1
logger1.reopen({
    log: function(name) {
        console.log(name + ' ghurt');
    }
});

try { Logger.log("1, yo"); } catch (e) {} // Object (subclass of Ember.Object) has no method 'log'
logger1.log("2, yo"); // 2, yo ghurt
logger2.log("2, yo"); // 2, yo wassup

console.log('----');

// classes of Logger have a 'fresh' method
Logger.reopenClass({
    log: function(name) {
        console.log(name + ' fresh');
    }
});

Logger.log("3, yo"); // 3, yo fresh
logger1.log("3, yo"); // 3, yo ghurt
logger2.log("3, yo"); // 3, yo wassup

console.log('----');

// new* instances of Logger have from now on a 'dawg' method
// * this will likely change in the future so already existing instances will reopened too
Logger.reopen({
    log: function(name) {
        console.log(name + ' dawg');
    }
});

Logger.log("4, yo"); // 4, yo fresh
logger1.log("4, yo"); // 4, yo ghurt
logger2.log("4, yo"); // 4, yo wassup
Logger.create().log("4, yo"); // 4, yo dawg

console.log('----');