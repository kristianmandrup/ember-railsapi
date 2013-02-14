// Last commit: b6c4a80 (2013-02-13 20:27:17 -0500)


(function() {
Ember.FormBuilder = Ember.Namespace.create({
  VERSION: '0.0.1'
});

})();



(function() {
Ember.Handlebars.registerHelper('error', function(property, options) {
  if (this.errors) {
    options.hash.context = this;
    options.hash.property = property;
    return Ember.Handlebars.helpers.view.call(this, Ember.FormBuilder.Error, options);
  }
});

})();



(function() {
Ember.Handlebars.registerBoundHelper('formFor', function(object, options) {
  return Ember.Handlebars.helpers.view.call(object, Ember.FormBuilder.Form, options);
});

})();



(function() {
Ember.Handlebars.registerHelper('input', function(property, options) {
  options.hash.context = this;
  options.hash.property = property;
  return Ember.Handlebars.helpers.view.call(this, Ember.FormBuilder.Input, options);
});

})();



(function() {
Ember.Handlebars.registerHelper('textArea', function(property, options) {
  options.hash.valueBinding = property;
  return Ember.Handlebars.helpers.view.call(this, Ember.TextArea, options);
});

})();



(function() {
Ember.Handlebars.registerHelper('textField', function(property, options) {
  options.hash.valueBinding = property;
  return Ember.Handlebars.helpers.view.call(this, Ember.TextField, options);
});

})();



(function() {

})();



(function() {
Ember.FormBuilder.Error = Ember.View.extend({
  tagName: 'span',
  classNames: ['error'],
  init: function() {
    this._super();
    this.set('template', Ember.Handlebars.compile('{{errors.'+this.property+'}}'));
  }
});

})();



(function() {
Ember.FormBuilder.Form = Ember.View.extend({
  tagName: 'form'
});

})();



(function() {
Ember.FormBuilder.Input = Ember.View.extend({
  tagName: 'div',
  classNames: ['input', 'string'],
  classNameBindings: ['error:field_with_errors'],
  init: function() {
    this._super();
    this.set('model', this._context);
    this.set('template', Ember.Handlebars.compile('<label for="'+this.labelFor()+'"}}>'+this.labelText()+'</label>\n{{'+this.inputHelper()+' '+this.property+'}}{{error '+this.property+'}}'));
    if(this.model.errors) {
      this.reopen({
        error: function() {
          return this.model.errors.get(this.property) !== undefined;
        }.property('model.errors.'+this.property)
      });
    }
  },
  labelFor: function() {
    return Ember.guidFor(this.model);
  },
  labelText: function() {
    return this.label || this.property.underscore().split('_').join(' ').capitalize();
  },
  inputHelper: function() {
    if(this.as === 'text') {
      return 'textArea';
    } else {
      return 'textField';
    }
  },
  focusOut: function() {
    if (this.model.validate) {
      this.model.validate(this.property);
    }
  }
});

})();



(function() {

})();



(function() {
Ember.TEMPLATES['formBuilder/input'] = Ember.Handlebars.compile('<label {{bindAttr for="labelFor"}}>{{labelText}}</label>');

})();



(function() {

})();



(function() {
Ember.FormBuilder.objectNameFor = function(object) {
  var constructorArray = object.constructor.toString().split('.');
  return constructorArray[constructorArray.length - 1].underscore();
};

})();



(function() {

})();

