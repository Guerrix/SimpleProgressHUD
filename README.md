# SimpleProgressHUD

SimpleProgressHUD is an very simple and lightweight progress HUD for iOS.  It is  highly inspired on Sam Vermette's SVProgressHUD:https://github.com/samvermette/SVProgressHUD for iOS. 

## ScreenShot:
![SimpleProgressHUD ON](http://f.cl.ly/items/3b2D0y0g3r1o2z2U3z3j/iOS%20Simulator%20Screen%20shot%20Feb%2021,%202012%2012.04.22%20PM.png)

#Installation

* Drag the @ProgressHUD@ folder into your project. 
* Import the @ProgressHUD.h@ wherever you need


# Usage

See the sample Xcode project in @/Demo@

SimpleProgressHUD is created as a singleton, it doesn't need to be explicitly allocated and instantiated; you directly call @[ProgressHUD defaultHUD]@ and can be shown using 

<pre>
- showInView:(UIView*)view;
</pre>

You dismiss it using:

<pre>
-(void) hideActivityIndicator;
</pre>



# Automatic Reference Counting (ARC) support

If you are using ARC in your project just delete the @dealloc@ in the ProgressHUD Class

