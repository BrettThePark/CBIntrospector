//
//  DCIntrospectDemo
//
//  Created by Domestic Cat on 29/04/11.
//

#import "DCIntrospectDemoAppDelegate.h"
#import "DCIntrospectDemoViewController.h"
#import "CBIntrospect.h"

@implementation DCIntrospectDemoAppDelegate

@synthesize window;
@synthesize viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	// create a custom tap gesture recognizer so introspection can be invoked from a device
	// this one is a three finger double tap
    /*
	UITapGestureRecognizer *defaultGestureRecognizer = [[[UITapGestureRecognizer alloc] init] autorelease];
	defaultGestureRecognizer.cancelsTouchesInView = NO;
	defaultGestureRecognizer.delaysTouchesBegan = NO;
	defaultGestureRecognizer.delaysTouchesEnded = NO;
	defaultGestureRecognizer.numberOfTapsRequired = 2;
	defaultGestureRecognizer.numberOfTouchesRequired = 1;
	[DCIntrospect sharedIntrospector].invokeGestureRecognizer = defaultGestureRecognizer;
*/
	self.window.rootViewController = self.viewController;
	[self.window makeKeyAndVisible];

	// always insert this AFTER makeKeyAndVisible so statusBarOrientation is reported correctly.
	[[CBIntrospect sharedIntrospector] start];

	return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

- (void)dealloc
{
#if ! CB_HAS_ARC
	[window release];
	[viewController release];

	[super dealloc];
#endif
}

@end
