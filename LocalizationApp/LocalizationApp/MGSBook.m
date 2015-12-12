//
//  MGSBook.m
//  LocalizationApp
//
//  Created by Gena on 11.12.15.
//  Copyright © 2015 Gena. All rights reserved.
//

#import "MGSBook.h"

@implementation MGSBook

- (instancetype)initWithTitle:(NSString *)title
                        image:(UIImage *)image
                       author:(NSString *)author
                 editionCount:(NSNumber *)editionCount
                         text:(NSString *)text
                         rate:(NSDecimalNumber *)rate
                         date:(NSDate *)date {
    self = [super init];
    if (self) {
        _title = title;
        _image = image;
        _author = author;
        _editionCount = editionCount;
        _text = text;
        _rate = rate;
        _date = date;
    }
    return self;
}

@end
