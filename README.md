h1. SimpleProgressHUD

SimpleProgressHUD is an very simple and lightweight progress HUD for iOS.  It is  highly inspired on Sam Vermette's SVProgressHUD:https://github.com/samvermette/SVProgressHUD for iOS. 

!http://f.cl.ly/items/231Y2A0t0t1J0B0r3N0p/svprogresshud3.png!

h2. Installation

* Drag the @ProgressHUD@ folder into your project. 
* Import the @ProgressHUD.h@ wherever you need


h2. Usage

See the sample Xcode project in @/Demo@

SimpleProgressHUD is created as a singleton, it doesn't need to be explicitly allocated and instantiated; you directly call @[ProgressHUD defaultHUD]@ and can be shown using 

<pre>
- showInView:(UIView*)view;
</pre>

You dismiss it using:

<pre>
-(void) hideActivityIndicator;
</pre>



h2. Automatic Reference Counting (ARC) support

If you are using ARC in your project just delete the @dealloc@ in the ProgressHUD Class

