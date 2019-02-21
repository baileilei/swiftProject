//
//  ServerWSManager.h
//  AddressBook
//
//  Created by Smitesh Patel on 2015-06-23.
//  Copyright (c) 2015 Quix Creations. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ServerWSServiceSvc.h"

@protocol ServerWSManagerDelegate

- (void)activationSuccess;
- (void)activationFailed;
@end

@interface ServerWSManager : NSObject <ServerWSBindingResponseDelegate>
+ (instancetype)sharedWSManager;
- (void)doActivationWithAgentID:(NSString *)agentID
                      sessoinId:(NSString *)sessionID
                 encryptPasword:(NSString *)encryptPassword
                       delegate:(id )delegate;
@end
