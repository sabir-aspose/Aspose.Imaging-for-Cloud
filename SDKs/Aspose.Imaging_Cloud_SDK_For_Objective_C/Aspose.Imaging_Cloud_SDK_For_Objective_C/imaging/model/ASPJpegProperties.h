#import <Foundation/Foundation.h>
#import "ASPObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "ASPJpegExifData.h"
#import "ASPJfifData.h"


@protocol ASPJpegProperties
@end

@interface ASPJpegProperties : ASPObject


@property(nonatomic) NSString* comment;

@property(nonatomic) ASPJpegExifData* jpegExifData;

@property(nonatomic) ASPJfifData* jpegJfifData;

@end
