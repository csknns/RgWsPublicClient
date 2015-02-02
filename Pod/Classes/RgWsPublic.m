#import "RgWsPublic.h"
#import <libxml/xmlstring.h>
#if TARGET_OS_IPHONE
#import <CFNetwork/CFNetwork.h>
#endif
#ifndef ADVANCED_AUTHENTICATION
#define ADVANCED_AUTHENTICATION 0
#endif
#if ADVANCED_AUTHENTICATION && TARGET_OS_IPHONE
#import <Security/Security.h>
#endif
@implementation RgWsPublic_RgWsPublicInputRtBase
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"RgWsPublic";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"RgWsPublic", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
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
+ (RgWsPublic_RgWsPublicInputRtBase *)deserializeNode:(xmlNodePtr)cur
{
	RgWsPublic_RgWsPublicInputRtBase *newObject = [[RgWsPublic_RgWsPublicInputRtBase new] autorelease];
	
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
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]]) {
		self = [super performSelector:@selector(initWithCoder:) withObject:decoder];
	} else {
		self = [super init];
	}
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [decoder decodeObjectForKey:key];
		if (value == nil) { value = [NSNumber numberWithFloat:0.0]; }
		[self setValue:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [self valueForKey:key];
		[encoder encodeObject:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation RgWsPublic_RgWsPublicInputRtUser
- (id)init
{
	if((self = [super init])) {
		afmCalledBy = 0;
		afmCalledFor = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(afmCalledBy != nil) [afmCalledBy release];
	if(afmCalledFor != nil) [afmCalledFor release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"RgWsPublic";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"RgWsPublic", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"RgWsPublic:RgWsPublicInputRtUser");
	// BUGBUG: ASP.NET compatibility: need to add xmlns attribute or else parameters don't make it.  Is there a good
	// place to do this so that we don't have to redo this whenever we autogenerate new code?
	xmlNsPtr xmlns = xmlSearchNs(doc, root, (const xmlChar*)"xmlns");
	xmlSetNsProp(node, xmlns, (const xmlChar*)"xmlns", (const xmlChar*)"http://myflightbook.com/");	
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.afmCalledBy != 0) {
		xmlAddChild(node, [self.afmCalledBy xmlNodeForDoc:node->doc elementName:@"afmCalledBy" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.afmCalledFor != 0) {
		xmlAddChild(node, [self.afmCalledFor xmlNodeForDoc:node->doc elementName:@"afmCalledFor" elementNSPrefix:@"RgWsPublic"]);
	}
}
/* elements */
@synthesize afmCalledBy;
@synthesize afmCalledFor;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (RgWsPublic_RgWsPublicInputRtUser *)deserializeNode:(xmlNodePtr)cur
{
	RgWsPublic_RgWsPublicInputRtUser *newObject = [[RgWsPublic_RgWsPublicInputRtUser new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "afmCalledBy")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.afmCalledBy = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "afmCalledFor")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.afmCalledFor = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]]) {
		self = [super performSelector:@selector(initWithCoder:) withObject:decoder];
	} else {
		self = [super init];
	}
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [decoder decodeObjectForKey:key];
		if (value == nil) { value = [NSNumber numberWithFloat:0.0]; }
		[self setValue:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [self valueForKey:key];
		[encoder encodeObject:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation RgWsPublic_RgWsPublicBasicRtBase
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"RgWsPublic";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"RgWsPublic", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
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
+ (RgWsPublic_RgWsPublicBasicRtBase *)deserializeNode:(xmlNodePtr)cur
{
	RgWsPublic_RgWsPublicBasicRtBase *newObject = [[RgWsPublic_RgWsPublicBasicRtBase new] autorelease];
	
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
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]]) {
		self = [super performSelector:@selector(initWithCoder:) withObject:decoder];
	} else {
		self = [super init];
	}
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [decoder decodeObjectForKey:key];
		if (value == nil) { value = [NSNumber numberWithFloat:0.0]; }
		[self setValue:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [self valueForKey:key];
		[encoder encodeObject:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation RgWsPublic_RgWsPublicBasicRtUser
- (id)init
{
	if((self = [super init])) {
		afm = 0;
		stopDate = 0;
		postalAddressNo = 0;
		doyDescr = 0;
		doy = 0;
		onomasia = 0;
		legalStatusDescr = 0;
		registDate = 0;
		deactivationFlag = 0;
		deactivationFlagDescr = 0;
		postalAddress = 0;
		firmFlagDescr = 0;
		commerTitle = 0;
		postalAreaDescription = 0;
		INiFlagDescr = 0;
		postalZipCode = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(afm != nil) [afm release];
	if(stopDate != nil) [stopDate release];
	if(postalAddressNo != nil) [postalAddressNo release];
	if(doyDescr != nil) [doyDescr release];
	if(doy != nil) [doy release];
	if(onomasia != nil) [onomasia release];
	if(legalStatusDescr != nil) [legalStatusDescr release];
	if(registDate != nil) [registDate release];
	if(deactivationFlag != nil) [deactivationFlag release];
	if(deactivationFlagDescr != nil) [deactivationFlagDescr release];
	if(postalAddress != nil) [postalAddress release];
	if(firmFlagDescr != nil) [firmFlagDescr release];
	if(commerTitle != nil) [commerTitle release];
	if(postalAreaDescription != nil) [postalAreaDescription release];
	if(INiFlagDescr != nil) [INiFlagDescr release];
	if(postalZipCode != nil) [postalZipCode release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"RgWsPublic";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"RgWsPublic", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"RgWsPublic:RgWsPublicBasicRtUser");
	// BUGBUG: ASP.NET compatibility: need to add xmlns attribute or else parameters don't make it.  Is there a good
	// place to do this so that we don't have to redo this whenever we autogenerate new code?
	xmlNsPtr xmlns = xmlSearchNs(doc, root, (const xmlChar*)"xmlns");
	xmlSetNsProp(node, xmlns, (const xmlChar*)"xmlns", (const xmlChar*)"http://myflightbook.com/");	
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.afm != 0) {
		xmlAddChild(node, [self.afm xmlNodeForDoc:node->doc elementName:@"afm" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.stopDate != 0) {
		xmlAddChild(node, [self.stopDate xmlNodeForDoc:node->doc elementName:@"stopDate" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.postalAddressNo != 0) {
		xmlAddChild(node, [self.postalAddressNo xmlNodeForDoc:node->doc elementName:@"postalAddressNo" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.doyDescr != 0) {
		xmlAddChild(node, [self.doyDescr xmlNodeForDoc:node->doc elementName:@"doyDescr" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.doy != 0) {
		xmlAddChild(node, [self.doy xmlNodeForDoc:node->doc elementName:@"doy" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.onomasia != 0) {
		xmlAddChild(node, [self.onomasia xmlNodeForDoc:node->doc elementName:@"onomasia" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.legalStatusDescr != 0) {
		xmlAddChild(node, [self.legalStatusDescr xmlNodeForDoc:node->doc elementName:@"legalStatusDescr" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.registDate != 0) {
		xmlAddChild(node, [self.registDate xmlNodeForDoc:node->doc elementName:@"registDate" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.deactivationFlag != 0) {
		xmlAddChild(node, [self.deactivationFlag xmlNodeForDoc:node->doc elementName:@"deactivationFlag" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.deactivationFlagDescr != 0) {
		xmlAddChild(node, [self.deactivationFlagDescr xmlNodeForDoc:node->doc elementName:@"deactivationFlagDescr" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.postalAddress != 0) {
		xmlAddChild(node, [self.postalAddress xmlNodeForDoc:node->doc elementName:@"postalAddress" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.firmFlagDescr != 0) {
		xmlAddChild(node, [self.firmFlagDescr xmlNodeForDoc:node->doc elementName:@"firmFlagDescr" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.commerTitle != 0) {
		xmlAddChild(node, [self.commerTitle xmlNodeForDoc:node->doc elementName:@"commerTitle" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.postalAreaDescription != 0) {
		xmlAddChild(node, [self.postalAreaDescription xmlNodeForDoc:node->doc elementName:@"postalAreaDescription" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.INiFlagDescr != 0) {
		xmlAddChild(node, [self.INiFlagDescr xmlNodeForDoc:node->doc elementName:@"INiFlagDescr" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.postalZipCode != 0) {
		xmlAddChild(node, [self.postalZipCode xmlNodeForDoc:node->doc elementName:@"postalZipCode" elementNSPrefix:@"RgWsPublic"]);
	}
}
/* elements */
@synthesize afm;
@synthesize stopDate;
@synthesize postalAddressNo;
@synthesize doyDescr;
@synthesize doy;
@synthesize onomasia;
@synthesize legalStatusDescr;
@synthesize registDate;
@synthesize deactivationFlag;
@synthesize deactivationFlagDescr;
@synthesize postalAddress;
@synthesize firmFlagDescr;
@synthesize commerTitle;
@synthesize postalAreaDescription;
@synthesize INiFlagDescr;
@synthesize postalZipCode;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (RgWsPublic_RgWsPublicBasicRtUser *)deserializeNode:(xmlNodePtr)cur
{
	RgWsPublic_RgWsPublicBasicRtUser *newObject = [[RgWsPublic_RgWsPublicBasicRtUser new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "afm")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.afm = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "stopDate")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.stopDate = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "postalAddressNo")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.postalAddressNo = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "doyDescr")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.doyDescr = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "doy")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.doy = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "onomasia")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.onomasia = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "legalStatusDescr")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.legalStatusDescr = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "registDate")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.registDate = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "deactivationFlag")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.deactivationFlag = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "deactivationFlagDescr")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.deactivationFlagDescr = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "postalAddress")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.postalAddress = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "firmFlagDescr")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.firmFlagDescr = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "commerTitle")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.commerTitle = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "postalAreaDescription")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.postalAreaDescription = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "INiFlagDescr")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.INiFlagDescr = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "postalZipCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.postalZipCode = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]]) {
		self = [super performSelector:@selector(initWithCoder:) withObject:decoder];
	} else {
		self = [super init];
	}
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [decoder decodeObjectForKey:key];
		if (value == nil) { value = [NSNumber numberWithFloat:0.0]; }
		[self setValue:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [self valueForKey:key];
		[encoder encodeObject:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation RgWsPublic_RgWsPublicFirmActRtBase
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"RgWsPublic";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"RgWsPublic", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
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
+ (RgWsPublic_RgWsPublicFirmActRtBase *)deserializeNode:(xmlNodePtr)cur
{
	RgWsPublic_RgWsPublicFirmActRtBase *newObject = [[RgWsPublic_RgWsPublicFirmActRtBase new] autorelease];
	
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
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]]) {
		self = [super performSelector:@selector(initWithCoder:) withObject:decoder];
	} else {
		self = [super init];
	}
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [decoder decodeObjectForKey:key];
		if (value == nil) { value = [NSNumber numberWithFloat:0.0]; }
		[self setValue:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [self valueForKey:key];
		[encoder encodeObject:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation RgWsPublic_RgWsPublicFirmActRtUser
- (id)init
{
	if((self = [super init])) {
		firmActDescr = 0;
		firmActKind = 0;
		firmActKindDescr = 0;
		firmActCode = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(firmActDescr != nil) [firmActDescr release];
	if(firmActKind != nil) [firmActKind release];
	if(firmActKindDescr != nil) [firmActKindDescr release];
	if(firmActCode != nil) [firmActCode release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"RgWsPublic";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"RgWsPublic", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"RgWsPublic:RgWsPublicFirmActRtUser");
	// BUGBUG: ASP.NET compatibility: need to add xmlns attribute or else parameters don't make it.  Is there a good
	// place to do this so that we don't have to redo this whenever we autogenerate new code?
	xmlNsPtr xmlns = xmlSearchNs(doc, root, (const xmlChar*)"xmlns");
	xmlSetNsProp(node, xmlns, (const xmlChar*)"xmlns", (const xmlChar*)"http://myflightbook.com/");	
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.firmActDescr != 0) {
		xmlAddChild(node, [self.firmActDescr xmlNodeForDoc:node->doc elementName:@"firmActDescr" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.firmActKind != 0) {
		xmlAddChild(node, [self.firmActKind xmlNodeForDoc:node->doc elementName:@"firmActKind" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.firmActKindDescr != 0) {
		xmlAddChild(node, [self.firmActKindDescr xmlNodeForDoc:node->doc elementName:@"firmActKindDescr" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.firmActCode != 0) {
		xmlAddChild(node, [self.firmActCode xmlNodeForDoc:node->doc elementName:@"firmActCode" elementNSPrefix:@"RgWsPublic"]);
	}
}
/* elements */
@synthesize firmActDescr;
@synthesize firmActKind;
@synthesize firmActKindDescr;
@synthesize firmActCode;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (RgWsPublic_RgWsPublicFirmActRtUser *)deserializeNode:(xmlNodePtr)cur
{
	RgWsPublic_RgWsPublicFirmActRtUser *newObject = [[RgWsPublic_RgWsPublicFirmActRtUser new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "firmActDescr")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.firmActDescr = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "firmActKind")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.firmActKind = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "firmActKindDescr")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.firmActKindDescr = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "firmActCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.firmActCode = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]]) {
		self = [super performSelector:@selector(initWithCoder:) withObject:decoder];
	} else {
		self = [super init];
	}
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [decoder decodeObjectForKey:key];
		if (value == nil) { value = [NSNumber numberWithFloat:0.0]; }
		[self setValue:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [self valueForKey:key];
		[encoder encodeObject:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation RgWsPublic_RgWsPublicFirmActRtUserArray
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		RgWsPublicFirmActRtUser = [[NSMutableArray alloc] init];
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(RgWsPublicFirmActRtUser != nil) [RgWsPublicFirmActRtUser release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"RgWsPublic";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"RgWsPublic", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.RgWsPublicFirmActRtUser != 0) {
		for(RgWsPublic_RgWsPublicFirmActRtUser * child in self.RgWsPublicFirmActRtUser) {
			xmlAddChild(node, [child xmlNodeForDoc:node->doc elementName:@"RgWsPublicFirmActRtUser" elementNSPrefix:@"RgWsPublic"]);
		}
	}
}
/* elements */
@synthesize RgWsPublicFirmActRtUser;
- (void)addRgWsPublicFirmActRtUser:(RgWsPublic_RgWsPublicFirmActRtUser *)toAdd
{
	if(toAdd != nil) [RgWsPublicFirmActRtUser addObject:toAdd];
}
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (RgWsPublic_RgWsPublicFirmActRtUserArray *)deserializeNode:(xmlNodePtr)cur
{
	RgWsPublic_RgWsPublicFirmActRtUserArray *newObject = [[RgWsPublic_RgWsPublicFirmActRtUserArray new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "RgWsPublicFirmActRtUser")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [RgWsPublic_RgWsPublicFirmActRtUser class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.RgWsPublicFirmActRtUser addObject:newChild];
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]]) {
		self = [super performSelector:@selector(initWithCoder:) withObject:decoder];
	} else {
		self = [super init];
	}
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [decoder decodeObjectForKey:key];
		if (value == nil) { value = [NSNumber numberWithFloat:0.0]; }
		[self setValue:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [self valueForKey:key];
		[encoder encodeObject:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation RgWsPublic_GenWsErrorRtBase
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"RgWsPublic";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"RgWsPublic", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
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
+ (RgWsPublic_GenWsErrorRtBase *)deserializeNode:(xmlNodePtr)cur
{
	RgWsPublic_GenWsErrorRtBase *newObject = [[RgWsPublic_GenWsErrorRtBase new] autorelease];
	
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
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]]) {
		self = [super performSelector:@selector(initWithCoder:) withObject:decoder];
	} else {
		self = [super init];
	}
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [decoder decodeObjectForKey:key];
		if (value == nil) { value = [NSNumber numberWithFloat:0.0]; }
		[self setValue:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [self valueForKey:key];
		[encoder encodeObject:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation RgWsPublic_GenWsErrorRtUser
- (id)init
{
	if((self = [super init])) {
		errorDescr = 0;
		errorCode = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(errorDescr != nil) [errorDescr release];
	if(errorCode != nil) [errorCode release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"RgWsPublic";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"RgWsPublic", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"RgWsPublic:GenWsErrorRtUser");
	// BUGBUG: ASP.NET compatibility: need to add xmlns attribute or else parameters don't make it.  Is there a good
	// place to do this so that we don't have to redo this whenever we autogenerate new code?
	xmlNsPtr xmlns = xmlSearchNs(doc, root, (const xmlChar*)"xmlns");
	xmlSetNsProp(node, xmlns, (const xmlChar*)"xmlns", (const xmlChar*)"http://myflightbook.com/");	
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.errorDescr != 0) {
		xmlAddChild(node, [self.errorDescr xmlNodeForDoc:node->doc elementName:@"errorDescr" elementNSPrefix:@"RgWsPublic"]);
	}
	if(self.errorCode != 0) {
		xmlAddChild(node, [self.errorCode xmlNodeForDoc:node->doc elementName:@"errorCode" elementNSPrefix:@"RgWsPublic"]);
	}
}
/* elements */
@synthesize errorDescr;
@synthesize errorCode;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (RgWsPublic_GenWsErrorRtUser *)deserializeNode:(xmlNodePtr)cur
{
	RgWsPublic_GenWsErrorRtUser *newObject = [[RgWsPublic_GenWsErrorRtUser new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errorDescr")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errorDescr = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errorCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errorCode = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]]) {
		self = [super performSelector:@selector(initWithCoder:) withObject:decoder];
	} else {
		self = [super init];
	}
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [decoder decodeObjectForKey:key];
		if (value == nil) { value = [NSNumber numberWithFloat:0.0]; }
		[self setValue:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id value = [self valueForKey:key];
		[encoder encodeObject:value forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation RgWsPublic
+ (void)initialize
{
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"xsd" forKey:@"http://www.w3.org/2001/XMLSchema"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"RgWsPublic" forKey:@"http://gr/gsis/rgwspublic/RgWsPublic.wsdl"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"mime" forKey:@"http://schemas.xmlsoap.org/wsdl/mime/"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"soap" forKey:@"http://schemas.xmlsoap.org/wsdl/soap/"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"soap11-enc" forKey:@"http://schemas.xmlsoap.org/soap/encoding/"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"soap12" forKey:@"http://schemas.xmlsoap.org/wsdl/soap12/"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"tns0" forKey:@"http://gr/gsis/rgwspublic/RgWsPublic.wsdl/types/"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"wsdl" forKey:@"http://schemas.xmlsoap.org/wsdl/"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"xsi" forKey:@"http://www.w3.org/2001/XMLSchema-instance"];
}
+ (RgWsPublicBinding *)RgWsPublicBinding
{
	return [[[RgWsPublicBinding alloc] initWithAddress:@"https://www1.gsis.gr/webtax2/wsgsis/RgWsPublic/RgWsPublicPort"] autorelease];
}
@end
@implementation RgWsPublicBinding
@synthesize address;
@synthesize timeout;
@synthesize logXMLInOut;
@synthesize ignoreEmptyResponse;
@synthesize cookies;
@synthesize customHeaders;
@synthesize soapSigner;
@synthesize sslManager;
+ (NSTimeInterval)defaultTimeout
{
	return 10;
}
- (id)init
{
	if((self = [super init])) {
		address = nil;
		cookies = nil;
		customHeaders = [NSMutableDictionary new];
		timeout = [[self class] defaultTimeout];
		logXMLInOut = NO;
		synchronousOperationComplete = NO;
	}
	
	return self;
}
- (id)initWithAddress:(NSString *)anAddress
{
	if((self = [self init])) {
		self.address = [NSURL URLWithString:anAddress];
	}
	
	return self;
}
- (NSString *)MIMEType
{
	return @"text/xml";
}
- (void)addCookie:(NSHTTPCookie *)toAdd
{
	if(toAdd != nil) {
		if(cookies == nil) cookies = [[NSMutableArray alloc] init];
		[cookies addObject:toAdd];
	}
}
- (RgWsPublicBindingResponse *)performSynchronousOperation:(RgWsPublicBindingOperation *)operation
{
	synchronousOperationComplete = NO;
	[operation start];
	
	// Now wait for response
	NSRunLoop *theRL = [NSRunLoop currentRunLoop];
	
	while (!synchronousOperationComplete && [theRL runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]]);
	return operation.response;
}
- (void)performAsynchronousOperation:(RgWsPublicBindingOperation *)operation
{
	[operation start];
}
- (void) operation:(RgWsPublicBindingOperation *)operation completedWithResponse:(RgWsPublicBindingResponse *)response
{
	synchronousOperationComplete = YES;
}
- (RgWsPublicBindingResponse *)rgWsPublicAfmMethodUsingRgWsPublicInputRt_in:(RgWsPublic_RgWsPublicInputRtUser *)aRgWsPublicInputRt_in RgWsPublicBasicRt_out:(RgWsPublic_RgWsPublicBasicRtUser *)aRgWsPublicBasicRt_out arrayOfRgWsPublicFirmActRt_out:(RgWsPublic_RgWsPublicFirmActRtUserArray *)aArrayOfRgWsPublicFirmActRt_out pCallSeqId_out:(NSNumber *)aPCallSeqId_out pErrorRec_out:(RgWsPublic_GenWsErrorRtUser *)aPErrorRec_out username:(NSString *)aUsername password:(NSString *)aPassword
{
	return [self performSynchronousOperation:[[(RgWsPublicBinding_rgWsPublicAfmMethod*)[RgWsPublicBinding_rgWsPublicAfmMethod alloc] initWithBinding:self delegate:self
																							RgWsPublicInputRt_in:aRgWsPublicInputRt_in
																							RgWsPublicBasicRt_out:aRgWsPublicBasicRt_out
																							arrayOfRgWsPublicFirmActRt_out:aArrayOfRgWsPublicFirmActRt_out
																							pCallSeqId_out:aPCallSeqId_out
																							pErrorRec_out:aPErrorRec_out
                                                                                                 username:aUsername
                                                                                                 password:(NSString *)aPassword
																							] autorelease]];
}
- (void)rgWsPublicAfmMethodAsyncUsingRgWsPublicInputRt_in:(RgWsPublic_RgWsPublicInputRtUser *)aRgWsPublicInputRt_in RgWsPublicBasicRt_out:(RgWsPublic_RgWsPublicBasicRtUser *)aRgWsPublicBasicRt_out arrayOfRgWsPublicFirmActRt_out:(RgWsPublic_RgWsPublicFirmActRtUserArray *)aArrayOfRgWsPublicFirmActRt_out pCallSeqId_out:(NSNumber *)aPCallSeqId_out pErrorRec_out:(RgWsPublic_GenWsErrorRtUser *)aPErrorRec_out username:(NSString *)aUsername password:(NSString *)aPassword delegate:(id<RgWsPublicBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(RgWsPublicBinding_rgWsPublicAfmMethod*)[RgWsPublicBinding_rgWsPublicAfmMethod alloc] initWithBinding:self delegate:responseDelegate
																							 RgWsPublicInputRt_in:aRgWsPublicInputRt_in
																							 RgWsPublicBasicRt_out:aRgWsPublicBasicRt_out
																							 arrayOfRgWsPublicFirmActRt_out:aArrayOfRgWsPublicFirmActRt_out
																							 pCallSeqId_out:aPCallSeqId_out
																							 pErrorRec_out:aPErrorRec_out
                                                                                                  username:aUsername
                                                                                                  password:(NSString *)aPassword
																							 ] autorelease]];
}
- (RgWsPublicBindingResponse *)rgWsPublicVersionInfoUsing
{
	return [self performSynchronousOperation:[[(RgWsPublicBinding_rgWsPublicVersionInfo*)[RgWsPublicBinding_rgWsPublicVersionInfo alloc] initWithBinding:self delegate:self
																							] autorelease]];
}
- (void)rgWsPublicVersionInfoAsyncUsingDelegate:(id<RgWsPublicBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(RgWsPublicBinding_rgWsPublicVersionInfo*)[RgWsPublicBinding_rgWsPublicVersionInfo alloc] initWithBinding:self delegate:responseDelegate
																							 ] autorelease]];
}
- (void)sendHTTPCallUsingBody:(NSString *)outputBody soapAction:(NSString *)soapAction forOperation:(RgWsPublicBindingOperation *)operation
{
    if (!outputBody) {
        NSError * err = [NSError errorWithDomain:@"RgWsPublicBindingNULLRequestExcpetion"
                                            code:0
                                        userInfo:nil];
        
        [operation connection:nil didFailWithError:err];
        return;
    }
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:self.address 
																												 cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData
																										 timeoutInterval:self.timeout];
	NSData *bodyData = [outputBody dataUsingEncoding:NSUTF8StringEncoding];
	
	if(cookies != nil) {
		[request setAllHTTPHeaderFields:[NSHTTPCookie requestHeaderFieldsWithCookies:cookies]];
	}
	[request setValue:@"wsdl2objc" forHTTPHeaderField:@"User-Agent"];
	[request setValue:soapAction forHTTPHeaderField:@"SOAPAction"];
	[request setValue:[[self MIMEType] stringByAppendingString:@"; charset=utf-8"] forHTTPHeaderField:@"Content-Type"];
	// ERICBE: cast to unsigned long to prevent warnings about implicit cast of NSInteger
	[request setValue:[NSString stringWithFormat:@"%lu", (unsigned long) [bodyData length]] forHTTPHeaderField:@"Content-Length"];
	[request setValue:self.address.host forHTTPHeaderField:@"Host"];
	for (NSString *eachHeaderField in [self.customHeaders allKeys]) {
		[request setValue:[self.customHeaders objectForKey:eachHeaderField] forHTTPHeaderField:eachHeaderField];
	}
	[request setHTTPMethod: @"POST"];
	// set version 1.1 - how?
	[request setHTTPBody: bodyData];
		
	if(self.logXMLInOut) {
		NSLog(@"OutputHeaders:\n%@", [request allHTTPHeaderFields]);
		NSLog(@"OutputBody:\n%@", outputBody);
	}
	
	NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:operation];
	
	operation.urlConnection = connection;
	[connection release];
}
- (void) dealloc
{
	[soapSigner release];
	// ERICBE: Assign sslManager property to nil to release it - avoids a compiler warning.
	// [sslManager release];
	self.sslManager = nil;
	[address release];
	[cookies release];
	[customHeaders release];
	[super dealloc];
}
@end
@implementation RgWsPublicBindingOperation
@synthesize binding;
@synthesize response;
@synthesize delegate;
@synthesize responseData;
@synthesize urlConnection;
- (id)initWithBinding:(RgWsPublicBinding *)aBinding delegate:(id<RgWsPublicBindingResponseDelegate>)aDelegate
{
	if ((self = [super init])) {
		self.binding = aBinding;
		response = nil;
		self.delegate = aDelegate;
		self.responseData = nil;
		self.urlConnection = nil;
	}
	
	return self;
}
- (BOOL)connection:(NSURLConnection *)connection canAuthenticateAgainstProtectionSpace:(NSURLProtectionSpace *)protectionSpace {
    return [binding.sslManager canAuthenticateForAuthenticationMethod:protectionSpace.authenticationMethod];
}
-(void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
	if (![binding.sslManager authenticateForChallenge:challenge]) {
		[[challenge sender] cancelAuthenticationChallenge:challenge];
	}
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)urlResponse
{
	NSHTTPURLResponse *httpResponse;
	if ([urlResponse isKindOfClass:[NSHTTPURLResponse class]]) {
		httpResponse = (NSHTTPURLResponse *) urlResponse;
	} else {
		httpResponse = nil;
	}
	
	if(self.binding.logXMLInOut) {
		NSLog(@"ResponseStatus: %ld\n", (long)[httpResponse statusCode]);
		NSLog(@"ResponseHeaders:\n%@", [httpResponse allHeaderFields]);
	}
    NSInteger contentLength = [[[httpResponse allHeaderFields] objectForKey:@"Content-Length"] integerValue];
	
	if ([urlResponse.MIMEType rangeOfString:[self.binding MIMEType]].length == 0) {
		if ((self.binding.ignoreEmptyResponse == NO) || (contentLength != 0)) {
			NSError *error = nil;
			[connection cancel];
			if ([httpResponse statusCode] >= 400) {
				NSDictionary *userInfo = [NSDictionary dictionaryWithObjectsAndKeys:[NSHTTPURLResponse localizedStringForStatusCode:[httpResponse statusCode]],NSLocalizedDescriptionKey,
																			  httpResponse.URL, NSURLErrorKey,nil];
				error = [NSError errorWithDomain:@"RgWsPublicBindingResponseHTTP" code:[httpResponse statusCode] userInfo:userInfo];
			} else {
				NSDictionary *userInfo = [NSDictionary dictionaryWithObjectsAndKeys:
														[NSString stringWithFormat: @"Unexpected response MIME type to SOAP call:%@", urlResponse.MIMEType],NSLocalizedDescriptionKey,
																			  httpResponse.URL, NSURLErrorKey,nil];
				error = [NSError errorWithDomain:@"RgWsPublicBindingResponseHTTP" code:1 userInfo:userInfo];
			}
				
			[self connection:connection didFailWithError:error];
		} else {
            [delegate operation:self completedWithResponse:response];
		}
	}
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
	if (responseData == nil) {
		responseData = [data mutableCopy];
	} else {
		[responseData appendData:data];
	}
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
	if (binding.logXMLInOut) {
		NSLog(@"ResponseError:\n%@", error);
	}
	response.error = error;
	[delegate operation:self completedWithResponse:response];
}
- (void)dealloc
{
	[binding release];
	[response release];
	delegate = nil;
	[responseData release];
	[urlConnection release];
	
	[super dealloc];
}
@end
@implementation RgWsPublicBinding_rgWsPublicAfmMethod
@synthesize RgWsPublicInputRt_in;
@synthesize RgWsPublicBasicRt_out;
@synthesize arrayOfRgWsPublicFirmActRt_out;
@synthesize pCallSeqId_out;
@synthesize pErrorRec_out;
@synthesize username;
@synthesize password;

- (id)initWithBinding:(RgWsPublicBinding *)aBinding delegate:(id<RgWsPublicBindingResponseDelegate>)responseDelegate
 RgWsPublicInputRt_in:(RgWsPublic_RgWsPublicInputRtUser *)aRgWsPublicInputRt_in
RgWsPublicBasicRt_out:(RgWsPublic_RgWsPublicBasicRtUser *)aRgWsPublicBasicRt_out
arrayOfRgWsPublicFirmActRt_out:(RgWsPublic_RgWsPublicFirmActRtUserArray *)aArrayOfRgWsPublicFirmActRt_out
       pCallSeqId_out:(NSNumber *)aPCallSeqId_out
        pErrorRec_out:(RgWsPublic_GenWsErrorRtUser *)aPErrorRec_out
             username:(NSString *)aUsername
             password:(NSString *)aPassword
{
    if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
        self.RgWsPublicInputRt_in = aRgWsPublicInputRt_in;
        self.RgWsPublicBasicRt_out = aRgWsPublicBasicRt_out;
        self.arrayOfRgWsPublicFirmActRt_out = aArrayOfRgWsPublicFirmActRt_out;
        self.pCallSeqId_out = aPCallSeqId_out;
        self.pErrorRec_out = aPErrorRec_out;
        self.username = aUsername;
        self.password = aPassword;
    }
    
    return self;
}
- (void)dealloc
{
	if(RgWsPublicInputRt_in != nil) [RgWsPublicInputRt_in release];
	if(RgWsPublicBasicRt_out != nil) [RgWsPublicBasicRt_out release];
	if(arrayOfRgWsPublicFirmActRt_out != nil) [arrayOfRgWsPublicFirmActRt_out release];
	if(pCallSeqId_out != nil) [pCallSeqId_out release];
	if(pErrorRec_out != nil) [pErrorRec_out release];
    if(username != nil) [username release];
    if(password != nil) [password release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [RgWsPublicBindingResponse new];
	
	RgWsPublicBinding_envelope *envelope = [RgWsPublicBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
    //set the security headers for the UsernameToken Policy
    if((username.length > 0) && (password.length > 0)) {
        RgWsPublic_RgWsPublicHeaderUsernameToken *usernameToken = [RgWsPublic_RgWsPublicHeaderUsernameToken new];
        usernameToken.username = self.username;
        usernameToken.password = self.password;
        RgWsPublic_RgWsPublicHeaderSecurity *security = [RgWsPublic_RgWsPublicHeaderSecurity new];
        security.usernameToken = usernameToken;
        [headerElements setObject:security forKey:@"Security"];
    }
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(RgWsPublicInputRt_in != nil) obj = RgWsPublicInputRt_in;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"RgWsPublicInputRt_in"];
		[bodyKeys addObject:@"RgWsPublicInputRt_in"];
	}
	if(RgWsPublicBasicRt_out != nil) obj = RgWsPublicBasicRt_out;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"RgWsPublicBasicRt_out"];
		[bodyKeys addObject:@"RgWsPublicBasicRt_out"];
	}
	if(arrayOfRgWsPublicFirmActRt_out != nil) obj = arrayOfRgWsPublicFirmActRt_out;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"arrayOfRgWsPublicFirmActRt_out"];
		[bodyKeys addObject:@"arrayOfRgWsPublicFirmActRt_out"];
	}
	if(pCallSeqId_out != nil) obj = pCallSeqId_out;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"pCallSeqId_out"];
		[bodyKeys addObject:@"pCallSeqId_out"];
	}
	if(pErrorRec_out != nil) obj = pErrorRec_out;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"pErrorRec_out"];
		[bodyKeys addObject:@"pErrorRec_out"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys method:@"rgWsPublicAfmMethod"];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"http://gr/gsis/rgwspublic/RgWsPublic.wsdl/rgWsPublicAfmMethod" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"RgWsPublicBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
            
            for( ; cur != NULL ; cur = cur->next) {
                if(cur->type == XML_ELEMENT_NODE) {
                    
                    if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
                        cur = cur->children;
                        
                        if(cur->type == XML_ELEMENT_NODE) {
                            
                            NSMutableArray *responseBodyParts = [NSMutableArray array];
                            
                            xmlNodePtr bodyNode = cur;
                            if(xmlStrEqual(bodyNode->name, (const xmlChar *) "rgWsPublicAfmMethodResponse")) {
                                
                                for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
                                    if(cur->type == XML_ELEMENT_NODE) {
                                        if(xmlStrEqual(bodyNode->name, (const xmlChar *) "RgWsPublicBasicRt_out")) {
                                            RgWsPublic_RgWsPublicBasicRtUser *bodyObject = [RgWsPublic_RgWsPublicBasicRtUser deserializeNode:bodyNode];
                                            //NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
                                            if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                        }
                                        if(xmlStrEqual(bodyNode->name, (const xmlChar *) "arrayOfRgWsPublicFirmActRt_out")) {
                                            RgWsPublic_RgWsPublicFirmActRtUserArray *bodyObject = [RgWsPublic_RgWsPublicFirmActRtUserArray deserializeNode:bodyNode];
                                            //NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
                                            if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                        }
                                        if(xmlStrEqual(bodyNode->name, (const xmlChar *) "pCallSeqId_out")) {
                                            NSNumber *bodyObject = [NSNumber deserializeNode:bodyNode];
                                            //NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
                                            if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                        }
                                        if(xmlStrEqual(bodyNode->name, (const xmlChar *) "pErrorRec_out")) {
                                            RgWsPublic_GenWsErrorRtUser *bodyObject = [RgWsPublic_GenWsErrorRtUser deserializeNode:bodyNode];
                                            //NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
                                            if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                        }
                                    }
                                }
                            }
                            else if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) &&
                                                                        xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
                                                            nil];
                                SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
                                //NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
                                if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                            }
                            response.bodyParts = responseBodyParts;
                        }
                    }
                }
            }
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation RgWsPublicBinding_rgWsPublicVersionInfo
- (id)initWithBinding:(RgWsPublicBinding *)aBinding delegate:(id<RgWsPublicBindingResponseDelegate>)responseDelegate
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
	}
	
	return self;
}
- (void)dealloc
{
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [RgWsPublicBindingResponse new];
	
	RgWsPublicBinding_envelope *envelope = [RgWsPublicBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
//	id obj = nil;
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys method:@"rgWsPublicVersionInfo"];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"http://gr/gsis/rgwspublic/RgWsPublic.wsdl/rgWsPublicVersionInfo" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"RgWsPublicBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
                
                if(cur->type == XML_ELEMENT_NODE) {
                    
                    if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
                        cur = cur->children;
                        
                        if(cur->type == XML_ELEMENT_NODE) {
                            
                            NSMutableArray *responseBodyParts = [NSMutableArray array];
                            
                            xmlNodePtr bodyNode = cur;
                            if(xmlStrEqual(bodyNode->name, (const xmlChar *) "rgWsPublicVersionInfoResponse")) {
                                
                                for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
                                    if(cur->type == XML_ELEMENT_NODE) {
                                        if(xmlStrEqual(bodyNode->name, (const xmlChar *) "result")) {
                                            NSString *bodyObject = [NSString deserializeNode:bodyNode];
                                            //NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
                                            if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                        }
                                    }
                                }
                            }
                            else if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) &&
                                     xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
                                                            nil];
                                SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
                                //NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
                                if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                            }
                            response.bodyParts = responseBodyParts;
                        }
                    }
                }
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
static RgWsPublicBinding_envelope *RgWsPublicBindingSharedEnvelopeInstance = nil;
@implementation RgWsPublicBinding_envelope
+ (RgWsPublicBinding_envelope *)sharedInstance
{
	if(RgWsPublicBindingSharedEnvelopeInstance == nil) {
		RgWsPublicBindingSharedEnvelopeInstance = [RgWsPublicBinding_envelope new];
	}
	
	return RgWsPublicBindingSharedEnvelopeInstance;
}
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements bodyKeys:(NSArray *)bodyKeys method:(NSString *)methodName
{
	xmlDocPtr doc;
	
	doc = xmlNewDoc((const xmlChar*)XML_DEFAULT_VERSION);
	if (doc == NULL) {
		NSLog(@"Error creating the xml document tree");
		return @"";
	}
	
	xmlNodePtr root = xmlNewDocNode(doc, NULL, (const xmlChar*)"Envelope", NULL);
	xmlDocSetRootElement(doc, root);
	
	xmlNsPtr soapEnvelopeNs = xmlNewNs(root, (const xmlChar*)"http://schemas.xmlsoap.org/soap/envelope/", (const xmlChar*)"soap");
	xmlSetNs(root, soapEnvelopeNs);
	
	xmlNsPtr xslNs = xmlNewNs(root, (const xmlChar*)"http://www.w3.org/1999/XSL/Transform", (const xmlChar*)"xsl");
	xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2001/XMLSchema-instance", (const xmlChar*)"xsi");
	
	xmlNewNsProp(root, xslNs, (const xmlChar*)"version", (const xmlChar*)"1.0");
	
	xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2001/XMLSchema", (const xmlChar*)"xsd");
	xmlNewNs(root, (const xmlChar*)"http://gr/gsis/rgwspublic/RgWsPublic.wsdl", (const xmlChar*)"RgWsPublic");
	xmlNewNs(root, (const xmlChar*)"http://schemas.xmlsoap.org/wsdl/mime/", (const xmlChar*)"mime");
	xmlNewNs(root, (const xmlChar*)"http://schemas.xmlsoap.org/wsdl/soap/", (const xmlChar*)"soap");
	xmlNewNs(root, (const xmlChar*)"http://schemas.xmlsoap.org/soap/encoding/", (const xmlChar*)"soap11-enc");
	xmlNewNs(root, (const xmlChar*)"http://schemas.xmlsoap.org/wsdl/soap12/", (const xmlChar*)"soap12");
	xmlNewNs(root, (const xmlChar*)"http://gr/gsis/rgwspublic/RgWsPublic.wsdl/types/", (const xmlChar*)"tns0");
	xmlNewNs(root, (const xmlChar*)"http://schemas.xmlsoap.org/wsdl/", (const xmlChar*)"wsdl");
	xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2001/XMLSchema-instance", (const xmlChar*)"xsi");
	
	if((headerElements != nil) && ([headerElements count] > 0)) {
		xmlNodePtr headerNode = xmlNewDocNode(doc, soapEnvelopeNs, (const xmlChar*)"Header", NULL);
		xmlAddChild(root, headerNode);
		
		for(NSString *key in [headerElements allKeys]) {
			id header = [headerElements objectForKey:key];
			xmlAddChild(headerNode, [header xmlNodeForDoc:doc elementName:key elementNSPrefix:nil]);
		}
	}
	
    if(((bodyElements != nil) && ([bodyElements count] > 0)) || methodName.length>0) {
        xmlNodePtr bodyNode = xmlNewDocNode(doc, soapEnvelopeNs, (const xmlChar*)"Body", NULL);
        xmlAddChild(root, bodyNode);
        
        xmlNsPtr serviceNs = xmlNewNs(root, (const xmlChar*)"http://gr/gsis/rgwspublic/RgWsPublic.wsdl",
                                      (const xmlChar*)"ns1");
        xmlNodePtr methodNode = xmlNewDocNode(doc, serviceNs, (const xmlChar*) [methodName
                                                                                UTF8String], NULL);
        xmlAddChild(bodyNode, methodNode);
        
        for(NSString *key in bodyKeys) {
            id body = [bodyElements objectForKey:key];
            xmlAddChild(methodNode, [body xmlNodeForDoc:doc elementName:key elementNSPrefix:nil]);
        }
    }
	
	xmlChar *buf;
	int size;
	xmlDocDumpFormatMemory(doc, &buf, &size, 1);
	
	NSString *serializedForm = [NSString stringWithCString:(const char*)buf encoding:NSUTF8StringEncoding];
	xmlFree(buf);
	
	xmlFreeDoc(doc);	
	return serializedForm;
}
@end
@implementation RgWsPublicBindingResponse
@synthesize headers;
@synthesize bodyParts;
@synthesize error;
- (id)init
{
	if((self = [super init])) {
		headers = nil;
		bodyParts = nil;
		error = nil;
	}
	
	return self;
}
- (void)dealloc {
	self.headers = nil;
	self.bodyParts = nil;
	self.error = nil;	
	[super dealloc];
}
@end
@implementation RgWsPublic_RgWsPublicHeaderUsernameToken
- (id)init
{
    if((self = [super init])) {
        username = 0;
        password = 0;
    }
    
    return self;
}
- (void)dealloc
{
    if(username != nil) [username release];
    if(password != nil) [password release];
    
    [super dealloc];
}
- (NSString *)nsPrefix
{
    return @"wsse";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
    NSString *nodeName = nil;
    if(elNSPrefix != nil && [elNSPrefix length] > 0)
    {
        nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
    }
    else
    {
        nodeName = [NSString stringWithFormat:@"%@:%@", @"wsse", elName];
    }
    xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
//    xmlNodePtr root = xmlDocGetRootElement(doc);
//    xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
//    xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"RgWsPublic:RgWsPublicBasicRtUser");
    // BUGBUG: ASP.NET compatibility: need to add xmlns attribute or else parameters don't make it.  Is there a good
    // place to do this so that we don't have to redo this whenever we autogenerate new code?
//    xmlNsPtr xmlns = xmlSearchNs(doc, root, (const xmlChar*)"xmlns");
//    xmlSetNsProp(node, xmlns, (const xmlChar*)"xmlns", (const xmlChar*)"http://myflightbook.com/");
    
    
    [self addAttributesToNode:node];
    
    [self addElementsToNode:node];
    
    return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
    
}
- (void)addElementsToNode:(xmlNodePtr)node
{
    
    if(self.username != 0) {
        xmlAddChild(node, [self.username xmlNodeForDoc:node->doc elementName:@"Username" elementNSPrefix:@"wsse"]);
    }
    if(self.password != 0) {
        xmlAddChild(node, [self.password xmlNodeForDoc:node->doc elementName:@"Password" elementNSPrefix:@"wsse"]);
    }
}
/* elements */
@synthesize username;
@synthesize password;
/* attributes */
- (NSDictionary *)attributes
{
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
    
    return attributes;
}
+ (RgWsPublic_RgWsPublicHeaderUsernameToken *)deserializeNode:(xmlNodePtr)cur
{
    RgWsPublic_RgWsPublicHeaderUsernameToken *newObject = [[RgWsPublic_RgWsPublicHeaderUsernameToken new] autorelease];
    
    [newObject deserializeAttributesFromNode:cur];
    [newObject deserializeElementsFromNode:cur];
    
    return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
    
    for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
        if(cur->type == XML_ELEMENT_NODE) {
            xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
            NSString *elementString = nil;
            
            if(elementText != NULL) {
                elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
                [elementString self]; // avoid compiler warning for unused var
                xmlFree(elementText);
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "Username")) {
                
                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSString class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
                    
                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
                    
                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];
                        
                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
                        
                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
                        
                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }
                    
                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }
                
                id newChild = [elementClass deserializeNode:cur];
                
                self.username = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "Password")) {
                
                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSString class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
                    
                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
                    
                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];
                        
                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
                        
                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
                        
                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }
                    
                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }
                
                id newChild = [elementClass deserializeNode:cur];
                
                self.password = newChild;
            }
        }
    }
}
/* NSCoder functions taken from:
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
    if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]]) {
        self = [super performSelector:@selector(initWithCoder:) withObject:decoder];
    } else {
        self = [super init];
    }
    if (self == nil) { return nil; }
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    unsigned int numIvars = 0;
    Ivar * ivars = class_copyIvarList([self class], &numIvars);
    for(int i = 0; i < numIvars; i++) {
        Ivar thisIvar = ivars[i];
        NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        id value = [decoder decodeObjectForKey:key];
        if (value == nil) { value = [NSNumber numberWithFloat:0.0]; }
        [self setValue:value forKey:key];
    }
    if (numIvars > 0) { free(ivars); }
    [pool drain];
    return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
    if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
        [super performSelector:@selector(encodeWithCoder:) withObject:encoder];
    }
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    unsigned int numIvars = 0;
    Ivar * ivars = class_copyIvarList([self class], &numIvars);
    for (int i = 0; i < numIvars; i++) {
        Ivar thisIvar = ivars[i];
        NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        id value = [self valueForKey:key];
        [encoder encodeObject:value forKey:key];
    }
    if (numIvars > 0) { free(ivars); }
    [pool drain];
}
@end
@implementation RgWsPublic_RgWsPublicHeaderSecurity
- (id)init
{
    if((self = [super init])) {
        usernameToken = 0;
    }
    
    return self;
}
- (void)dealloc
{
    if(usernameToken != nil) [usernameToken release];
    
    [super dealloc];
}
- (NSString *)nsPrefix
{
    return @"wsse";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
    NSString *nodeName = nil;
    if(elNSPrefix != nil && [elNSPrefix length] > 0)
    {
        nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
    }
    else
    {
        nodeName = [NSString stringWithFormat:@"%@:%@", @"wsse", elName];
    }
    xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
    xmlNodePtr root = xmlDocGetRootElement(doc);
//    xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
//    xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"RgWsPublic:RgWsPublicBasicRtUser");
    // BUGBUG: ASP.NET compatibility: need to add xmlns attribute or else parameters don't make it.  Is there a good
    // place to do this so that we don't have to redo this whenever we autogenerate new code?
    xmlNsPtr xmlns = xmlSearchNs(doc, root, (const xmlChar*)"xmlns");
    xmlSetNsProp(node, xmlns, (const xmlChar*)"xmlns:wsse", (const xmlChar*)"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd");
//    xmlNsPtr wsseNs = xmlNewNs(root, (const xmlChar*)"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd", (const xmlChar*)"wsse");
//    xmlSetNs(node, wsseNs);
    
    [self addAttributesToNode:node];
    
    [self addElementsToNode:node];
    
    return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
    
}
- (void)addElementsToNode:(xmlNodePtr)node
{
    
    if(self.usernameToken != 0) {
        xmlAddChild(node, [self.usernameToken xmlNodeForDoc:node->doc elementName:@"UsernameToken" elementNSPrefix:@"wsse"]);
    }
}
/* elements */
@synthesize usernameToken;
/* attributes */
- (NSDictionary *)attributes
{
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
    
    return attributes;
}
+ (RgWsPublic_RgWsPublicHeaderSecurity *)deserializeNode:(xmlNodePtr)cur
{
    RgWsPublic_RgWsPublicHeaderSecurity *newObject = [[RgWsPublic_RgWsPublicHeaderSecurity new] autorelease];
    
    [newObject deserializeAttributesFromNode:cur];
    [newObject deserializeElementsFromNode:cur];
    
    return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
    
    for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
        if(cur->type == XML_ELEMENT_NODE) {
            xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
            NSString *elementString = nil;
            
            if(elementText != NULL) {
                elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
                [elementString self]; // avoid compiler warning for unused var
                xmlFree(elementText);
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "UsernameToken")) {
                
                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSString class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
                    
                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
                    
                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];
                        
                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
                        
                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
                        
                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }
                    
                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }
                
                id newChild = [elementClass deserializeNode:cur];
                
                self.usernameToken = newChild;
            }
        }
    }
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
    if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]]) {
        self = [super performSelector:@selector(initWithCoder:) withObject:decoder];
    } else {
        self = [super init];
    }
    if (self == nil) { return nil; }
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    unsigned int numIvars = 0;
    Ivar * ivars = class_copyIvarList([self class], &numIvars);
    for(int i = 0; i < numIvars; i++) {
        Ivar thisIvar = ivars[i];
        NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        id value = [decoder decodeObjectForKey:key];
        if (value == nil) { value = [NSNumber numberWithFloat:0.0]; }
        [self setValue:value forKey:key];
    }
    if (numIvars > 0) { free(ivars); }
    [pool drain];
    return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
    if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
        [super performSelector:@selector(encodeWithCoder:) withObject:encoder];
    }
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    unsigned int numIvars = 0;
    Ivar * ivars = class_copyIvarList([self class], &numIvars);
    for (int i = 0; i < numIvars; i++) {
        Ivar thisIvar = ivars[i];
        NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        id value = [self valueForKey:key];
        [encoder encodeObject:value forKey:key];
    }
    if (numIvars > 0) { free(ivars); }
    [pool drain];
}
@end
