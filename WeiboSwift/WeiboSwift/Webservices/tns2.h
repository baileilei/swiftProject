#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
@class tns2_DownloadDocumentResult;
@class tns2_UpdateNotificationSettingsResult;
@class tns2_DocumentInfo;
@class tns2_CRMDocument;
@class tns2_CheckIsIPoSPolicyResult;
@class tns2_NotificationSettings;
@class tns2_CRMDataResult;
@class tns2_FHRDocID;
@class tns2_SubPolicyList;
@class tns2_SubmissionInfo;
@class tns2_ArrayOfDocumentDtl;
@class tns2_DocumentDtl;
@class tns2_ArrayOfCRMData;
@class tns2_CRMData;
#import "tns3.h"
@interface tns2_DownloadDocumentResult : tns3_CallResult {
	
/* elements */
	NSData * documentBinary;
	NSString * isTiffConversionRequired;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns2_DownloadDocumentResult *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSData * documentBinary;
@property (strong) NSString * isTiffConversionRequired;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns2_UpdateNotificationSettingsResult : tns3_CallResult {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns2_UpdateNotificationSettingsResult *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns2_DocumentDtl : NSObject {
	
/* elements */
	NSString * doctype;
	NSString * documentID;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns2_DocumentDtl *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * doctype;
@property (strong) NSString * documentID;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns2_ArrayOfDocumentDtl : NSObject {
	
/* elements */
	NSMutableArray *DocumentDtl;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns2_ArrayOfDocumentDtl *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
- (void)addDocumentDtl:(tns2_DocumentDtl *)toAdd;
@property (readonly) NSMutableArray * DocumentDtl;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns2_DocumentInfo : tns3_CallResult {
	
/* elements */
	tns2_ArrayOfDocumentDtl * docDtls;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns2_DocumentInfo *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) tns2_ArrayOfDocumentDtl * docDtls;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns2_CRMDocument : NSObject {
	
/* elements */
	NSString * statusCode;
	NSString * statusMsg;
	NSData * document;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns2_CRMDocument *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * statusCode;
@property (strong) NSString * statusMsg;
@property (strong) NSData * document;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns2_CheckIsIPoSPolicyResult : tns3_CallResult {
	
/* elements */
	NSString * isiPoSPolicy;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns2_CheckIsIPoSPolicyResult *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * isiPoSPolicy;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns2_NotificationSettings : tns3_CallResult {
	
/* elements */
	NSString * email;
	NSString * sms;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns2_NotificationSettings *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * email;
@property (strong) NSString * sms;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns2_CRMData : NSObject {
	
/* elements */
	NSString * typecode;
	NSString * typedesc;
	NSString * NRIC;
	NSString * subDate;
	NSString * status;
	NSString * completeDate;
	NSString * filename;
	NSString * jobNo;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns2_CRMData *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * typecode;
@property (strong) NSString * typedesc;
@property (strong) NSString * NRIC;
@property (strong) NSString * subDate;
@property (strong) NSString * status;
@property (strong) NSString * completeDate;
@property (strong) NSString * filename;
@property (strong) NSString * jobNo;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns2_ArrayOfCRMData : NSObject {
	
/* elements */
	NSMutableArray *CRMData;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns2_ArrayOfCRMData *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
- (void)addCRMData:(tns2_CRMData *)toAdd;
@property (readonly) NSMutableArray * CRMData;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns2_CRMDataResult : NSObject {
	
/* elements */
	NSString * statusCode;
	NSString * errMsg;
	tns2_ArrayOfCRMData * crmdataArray;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns2_CRMDataResult *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * statusCode;
@property (strong) NSString * errMsg;
@property (strong) tns2_ArrayOfCRMData * crmdataArray;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns2_FHRDocID : tns3_CallResult {
	
/* elements */
	NSString * fhrDocID;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns2_FHRDocID *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * fhrDocID;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns2_SubPolicyList : tns3_CallResult {
	
/* elements */
	NSString * fscCode;
	NSString * basicPlan;
	NSString * insuredName;
	NSString * insuredNRIC;
	NSString * ownerName;
	NSString * planType;
	NSString * policyID;
	NSString * createdby;
	NSString * policyNo;
	NSString * submissionDateTime;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns2_SubPolicyList *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * fscCode;
@property (strong) NSString * basicPlan;
@property (strong) NSString * insuredName;
@property (strong) NSString * insuredNRIC;
@property (strong) NSString * ownerName;
@property (strong) NSString * planType;
@property (strong) NSString * policyID;
@property (strong) NSString * createdby;
@property (strong) NSString * policyNo;
@property (strong) NSString * submissionDateTime;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns2_SubmissionInfo : NSObject {
	
/* elements */
	NSString * AUTHOR;
	NSString * REVISION;
	NSString * MODTIME;
	NSString * DATE;
	NSString * ARCHIVE;
	NSString * WORKFILE;
	NSString * policyNo;
	NSString * policyID;
	NSString * ownerName;
	NSString * ownerNRIC;
	NSString * insurerName;
	NSString * insurerNRIC;
	NSString * planName;
	NSString * currency;
	NSString * modalPremium;
	NSString * paymentMode;
	NSString * sumAssured;
	NSString * submissionDateTime;
	NSString * agent_code1;
	NSString * agent_code2;
	NSString * batch_class;
	NSString * PDAlertStatus;
	NSString * module;
	NSString * uwid;
	NSString * pendCode;
	NSString * insuredAge;
	NSString * residency;
	NSString * planCode;
	NSString * smoker;
	NSString * agencyCode;
	NSString * agencyName;
	NSString * agentName1;
	NSString * agentName2;
	NSString * uwLocation;
	NSString * agency_location;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns2_SubmissionInfo *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * AUTHOR;
@property (strong) NSString * REVISION;
@property (strong) NSString * MODTIME;
@property (strong) NSString * DATE;
@property (strong) NSString * ARCHIVE;
@property (strong) NSString * WORKFILE;
@property (strong) NSString * policyNo;
@property (strong) NSString * policyID;
@property (strong) NSString * ownerName;
@property (strong) NSString * ownerNRIC;
@property (strong) NSString * insurerName;
@property (strong) NSString * insurerNRIC;
@property (strong) NSString * planName;
@property (strong) NSString * currency;
@property (strong) NSString * modalPremium;
@property (strong) NSString * paymentMode;
@property (strong) NSString * sumAssured;
@property (strong) NSString * submissionDateTime;
@property (strong) NSString * agent_code1;
@property (strong) NSString * agent_code2;
@property (strong) NSString * batch_class;
@property (strong) NSString * PDAlertStatus;
@property (strong) NSString * module;
@property (strong) NSString * uwid;
@property (strong) NSString * pendCode;
@property (strong) NSString * insuredAge;
@property (strong) NSString * residency;
@property (strong) NSString * planCode;
@property (strong) NSString * smoker;
@property (strong) NSString * agencyCode;
@property (strong) NSString * agencyName;
@property (strong) NSString * agentName1;
@property (strong) NSString * agentName2;
@property (strong) NSString * uwLocation;
@property (strong) NSString * agency_location;
/* attributes */
- (NSDictionary *)attributes;
@end
