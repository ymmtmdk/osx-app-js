ObjC.import 'Cocoa'

win = $.NSWindow.alloc.initWithContentRectStyleMaskBackingDefer(
  $.NSMakeRect(0, 0, 160, 90)
  , $.NSTitledWindowMask | $.NSMiniaturizableWindowMask | $.NSClosableWindowMask
  , $.NSBackingStoreBuffered
  , false)

win.title = 'my win'
win.center
win.makeKeyAndOrderFront win
