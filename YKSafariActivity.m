//
//  YKSafariActivity.m
//  Copyright (c) 2012 yuyak. All rights reserved.
//

#import "YKSafariActivity.h"

@interface YKSafariActivity ()

@property (nonatomic, strong) NSURL *url;

@end

@implementation YKSafariActivity

- (NSURL *)urlForActivityItems:(NSArray *)activityItems {
    for (id item in activityItems) {
        if ([item isKindOfClass:[NSURL class]]) {
          return item;
        }
    }

    return nil;
}

- (NSString *)activityType {
    return @"Safari";
}

- (UIViewController *)activityViewController {
    return nil;
}

- (UIImage *)activityImage {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
        return [UIImage imageNamed:@"safari-ipad.png"];
    return [UIImage imageNamed:@"safari.png"];
}

- (NSString *)activityTitle {
    return @"Safari";
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems {
   return [self urlForActivityItems:activityItems] != nil;
}

- (void)prepareWithActivityItems:(NSArray *)activityItems {
  self.url = [self urlForActivityItems:activityItems];
}

- (void)performActivity {
    [[UIApplication sharedApplication] openURL:self.url];
    [self activityDidFinish:YES];
}

@end
