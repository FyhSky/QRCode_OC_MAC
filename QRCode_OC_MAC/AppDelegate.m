//
//  AppDelegate.m
//  QRCode_OC_MAC
//
//  Created by SkyNullCode on 4/24/15.
//  Copyright (c) 2015 SkyNullCode. All rights reserved.
//

#import "AppDelegate.h"
#import "QRCodeGenerator.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSImageView *qrcodeImageView;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSImage *image = [QRCodeGenerator qrImageForString:@"https://github.com/FyhSky/" imageSize:200];
    [self.qrcodeImageView setImage:image];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
