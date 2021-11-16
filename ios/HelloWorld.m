//
//  HelloWorld.m
//  AwesomeProject
//
//  Created by Rudresh Uppin on 14/11/21.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(HelloWorld, NSObject)
RCT_EXTERN_METHOD(ShowMessage:(NSString *)message duration:(double *)duration)
@end
