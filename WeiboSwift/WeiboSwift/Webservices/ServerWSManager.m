//
//  ServerWSManager.m
//  AddressBook
//
//  Created by Smitesh Patel on 2015-06-23.
//  Copyright (c) 2015 Quix Creations. All rights reserved.
//

#import "ServerWSManager.h"

@interface ServerWSManager()
@property (nonatomic,weak) id delegate;
@end
@implementation ServerWSManager

+ (instancetype)sharedWSManager {
    static id _sharedWSManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedWSManager = [[self alloc] init];
    });
    
    return _sharedWSManager;
}

- (void)doActivationWithAgentID:(NSString *)agentID
                      sessoinId:(NSString *)sessionID
                 encryptPasword:(NSString *)encryptPassword
                       delegate:(id )delegate
{
    ServerWSBinding* binding = [ServerWSServiceSvc ServerWSBinding];
    binding.logXMLInOut = YES;
    self.delegate = delegate;
    ServerWSServiceSvc_agentActivation* activaterequest = [[ServerWSServiceSvc_agentActivation alloc] init];
    activaterequest.FSCCode = agentID;
    activaterequest.sessionId = sessionID;
    activaterequest.E2EE_RPIN = encryptPassword;
    activaterequest.public_Key = @"ipad";
    activaterequest.random_key = @"0";
    
    [binding agentActivationAsyncUsingAgentActivation:activaterequest delegate:self];
}


- (void) operation:(ServerWSBindingOperation *)operation completedWithResponse:(ServerWSBindingResponse *)response
{
    
    NSArray *responseBodyParts = response.bodyParts;
    id bodyPart;
    @try{
        bodyPart = [responseBodyParts objectAtIndex:0]; // Assuming just 1 part in response which is fine
        if ([bodyPart isKindOfClass:[SOAPFault class]]) {
            [self handSoapError:bodyPart];
        } else {
            [self handleActivationResponse:bodyPart];
        }
        
    }
    @catch (NSException* exception)
    {
        UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"Server Error"message:@"Error while trying to process request"delegate:self cancelButtonTitle:@"OK"otherButtonTitles: nil];
        [alert show];
        if([self.delegate respondsToSelector:@selector(activationFailed)]) {
            [self.delegate performSelector:@selector(activationFailed) withObject:nil];
        }
//        NSURL *nsurl=[NSURL URLWithString:self.urlString];
//        NSURLRequest *nsrequest=[NSURLRequest requestWithURL:nsurl];
//        [self.webview loadRequest:nsrequest]
    }
    
}
- (void)handSoapError:(SOAPFault *)fault
{
    //ALERT(@"Error", fault.faultstring);
    if([self.delegate respondsToSelector:@selector(activationFailed)]) {
        [self.delegate performSelector:@selector(activationFailed) withObject:nil];
    }
}
- (void)handleActivationResponse:(ServerWSServiceSvc_agentActivationResponse *)response
{
    
//    NSData *returnData = response.return_;
//    NSString *hashKey;
    if([self.delegate respondsToSelector:@selector(activationSuccess)]) {
        [self.delegate performSelector:@selector(activationSuccess) withObject:nil];
    }
    //    NSData *hash = [[self.agentPassword dataUsingEncoding:NSUTF8StringEncoding] SHA256Hash];
    //    hashKey  = [hash base64EncodedStringWithOptions:0];
    //    returnData =  [returnData decryptedAES256DataUsingKey:hash error:nil];
    
    
    
}

@end
