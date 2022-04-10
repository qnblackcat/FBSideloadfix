#import <dlfcn.h>
#import "Util.h"
#import <Foundation/Foundation.h>

// Credit goes to opa334 and his code: https://github.com/opa334/IGSideloadFix

extern void initSideloadedFixes();

%ctor
{
	dlopen([[[NSBundle mainBundle].bundlePath stringByAppendingPathComponent:@"Frameworks/InstagramAppCoreFramework.framework/InstagramAppCoreFramework"] UTF8String], RTLD_NOW);
	initSideloadedFixes();
}