#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
@class ServerWSServiceSvc_agentActivation;
@class ServerWSServiceSvc_agentActivationResponse;
@class ServerWSServiceSvc_checkVersion;
@class ServerWSServiceSvc_checkVersionResponse;
@class ServerWSServiceSvc_getFscInfo;
@class ServerWSServiceSvc_getFscInfoResponse;
@class ServerWSServiceSvc_getServerTimeStamp;
@class ServerWSServiceSvc_getServerTimeStampResponse;
@class ServerWSServiceSvc_handShake;
@class ServerWSServiceSvc_handShakeResponse;
@class ServerWSServiceSvc_receiveSubmition;
@class ServerWSServiceSvc_receiveSubmitionResponse;
@class ServerWSServiceSvc_receiveSubmitionTest;
@class ServerWSServiceSvc_receiveSubmitionTestResponse;
@class ServerWSServiceSvc_receiveVitalitySubmission;
@class ServerWSServiceSvc_receiveVitalitySubmissionOnly;
@class ServerWSServiceSvc_receiveVitalitySubmissionOnlyResponse;
@class ServerWSServiceSvc_receiveVitalitySubmissionResponse;
@class ServerWSServiceSvc_retrievePolicyNoWithERefNo;
@class ServerWSServiceSvc_retrievePolicyNoWithERefNoResponse;
@class ServerWSServiceSvc_updateWindowsInstaller;
@class ServerWSServiceSvc_updateWindowsInstallerResponse;
@interface ServerWSServiceSvc_agentActivation : NSObject {
	
/* elements */
	NSString * FSCCode;
	NSString * E2EE_RPIN;
	NSString * public_Key;
	NSString * random_key;
	NSString * sessionId;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_agentActivation *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * FSCCode;
@property (strong) NSString * E2EE_RPIN;
@property (strong) NSString * public_Key;
@property (strong) NSString * random_key;
@property (strong) NSString * sessionId;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_agentActivationResponse : NSObject {
	
/* elements */
	NSData * return_;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_agentActivationResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSData * return_;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_checkVersion : NSObject {
	
/* elements */
	NSString * majorVersion;
	NSString * type;
	NSString * minorVersion;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_checkVersion *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * majorVersion;
@property (strong) NSString * type;
@property (strong) NSString * minorVersion;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_checkVersionResponse : NSObject {
	
/* elements */
	NSData * return_;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_checkVersionResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSData * return_;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_getFscInfo : NSObject {
	
/* elements */
	NSString * FSCCode;
	NSString * token2FA;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_getFscInfo *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * FSCCode;
@property (strong) NSString * token2FA;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_getFscInfoResponse : NSObject {
	
/* elements */
	NSData * return_;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_getFscInfoResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSData * return_;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_getServerTimeStamp : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_getServerTimeStamp *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_getServerTimeStampResponse : NSObject {
	
/* elements */
	NSNumber * return_;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_getServerTimeStampResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSNumber * return_;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_handShake : NSObject {
	
/* elements */
	NSData * data;
	NSString * fileName;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_handShake *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSData * data;
@property (strong) NSString * fileName;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_handShakeResponse : NSObject {
	
/* elements */
	NSString * return_;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_handShakeResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * return_;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_receiveSubmition : NSObject {
	
/* elements */
	NSData * data;
	NSString * fileName;
	NSString * checkSum;
	NSString * token2FA;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_receiveSubmition *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSData * data;
@property (strong) NSString * fileName;
@property (strong) NSString * checkSum;
@property (strong) NSString * token2FA;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_receiveSubmitionResponse : NSObject {
	
/* elements */
	NSData * return_;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_receiveSubmitionResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSData * return_;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_receiveSubmitionTest : NSObject {
	
/* elements */
	NSData * data;
	NSString * fileName;
	NSString * checkSum;
	NSString * token2FA;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_receiveSubmitionTest *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSData * data;
@property (strong) NSString * fileName;
@property (strong) NSString * checkSum;
@property (strong) NSString * token2FA;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_receiveSubmitionTestResponse : NSObject {
	
/* elements */
	NSData * return_;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_receiveSubmitionTestResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSData * return_;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_receiveVitalitySubmission : NSObject {
	
/* elements */
	NSData * data;
	NSString * fileName;
	NSString * checkSum;
	NSString * token2FA;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_receiveVitalitySubmission *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSData * data;
@property (strong) NSString * fileName;
@property (strong) NSString * checkSum;
@property (strong) NSString * token2FA;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_receiveVitalitySubmissionOnly : NSObject {
	
/* elements */
	NSData * data;
	NSString * fileName;
	NSString * checkSum;
	NSString * token2FA;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_receiveVitalitySubmissionOnly *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSData * data;
@property (strong) NSString * fileName;
@property (strong) NSString * checkSum;
@property (strong) NSString * token2FA;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_receiveVitalitySubmissionOnlyResponse : NSObject {
	
/* elements */
	NSData * return_;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_receiveVitalitySubmissionOnlyResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSData * return_;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_receiveVitalitySubmissionResponse : NSObject {
	
/* elements */
	NSData * return_;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_receiveVitalitySubmissionResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSData * return_;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_retrievePolicyNoWithERefNo : NSObject {
	
/* elements */
	NSString * eRefNo;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_retrievePolicyNoWithERefNo *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * eRefNo;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_retrievePolicyNoWithERefNoResponse : NSObject {
	
/* elements */
	NSData * return_;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_retrievePolicyNoWithERefNoResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSData * return_;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_updateWindowsInstaller : NSObject {
	
/* elements */
	NSString * fileUrl;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_updateWindowsInstaller *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * fileUrl;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ServerWSServiceSvc_updateWindowsInstallerResponse : NSObject {
	
/* elements */
	NSData * return_;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ServerWSServiceSvc_updateWindowsInstallerResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSData * return_;
/* attributes */
- (NSDictionary *)attributes;
@end
/* Cookies handling provided by http://en.wikibooks.org/wiki/Programming:WebObjects/Web_Services/Web_Service_Provider */
#import <libxml/parser.h>
#import "xs.h"
#import "ServerWSServiceSvc.h"
@class ServerWSBinding;
@interface ServerWSServiceSvc : NSObject {
	
}
+ (ServerWSBinding *)ServerWSBinding;
@end
@class ServerWSBindingResponse;
@class ServerWSBindingOperation;
@protocol ServerWSBindingResponseDelegate <NSObject>
- (void) operation:(ServerWSBindingOperation *)operation completedWithResponse:(ServerWSBindingResponse *)response;
@end
@interface ServerWSBinding : NSObject <ServerWSBindingResponseDelegate> {
	NSURL *address;
	NSTimeInterval defaultTimeout;
	NSMutableArray *cookies;
	BOOL logXMLInOut;
	BOOL synchronousOperationComplete;
	NSString *authUsername;
	NSString *authPassword;
}
@property (copy) NSURL *address;
@property (assign) BOOL logXMLInOut;
@property (assign) NSTimeInterval defaultTimeout;
@property (nonatomic, strong) NSMutableArray *cookies;
@property (nonatomic, strong) NSString *authUsername;
@property (nonatomic, strong) NSString *authPassword;
- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(ServerWSBindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (ServerWSBindingResponse *)agentActivationUsingAgentActivation:(ServerWSServiceSvc_agentActivation *)aAgentActivation ;
- (void)agentActivationAsyncUsingAgentActivation:(ServerWSServiceSvc_agentActivation *)aAgentActivation  delegate:(id<ServerWSBindingResponseDelegate>)responseDelegate;
- (ServerWSBindingResponse *)checkVersionUsingCheckVersion:(ServerWSServiceSvc_checkVersion *)aCheckVersion ;
- (void)checkVersionAsyncUsingCheckVersion:(ServerWSServiceSvc_checkVersion *)aCheckVersion  delegate:(id<ServerWSBindingResponseDelegate>)responseDelegate;
- (ServerWSBindingResponse *)getFscInfoUsingGetFscInfo:(ServerWSServiceSvc_getFscInfo *)aGetFscInfo ;
- (void)getFscInfoAsyncUsingGetFscInfo:(ServerWSServiceSvc_getFscInfo *)aGetFscInfo  delegate:(id<ServerWSBindingResponseDelegate>)responseDelegate;
- (ServerWSBindingResponse *)getServerTimeStampUsingGetServerTimeStamp:(ServerWSServiceSvc_getServerTimeStamp *)aGetServerTimeStamp ;
- (void)getServerTimeStampAsyncUsingGetServerTimeStamp:(ServerWSServiceSvc_getServerTimeStamp *)aGetServerTimeStamp  delegate:(id<ServerWSBindingResponseDelegate>)responseDelegate;
- (ServerWSBindingResponse *)handShakeUsingHandShake:(ServerWSServiceSvc_handShake *)aHandShake ;
- (void)handShakeAsyncUsingHandShake:(ServerWSServiceSvc_handShake *)aHandShake  delegate:(id<ServerWSBindingResponseDelegate>)responseDelegate;
- (ServerWSBindingResponse *)receiveSubmitionUsingReceiveSubmition:(ServerWSServiceSvc_receiveSubmition *)aReceiveSubmition ;
- (void)receiveSubmitionAsyncUsingReceiveSubmition:(ServerWSServiceSvc_receiveSubmition *)aReceiveSubmition  delegate:(id<ServerWSBindingResponseDelegate>)responseDelegate;
- (ServerWSBindingResponse *)receiveSubmitionTestUsingReceiveSubmitionTest:(ServerWSServiceSvc_receiveSubmitionTest *)aReceiveSubmitionTest ;
- (void)receiveSubmitionTestAsyncUsingReceiveSubmitionTest:(ServerWSServiceSvc_receiveSubmitionTest *)aReceiveSubmitionTest  delegate:(id<ServerWSBindingResponseDelegate>)responseDelegate;
- (ServerWSBindingResponse *)receiveVitalitySubmissionUsingReceiveVitalitySubmission:(ServerWSServiceSvc_receiveVitalitySubmission *)aReceiveVitalitySubmission ;
- (void)receiveVitalitySubmissionAsyncUsingReceiveVitalitySubmission:(ServerWSServiceSvc_receiveVitalitySubmission *)aReceiveVitalitySubmission  delegate:(id<ServerWSBindingResponseDelegate>)responseDelegate;
- (ServerWSBindingResponse *)receiveVitalitySubmissionOnlyUsingReceiveVitalitySubmissionOnly:(ServerWSServiceSvc_receiveVitalitySubmissionOnly *)aReceiveVitalitySubmissionOnly ;
- (void)receiveVitalitySubmissionOnlyAsyncUsingReceiveVitalitySubmissionOnly:(ServerWSServiceSvc_receiveVitalitySubmissionOnly *)aReceiveVitalitySubmissionOnly  delegate:(id<ServerWSBindingResponseDelegate>)responseDelegate;
- (ServerWSBindingResponse *)retrievePolicyNoWithERefNoUsingRetrievePolicyNoWithERefNo:(ServerWSServiceSvc_retrievePolicyNoWithERefNo *)aRetrievePolicyNoWithERefNo ;
- (void)retrievePolicyNoWithERefNoAsyncUsingRetrievePolicyNoWithERefNo:(ServerWSServiceSvc_retrievePolicyNoWithERefNo *)aRetrievePolicyNoWithERefNo  delegate:(id<ServerWSBindingResponseDelegate>)responseDelegate;
- (ServerWSBindingResponse *)updateWindowsInstallerUsingUpdateWindowsInstaller:(ServerWSServiceSvc_updateWindowsInstaller *)aUpdateWindowsInstaller ;
- (void)updateWindowsInstallerAsyncUsingUpdateWindowsInstaller:(ServerWSServiceSvc_updateWindowsInstaller *)aUpdateWindowsInstaller  delegate:(id<ServerWSBindingResponseDelegate>)responseDelegate;
@end
@interface ServerWSBindingOperation : NSOperation {
	ServerWSBinding *binding;
	ServerWSBindingResponse * response;
	id<ServerWSBindingResponseDelegate> __weak delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (strong) ServerWSBinding *binding;
@property (strong, readonly) ServerWSBindingResponse *response;
@property (nonatomic, weak) id<ServerWSBindingResponseDelegate> delegate;
@property (nonatomic, strong) NSMutableData *responseData;
@property (nonatomic, strong) NSURLConnection *urlConnection;
- (id)initWithBinding:(ServerWSBinding *)aBinding delegate:(id<ServerWSBindingResponseDelegate>)aDelegate;
@end
@interface ServerWSBinding_agentActivation : ServerWSBindingOperation {
	ServerWSServiceSvc_agentActivation * agentActivation;
}
@property (strong) ServerWSServiceSvc_agentActivation * agentActivation;
- (id)initWithBinding:(ServerWSBinding *)aBinding delegate:(id<ServerWSBindingResponseDelegate>)aDelegate
	agentActivation:(ServerWSServiceSvc_agentActivation *)aAgentActivation
;
@end
@interface ServerWSBinding_checkVersion : ServerWSBindingOperation {
	ServerWSServiceSvc_checkVersion * checkVersion;
}
@property (strong) ServerWSServiceSvc_checkVersion * checkVersion;
- (id)initWithBinding:(ServerWSBinding *)aBinding delegate:(id<ServerWSBindingResponseDelegate>)aDelegate
	checkVersion:(ServerWSServiceSvc_checkVersion *)aCheckVersion
;
@end
@interface ServerWSBinding_getFscInfo : ServerWSBindingOperation {
	ServerWSServiceSvc_getFscInfo * getFscInfo;
}
@property (strong) ServerWSServiceSvc_getFscInfo * getFscInfo;
- (id)initWithBinding:(ServerWSBinding *)aBinding delegate:(id<ServerWSBindingResponseDelegate>)aDelegate
	getFscInfo:(ServerWSServiceSvc_getFscInfo *)aGetFscInfo
;
@end
@interface ServerWSBinding_getServerTimeStamp : ServerWSBindingOperation {
	ServerWSServiceSvc_getServerTimeStamp * getServerTimeStamp;
}
@property (strong) ServerWSServiceSvc_getServerTimeStamp * getServerTimeStamp;
- (id)initWithBinding:(ServerWSBinding *)aBinding delegate:(id<ServerWSBindingResponseDelegate>)aDelegate
	getServerTimeStamp:(ServerWSServiceSvc_getServerTimeStamp *)aGetServerTimeStamp
;
@end
@interface ServerWSBinding_handShake : ServerWSBindingOperation {
	ServerWSServiceSvc_handShake * handShake;
}
@property (strong) ServerWSServiceSvc_handShake * handShake;
- (id)initWithBinding:(ServerWSBinding *)aBinding delegate:(id<ServerWSBindingResponseDelegate>)aDelegate
	handShake:(ServerWSServiceSvc_handShake *)aHandShake
;
@end
@interface ServerWSBinding_receiveSubmition : ServerWSBindingOperation {
	ServerWSServiceSvc_receiveSubmition * receiveSubmition;
}
@property (strong) ServerWSServiceSvc_receiveSubmition * receiveSubmition;
- (id)initWithBinding:(ServerWSBinding *)aBinding delegate:(id<ServerWSBindingResponseDelegate>)aDelegate
	receiveSubmition:(ServerWSServiceSvc_receiveSubmition *)aReceiveSubmition
;
@end
@interface ServerWSBinding_receiveSubmitionTest : ServerWSBindingOperation {
	ServerWSServiceSvc_receiveSubmitionTest * receiveSubmitionTest;
}
@property (strong) ServerWSServiceSvc_receiveSubmitionTest * receiveSubmitionTest;
- (id)initWithBinding:(ServerWSBinding *)aBinding delegate:(id<ServerWSBindingResponseDelegate>)aDelegate
	receiveSubmitionTest:(ServerWSServiceSvc_receiveSubmitionTest *)aReceiveSubmitionTest
;
@end
@interface ServerWSBinding_receiveVitalitySubmission : ServerWSBindingOperation {
	ServerWSServiceSvc_receiveVitalitySubmission * receiveVitalitySubmission;
}
@property (strong) ServerWSServiceSvc_receiveVitalitySubmission * receiveVitalitySubmission;
- (id)initWithBinding:(ServerWSBinding *)aBinding delegate:(id<ServerWSBindingResponseDelegate>)aDelegate
	receiveVitalitySubmission:(ServerWSServiceSvc_receiveVitalitySubmission *)aReceiveVitalitySubmission
;
@end
@interface ServerWSBinding_receiveVitalitySubmissionOnly : ServerWSBindingOperation {
	ServerWSServiceSvc_receiveVitalitySubmissionOnly * receiveVitalitySubmissionOnly;
}
@property (strong) ServerWSServiceSvc_receiveVitalitySubmissionOnly * receiveVitalitySubmissionOnly;
- (id)initWithBinding:(ServerWSBinding *)aBinding delegate:(id<ServerWSBindingResponseDelegate>)aDelegate
	receiveVitalitySubmissionOnly:(ServerWSServiceSvc_receiveVitalitySubmissionOnly *)aReceiveVitalitySubmissionOnly
;
@end
@interface ServerWSBinding_retrievePolicyNoWithERefNo : ServerWSBindingOperation {
	ServerWSServiceSvc_retrievePolicyNoWithERefNo * retrievePolicyNoWithERefNo;
}
@property (strong) ServerWSServiceSvc_retrievePolicyNoWithERefNo * retrievePolicyNoWithERefNo;
- (id)initWithBinding:(ServerWSBinding *)aBinding delegate:(id<ServerWSBindingResponseDelegate>)aDelegate
	retrievePolicyNoWithERefNo:(ServerWSServiceSvc_retrievePolicyNoWithERefNo *)aRetrievePolicyNoWithERefNo
;
@end
@interface ServerWSBinding_updateWindowsInstaller : ServerWSBindingOperation {
	ServerWSServiceSvc_updateWindowsInstaller * updateWindowsInstaller;
}
@property (strong) ServerWSServiceSvc_updateWindowsInstaller * updateWindowsInstaller;
- (id)initWithBinding:(ServerWSBinding *)aBinding delegate:(id<ServerWSBindingResponseDelegate>)aDelegate
	updateWindowsInstaller:(ServerWSServiceSvc_updateWindowsInstaller *)aUpdateWindowsInstaller
;
@end
@interface ServerWSBinding_envelope : NSObject {
}
+ (ServerWSBinding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface ServerWSBindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (strong) NSArray *headers;
@property (strong) NSArray *bodyParts;
@property (strong) NSError *error;
@end
