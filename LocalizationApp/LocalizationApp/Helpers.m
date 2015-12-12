//
//  Helpers.m
//  LocalizationApp
//
//  Created by Gena on 12.12.15.
//  Copyright © 2015 Gena. All rights reserved.
//

#import "Helpers.h"

@implementation Helpers

+ (NSDateFormatter *)dateFormatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [NSLocale currentLocale];
    dateFormatter.dateStyle = NSDateFormatterMediumStyle;
    return dateFormatter;
}

+ (NSNumberFormatter *)numberFormatter {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    numberFormatter.locale = [NSLocale currentLocale];
    numberFormatter.numberStyle = NSNumberFormatterNoStyle;
    return numberFormatter;
}

+ (NSNumberFormatter *)decimalNumberFormatter {
    NSNumberFormatter *decimalNumberFormatter = [[NSNumberFormatter alloc] init];
    decimalNumberFormatter.locale = [NSLocale currentLocale];
    decimalNumberFormatter.numberStyle = NSNumberFormatterDecimalStyle;
    return decimalNumberFormatter;
}

@end
