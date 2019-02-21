#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
@class IPosServiceServiceSvc_downloadDocumentResponse;
@class IPosServiceServiceSvc_updateNotificationSettings;
@class IPosServiceServiceSvc_updateNotificationSettingsResponse;
@class IPosServiceServiceSvc_viewDocument;
@class IPosServiceServiceSvc_viewDocumentResponse;
@class IPosServiceServiceSvc_getCRMDocument;
@class IPosServiceServiceSvc_getCRMDocumentResponse;
@class IPosServiceServiceSvc_checkIfiPoSPolicy;
@class IPosServiceServiceSvc_checkIfiPoSPolicyResponse;
@class IPosServiceServiceSvc_getNotificationSettings;
@class IPosServiceServiceSvc_getNotificationSettingsResponse;
@class IPosServiceServiceSvc_getCRMDocAsAttachment;
@class IPosServiceServiceSvc_getCRMDocAsAttachmentResponse;
@class IPosServiceServiceSvc_CRMGetRequestList;
@class IPosServiceServiceSvc_CRMGetRequestListResponse;
@class IPosServiceServiceSvc_viewSubPolicyList;
@class IPosServiceServiceSvc_viewSubPolicyListResponse;
@class IPosServiceServiceSvc_ArrayOf_1218217182_730383861_nillable_SubPolicyList;
@class IPosServiceServiceSvc_policyGetFHRDocID;
@class IPosServiceServiceSvc_policyGetFHRDocIDResponse;
@class IPosServiceServiceSvc_viewSubmissionInfo;
@class IPosServiceServiceSvc_viewSubmissionInfoResponse;
@class IPosServiceServiceSvc_ArrayOf_1218217182_730383861_nillable_SubmissionInfo;
@class IPosServiceServiceSvc_downloadDocument;
#import "tns4.h"
#import "tns2.h"
@interface IPosServiceServiceSvc_downloadDocumentResponse : NSObject {
	
/* elements */
	tns2_DownloadDocumentResult * downloadDocumentReturn;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_downloadDocumentResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) tns2_DownloadDocumentResult * downloadDocumentReturn;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_updateNotificationSettings : NSObject {
	
/* elements */
	NSString * companyCode;
	NSString * agentCode;
	NSString * emailFlag;
	NSString * smsFlag;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_updateNotificationSettings *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * companyCode;
@property (strong) NSString * agentCode;
@property (strong) NSString * emailFlag;
@property (strong) NSString * smsFlag;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_updateNotificationSettingsResponse : NSObject {
	
/* elements */
	tns2_UpdateNotificationSettingsResult * updateNotificationSettingsReturn;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_updateNotificationSettingsResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) tns2_UpdateNotificationSettingsResult * updateNotificationSettingsReturn;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_viewDocument : NSObject {
	
/* elements */
	NSString * companyCode;
	NSString * policyID;
	NSString * policyNo;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_viewDocument *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * companyCode;
@property (strong) NSString * policyID;
@property (strong) NSString * policyNo;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_viewDocumentResponse : NSObject {
	
/* elements */
	tns2_DocumentInfo * viewDocumentReturn;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_viewDocumentResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) tns2_DocumentInfo * viewDocumentReturn;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_getCRMDocument : NSObject {
	
/* elements */
	NSString * agentCode;
	NSString * jobNo;
	NSString * compCode;
	NSString * docname;
	NSString * docType;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_getCRMDocument *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * agentCode;
@property (strong) NSString * jobNo;
@property (strong) NSString * compCode;
@property (strong) NSString * docname;
@property (strong) NSString * docType;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_getCRMDocumentResponse : NSObject {
	
/* elements */
	tns2_CRMDocument * getCRMDocumentReturn;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_getCRMDocumentResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) tns2_CRMDocument * getCRMDocumentReturn;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_checkIfiPoSPolicy : NSObject {
	
/* elements */
	NSString * companyCode;
	NSString * policyNo;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_checkIfiPoSPolicy *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * companyCode;
@property (strong) NSString * policyNo;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_checkIfiPoSPolicyResponse : NSObject {
	
/* elements */
	tns2_CheckIsIPoSPolicyResult * checkIfiPoSPolicyReturn;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_checkIfiPoSPolicyResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) tns2_CheckIsIPoSPolicyResult * checkIfiPoSPolicyReturn;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_getNotificationSettings : NSObject {
	
/* elements */
	NSString * companyCode;
	NSString * agentCode;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_getNotificationSettings *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * companyCode;
@property (strong) NSString * agentCode;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_getNotificationSettingsResponse : NSObject {
	
/* elements */
	tns2_NotificationSettings * getNotificationSettingsReturn;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_getNotificationSettingsResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) tns2_NotificationSettings * getNotificationSettingsReturn;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_getCRMDocAsAttachment : NSObject {
	
/* elements */
	NSString * agentCode;
	NSString * jobNo;
	NSString * compCode;
	NSString * docname;
	NSString * docType;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_getCRMDocAsAttachment *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * agentCode;
@property (strong) NSString * jobNo;
@property (strong) NSString * compCode;
@property (strong) NSString * docname;
@property (strong) NSString * docType;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_getCRMDocAsAttachmentResponse : NSObject {
	
/* elements */
	tns4_DataHandler * getCRMDocAsAttachmentReturn;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_getCRMDocAsAttachmentResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) tns4_DataHandler * getCRMDocAsAttachmentReturn;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_CRMGetRequestList : NSObject {
	
/* elements */
	NSString * agentCode;
	NSString * compCode;
	NSNumber * fullcount;
	NSNumber * cuscount;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_CRMGetRequestList *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * agentCode;
@property (strong) NSString * compCode;
@property (strong) NSNumber * fullcount;
@property (strong) NSNumber * cuscount;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_CRMGetRequestListResponse : NSObject {
	
/* elements */
	tns2_CRMDataResult * CRMGetRequestListReturn;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_CRMGetRequestListResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) tns2_CRMDataResult * CRMGetRequestListReturn;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_viewSubPolicyList : NSObject {
	
/* elements */
	NSString * companyCode;
	NSString * policyNo;
	NSString * paramAgentCode;
	NSString * insuredName;
	NSString * ownerName;
	NSString * agentCode;
	NSString * agencyCode;
	NSString * typeCode;
	NSString * policyType;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_viewSubPolicyList *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * companyCode;
@property (strong) NSString * policyNo;
@property (strong) NSString * paramAgentCode;
@property (strong) NSString * insuredName;
@property (strong) NSString * ownerName;
@property (strong) NSString * agentCode;
@property (strong) NSString * agencyCode;
@property (strong) NSString * typeCode;
@property (strong) NSString * policyType;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_ArrayOf_1218217182_730383861_nillable_SubPolicyList : NSObject {
	
/* elements */
	NSMutableArray *SubPolicyList;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_ArrayOf_1218217182_730383861_nillable_SubPolicyList *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
- (void)addSubPolicyList:(tns2_SubPolicyList *)toAdd;
@property (readonly) NSMutableArray * SubPolicyList;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_viewSubPolicyListResponse : NSObject {
	
/* elements */
	IPosServiceServiceSvc_ArrayOf_1218217182_730383861_nillable_SubPolicyList * viewSubPolicyListReturn;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_viewSubPolicyListResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) IPosServiceServiceSvc_ArrayOf_1218217182_730383861_nillable_SubPolicyList * viewSubPolicyListReturn;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_policyGetFHRDocID : NSObject {
	
/* elements */
	NSString * companyCode;
	NSString * policyNo;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_policyGetFHRDocID *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * companyCode;
@property (strong) NSString * policyNo;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_policyGetFHRDocIDResponse : NSObject {
	
/* elements */
	tns2_FHRDocID * policyGetFHRDocIDReturn;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_policyGetFHRDocIDResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) tns2_FHRDocID * policyGetFHRDocIDReturn;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_viewSubmissionInfo : NSObject {
	
/* elements */
	NSString * policyNo;
	NSString * fscCode;
	NSString * planType;
	NSString * channelType;
	NSString * agyCode;
	NSString * startDate;
	NSString * endDate;
	NSString * agylocation;
	NSString * batchClass;
	NSString * uwid;
	NSString * penCode;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_viewSubmissionInfo *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * policyNo;
@property (strong) NSString * fscCode;
@property (strong) NSString * planType;
@property (strong) NSString * channelType;
@property (strong) NSString * agyCode;
@property (strong) NSString * startDate;
@property (strong) NSString * endDate;
@property (strong) NSString * agylocation;
@property (strong) NSString * batchClass;
@property (strong) NSString * uwid;
@property (strong) NSString * penCode;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_ArrayOf_1218217182_730383861_nillable_SubmissionInfo : NSObject {
	
/* elements */
	NSMutableArray *SubmissionInfo;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_ArrayOf_1218217182_730383861_nillable_SubmissionInfo *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
- (void)addSubmissionInfo:(tns2_SubmissionInfo *)toAdd;
@property (readonly) NSMutableArray * SubmissionInfo;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_viewSubmissionInfoResponse : NSObject {
	
/* elements */
	IPosServiceServiceSvc_ArrayOf_1218217182_730383861_nillable_SubmissionInfo * viewSubmissionInfoReturn;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_viewSubmissionInfoResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) IPosServiceServiceSvc_ArrayOf_1218217182_730383861_nillable_SubmissionInfo * viewSubmissionInfoReturn;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface IPosServiceServiceSvc_downloadDocument : NSObject {
	
/* elements */
	NSString * companyCode;
	NSString * documentId;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (IPosServiceServiceSvc_downloadDocument *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (strong) NSString * companyCode;
@property (strong) NSString * documentId;
/* attributes */
- (NSDictionary *)attributes;
@end
/* Cookies handling provided by http://en.wikibooks.org/wiki/Programming:WebObjects/Web_Services/Web_Service_Provider */
#import <libxml/parser.h>
#import "xsd.h"
#import "IPosServiceServiceSvc.h"
#import "tns4.h"
#import "tns2.h"
#import "tns3.h"
@class IPosServiceSoapBinding;
@interface IPosServiceServiceSvc : NSObject {
	
}
+ (IPosServiceSoapBinding *)IPosServiceSoapBinding;
@end
@class IPosServiceSoapBindingResponse;
@class IPosServiceSoapBindingOperation;
@protocol IPosServiceSoapBindingResponseDelegate <NSObject>
- (void) operation:(IPosServiceSoapBindingOperation *)operation completedWithResponse:(IPosServiceSoapBindingResponse *)response;
@end
@interface IPosServiceSoapBinding : NSObject <IPosServiceSoapBindingResponseDelegate> {
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
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(IPosServiceSoapBindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (IPosServiceSoapBindingResponse *)downloadDocumentUsingParameters:(IPosServiceServiceSvc_downloadDocument *)aParameters ;
- (void)downloadDocumentAsyncUsingParameters:(IPosServiceServiceSvc_downloadDocument *)aParameters  delegate:(id<IPosServiceSoapBindingResponseDelegate>)responseDelegate;
- (IPosServiceSoapBindingResponse *)updateNotificationSettingsUsingParameters:(IPosServiceServiceSvc_updateNotificationSettings *)aParameters ;
- (void)updateNotificationSettingsAsyncUsingParameters:(IPosServiceServiceSvc_updateNotificationSettings *)aParameters  delegate:(id<IPosServiceSoapBindingResponseDelegate>)responseDelegate;
- (IPosServiceSoapBindingResponse *)viewDocumentUsingParameters:(IPosServiceServiceSvc_viewDocument *)aParameters ;
- (void)viewDocumentAsyncUsingParameters:(IPosServiceServiceSvc_viewDocument *)aParameters  delegate:(id<IPosServiceSoapBindingResponseDelegate>)responseDelegate;
- (IPosServiceSoapBindingResponse *)getCRMDocumentUsingParameters:(IPosServiceServiceSvc_getCRMDocument *)aParameters ;
- (void)getCRMDocumentAsyncUsingParameters:(IPosServiceServiceSvc_getCRMDocument *)aParameters  delegate:(id<IPosServiceSoapBindingResponseDelegate>)responseDelegate;
- (IPosServiceSoapBindingResponse *)checkIfiPoSPolicyUsingParameters:(IPosServiceServiceSvc_checkIfiPoSPolicy *)aParameters ;
- (void)checkIfiPoSPolicyAsyncUsingParameters:(IPosServiceServiceSvc_checkIfiPoSPolicy *)aParameters  delegate:(id<IPosServiceSoapBindingResponseDelegate>)responseDelegate;
- (IPosServiceSoapBindingResponse *)getNotificationSettingsUsingParameters:(IPosServiceServiceSvc_getNotificationSettings *)aParameters ;
- (void)getNotificationSettingsAsyncUsingParameters:(IPosServiceServiceSvc_getNotificationSettings *)aParameters  delegate:(id<IPosServiceSoapBindingResponseDelegate>)responseDelegate;
- (IPosServiceSoapBindingResponse *)getCRMDocAsAttachmentUsingParameters:(IPosServiceServiceSvc_getCRMDocAsAttachment *)aParameters ;
- (void)getCRMDocAsAttachmentAsyncUsingParameters:(IPosServiceServiceSvc_getCRMDocAsAttachment *)aParameters  delegate:(id<IPosServiceSoapBindingResponseDelegate>)responseDelegate;
- (IPosServiceSoapBindingResponse *)CRMGetRequestListUsingParameters:(IPosServiceServiceSvc_CRMGetRequestList *)aParameters ;
- (void)CRMGetRequestListAsyncUsingParameters:(IPosServiceServiceSvc_CRMGetRequestList *)aParameters  delegate:(id<IPosServiceSoapBindingResponseDelegate>)responseDelegate;
- (IPosServiceSoapBindingResponse *)viewSubPolicyListUsingParameters:(IPosServiceServiceSvc_viewSubPolicyList *)aParameters ;
- (void)viewSubPolicyListAsyncUsingParameters:(IPosServiceServiceSvc_viewSubPolicyList *)aParameters  delegate:(id<IPosServiceSoapBindingResponseDelegate>)responseDelegate;
- (IPosServiceSoapBindingResponse *)policyGetFHRDocIDUsingParameters:(IPosServiceServiceSvc_policyGetFHRDocID *)aParameters ;
- (void)policyGetFHRDocIDAsyncUsingParameters:(IPosServiceServiceSvc_policyGetFHRDocID *)aParameters  delegate:(id<IPosServiceSoapBindingResponseDelegate>)responseDelegate;
- (IPosServiceSoapBindingResponse *)viewSubmissionInfoUsingParameters:(IPosServiceServiceSvc_viewSubmissionInfo *)aParameters ;
- (void)viewSubmissionInfoAsyncUsingParameters:(IPosServiceServiceSvc_viewSubmissionInfo *)aParameters  delegate:(id<IPosServiceSoapBindingResponseDelegate>)responseDelegate;
@end
@interface IPosServiceSoapBindingOperation : NSOperation {
	IPosServiceSoapBinding *binding;
	IPosServiceSoapBindingResponse * response;
	id<IPosServiceSoapBindingResponseDelegate> __weak delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (strong) IPosServiceSoapBinding *binding;
@property (strong, readonly) IPosServiceSoapBindingResponse *response;
@property (nonatomic, weak) id<IPosServiceSoapBindingResponseDelegate> delegate;
@property (nonatomic, strong) NSMutableData *responseData;
@property (nonatomic, strong) NSURLConnection *urlConnection;
- (id)initWithBinding:(IPosServiceSoapBinding *)aBinding delegate:(id<IPosServiceSoapBindingResponseDelegate>)aDelegate;
@end
@interface IPosServiceSoapBinding_downloadDocument : IPosServiceSoapBindingOperation {
	IPosServiceServiceSvc_downloadDocument * parameters;
}
@property (strong) IPosServiceServiceSvc_downloadDocument * parameters;
- (id)initWithBinding:(IPosServiceSoapBinding *)aBinding delegate:(id<IPosServiceSoapBindingResponseDelegate>)aDelegate
	parameters:(IPosServiceServiceSvc_downloadDocument *)aParameters
;
@end
@interface IPosServiceSoapBinding_updateNotificationSettings : IPosServiceSoapBindingOperation {
	IPosServiceServiceSvc_updateNotificationSettings * parameters;
}
@property (strong) IPosServiceServiceSvc_updateNotificationSettings * parameters;
- (id)initWithBinding:(IPosServiceSoapBinding *)aBinding delegate:(id<IPosServiceSoapBindingResponseDelegate>)aDelegate
	parameters:(IPosServiceServiceSvc_updateNotificationSettings *)aParameters
;
@end
@interface IPosServiceSoapBinding_viewDocument : IPosServiceSoapBindingOperation {
	IPosServiceServiceSvc_viewDocument * parameters;
}
@property (strong) IPosServiceServiceSvc_viewDocument * parameters;
- (id)initWithBinding:(IPosServiceSoapBinding *)aBinding delegate:(id<IPosServiceSoapBindingResponseDelegate>)aDelegate
	parameters:(IPosServiceServiceSvc_viewDocument *)aParameters
;
@end
@interface IPosServiceSoapBinding_getCRMDocument : IPosServiceSoapBindingOperation {
	IPosServiceServiceSvc_getCRMDocument * parameters;
}
@property (strong) IPosServiceServiceSvc_getCRMDocument * parameters;
- (id)initWithBinding:(IPosServiceSoapBinding *)aBinding delegate:(id<IPosServiceSoapBindingResponseDelegate>)aDelegate
	parameters:(IPosServiceServiceSvc_getCRMDocument *)aParameters
;
@end
@interface IPosServiceSoapBinding_checkIfiPoSPolicy : IPosServiceSoapBindingOperation {
	IPosServiceServiceSvc_checkIfiPoSPolicy * parameters;
}
@property (strong) IPosServiceServiceSvc_checkIfiPoSPolicy * parameters;
- (id)initWithBinding:(IPosServiceSoapBinding *)aBinding delegate:(id<IPosServiceSoapBindingResponseDelegate>)aDelegate
	parameters:(IPosServiceServiceSvc_checkIfiPoSPolicy *)aParameters
;
@end
@interface IPosServiceSoapBinding_getNotificationSettings : IPosServiceSoapBindingOperation {
	IPosServiceServiceSvc_getNotificationSettings * parameters;
}
@property (strong) IPosServiceServiceSvc_getNotificationSettings * parameters;
- (id)initWithBinding:(IPosServiceSoapBinding *)aBinding delegate:(id<IPosServiceSoapBindingResponseDelegate>)aDelegate
	parameters:(IPosServiceServiceSvc_getNotificationSettings *)aParameters
;
@end
@interface IPosServiceSoapBinding_getCRMDocAsAttachment : IPosServiceSoapBindingOperation {
	IPosServiceServiceSvc_getCRMDocAsAttachment * parameters;
}
@property (strong) IPosServiceServiceSvc_getCRMDocAsAttachment * parameters;
- (id)initWithBinding:(IPosServiceSoapBinding *)aBinding delegate:(id<IPosServiceSoapBindingResponseDelegate>)aDelegate
	parameters:(IPosServiceServiceSvc_getCRMDocAsAttachment *)aParameters
;
@end
@interface IPosServiceSoapBinding_CRMGetRequestList : IPosServiceSoapBindingOperation {
	IPosServiceServiceSvc_CRMGetRequestList * parameters;
}
@property (strong) IPosServiceServiceSvc_CRMGetRequestList * parameters;
- (id)initWithBinding:(IPosServiceSoapBinding *)aBinding delegate:(id<IPosServiceSoapBindingResponseDelegate>)aDelegate
	parameters:(IPosServiceServiceSvc_CRMGetRequestList *)aParameters
;
@end
@interface IPosServiceSoapBinding_viewSubPolicyList : IPosServiceSoapBindingOperation {
	IPosServiceServiceSvc_viewSubPolicyList * parameters;
}
@property (strong) IPosServiceServiceSvc_viewSubPolicyList * parameters;
- (id)initWithBinding:(IPosServiceSoapBinding *)aBinding delegate:(id<IPosServiceSoapBindingResponseDelegate>)aDelegate
	parameters:(IPosServiceServiceSvc_viewSubPolicyList *)aParameters
;
@end
@interface IPosServiceSoapBinding_policyGetFHRDocID : IPosServiceSoapBindingOperation {
	IPosServiceServiceSvc_policyGetFHRDocID * parameters;
}
@property (strong) IPosServiceServiceSvc_policyGetFHRDocID * parameters;
- (id)initWithBinding:(IPosServiceSoapBinding *)aBinding delegate:(id<IPosServiceSoapBindingResponseDelegate>)aDelegate
	parameters:(IPosServiceServiceSvc_policyGetFHRDocID *)aParameters
;
@end
@interface IPosServiceSoapBinding_viewSubmissionInfo : IPosServiceSoapBindingOperation {
	IPosServiceServiceSvc_viewSubmissionInfo * parameters;
}
@property (strong) IPosServiceServiceSvc_viewSubmissionInfo * parameters;
- (id)initWithBinding:(IPosServiceSoapBinding *)aBinding delegate:(id<IPosServiceSoapBindingResponseDelegate>)aDelegate
	parameters:(IPosServiceServiceSvc_viewSubmissionInfo *)aParameters
;
@end
@interface IPosServiceSoapBinding_envelope : NSObject {
}
+ (IPosServiceSoapBinding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface IPosServiceSoapBindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (strong) NSArray *headers;
@property (strong) NSArray *bodyParts;
@property (strong) NSError *error;
@end
