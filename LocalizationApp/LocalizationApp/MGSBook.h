//
//  MGSBook.h
//  LocalizationApp
//
//  Created by Gena on 11.12.15.
//  Copyright © 2015 Gena. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIImage;

@interface MGSBook : NSObject

@property (nonatomic, strong, readonly) NSString *title;
@property (nonatomic, strong, readonly) UIImage *image;
@property (nonatomic, strong, readonly) NSString *author;
@property (nonatomic, strong, readonly) NSNumber *editionCount;
@property (nonatomic, strong, readonly) NSString *text;
@property (nonatomic, strong, readonly) NSDecimalNumber *rate;
@property (nonatomic, strong, readonly) NSDate *date;

- (instancetype)initWithTitle:(NSString *)title
                        image:(UIImage *)image
                       author:(NSString *)author
                 editionCount:(NSNumber *)editionCount
                         text:(NSString *)text
                         rate:(NSDecimalNumber *)rate
                         date:(NSDate *)date;



@end
