#import "tns4.h"
#import <libxml/xmlstring.h>
#if TARGET_OS_IPHONE
#import <CFNetwork/CFNetwork.h>
#endif
@implementation tns4_DataHandler
- (id)init
{
	if((self = [super init])) {
	}
	
	return self;
}
- (NSString *)nsPrefix
{
	return @"tns4";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName
{
	xmlNodePtr root = xmlDocGetRootElement(doc);
	
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, (const xmlChar*)[elName UTF8String], NULL);
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"tns4:DataHandler");
	xmlSetNsProp(node, nil, (const xmlChar*)"xmlns", (const xmlChar*)"http://xml.apache.org/xml-soap");
	
	[self addAttributesToNode:node];
	
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
}
/* elements */
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (tns4_DataHandler *)deserializeNode:(xmlNodePtr)cur
{
	tns4_DataHandler *newObject = [tns4_DataHandler new];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
}
@end
