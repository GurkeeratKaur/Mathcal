/********* mathcal.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface mathcal : CDVPlugin {
  // Member variables go here.
}

// - (void)coolMethod:(CDVInvokedUrlCommand*)command;
- (void)add:(CDVInvokedUrlCommand*)command;
- (void)subtract:(CDVInvokedUrlCommand*)command;
@end

@implementation mathcal

- (void)add:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* param1 = [command.arguments objectAtIndex:0] valueForKey:"@param1";
    NSString* param2 = [command.arguments objectAtIndex:0] valueForKey:"@param2";

    if(param1 && param2 >=0 ){
        NSString* total = @(param1 + param2);
         pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    }else{
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
      [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)subtract:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* param1 = [command.arguments objectAtIndex:0] valueForKey:"@param1";
    NSString* param2 = [command.arguments objectAtIndex:0] valueForKey:"@param2";

    if(param1 && param2 >=0 ){
        NSString* total = @(param1 - param2);
         pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    }else{
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
      [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

// - (void)coolMethod:(CDVInvokedUrlCommand*)command
// {
//     CDVPluginResult* pluginResult = nil;
//     NSString* echo = [command.arguments objectAtIndex:0] ;
   
//     if (echo != nil && [echo length] > 0) {
//         pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
//     } else {
//         pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
//     }

//     [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
// }

@end
