
function ChangeEvent(obj,prop,oldvalue,newvalue) {
  this.obj = obj;
  this.prop = prop;
  this.oldvalue = oldvalue;
  this.newvalue = newvalue;
}

Object.prototype.xwatch = function (prop,func){
  if("function" == typeof this[prop]) {
    new FuncWatch(this,prop,func);
  } else {
    if(!Object.watch){
      new PropWatch(this,prop,func);
    }
    else{
	  if("function" != typeof func) return this;
      this.watch(prop,func);
    }
  }
  return this;
}
Object.prototype.xunwatch = function(prop,func){
  if("function" == typeof this[prop]) {
    FuncWatches = FuncWatches.filter(
      function(element){if(element.watches(this,prop,func)) { clearTimeout(element.timer); return false; } else return true;}.bind(this)
    );
  } else {
    if(!Object.watch){
    PropWatches = PropWatches.filter(
      function(element){if(element.watches(this,prop,func)) { clearTimeout(element.timer); return false; } else return true;}.bind(this)
    );
    }
    else{
	  if("function" != typeof func) return this;
      this.watch(prop,func);
    }
  }
  return this;
}
var FuncWatches = new Array;
function FuncWatch(obj,prop,func) {
  this.obj = obj;
  this.prop = prop;
  this.func = func;
  this[prop] = null;
  this.timer = this.calc.periodical(this.INTERVAL,this);
  this.xwatch(prop,func);
  FuncWatches.push(this);
}
FuncWatch.prototype.toString = function() { return 'watches '+this.obj.constructor.name+'.'+this.prop+'()';}
FuncWatch.prototype.watches = function(obj,prop,func) {
  return this.obj == obj && this.prop == prop && (func==null || this.func == func);
}
FuncWatch.prototype.INTERVAL = 200;
FuncWatch.prototype.calc = function() {
  if(this.obj[this.prop] != null && this[this.prop] != (this.newvalue = this.obj[this.prop]())){
    this[this.prop]=this.newvalue;
  }
}
var PropWatches = new Array;
function PropWatch(obj,prop,func) {
  this.obj = obj;
  this.prop = prop;
  this.func = func;
  this.oldvalue = this.obj[this.prop];
  this.timer = this.check.periodical(this.INTERVAL,this);
  PropWatches.push(this);
}
PropWatch.prototype.INTERVAL = 200;
PropWatch.prototype.watches = function(obj,prop,func) {
  return this.obj == obj && this.prop == prop && (func==null || this.func == func);
}
PropWatch.prototype.check = function(){
  if(this.obj[this.prop] != null && this.obj[this.prop] != this.oldvalue){
    this.oldvalue=this.func(this.prop,this.oldvalue,this.obj[this.prop]);
  }
}

//Function.prototype.xwatch(func) {  this.watch(this.name,func);}