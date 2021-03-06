ruleset hello_world {
  meta {
    name "Hello World"
    description <<
A first ruleset for the Quickstart
>>
    author "Phil Windley"
    logging on
    sharing on
    provides hello
  }
  global {
    hello = function(obj) {
      msg = "Hello " + obj + ", Im alive"
      msg
    };
  }
  rule hello_world {
    select when test hello
  pre{
    name = event:attr("name").klog("our passed in Name: ");
  }
  {
    send_directive("say") with
      something = "Hello World";
  }
  always{
    log("LOG says Hello " + name);
  }
  }
}

