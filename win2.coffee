ObjC.import 'Cocoa'

ObjC.registerSubclass
  name: 'WinDelegate'
  superclass: 'NSObject',
  protocols: ['NSWindowDelegate'],
  methods: 'windowWillClose:':
    types: ['void', [ 'id' ]]
    implementation: (notification) ->
      app.terminate 0

win = $.NSWindow.alloc.initWithContentRectStyleMaskBackingDefer(
  $.NSMakeRect(0, 0, 160, 90)
  , $.NSTitledWindowMask | $.NSMiniaturizableWindowMask | $.NSClosableWindowMask
  , $.NSBackingStoreBuffered
  , false)

win.delegate = $.WinDelegate.alloc.init
win.title = 'my win2'
win.center
win.makeKeyAndOrderFront win

app = $.NSApplication.sharedApplication
app.setActivationPolicy $.NSApplicationActivationPolicyRegular
app.activateIgnoringOtherApps true
app.run()
