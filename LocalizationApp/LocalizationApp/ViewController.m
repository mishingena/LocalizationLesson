//
//  ViewController.m
//  LocalizationApp
//
//  Created by Gena on 11.12.15.
//  Copyright © 2015 Gena. All rights reserved.
//

#import "ViewController.h"
#import "MGSBook.h"
#import "Helpers.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (weak, nonatomic) IBOutlet UILabel *editionCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *rateLabel;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:NSLocalizedString(@"book.image", nil)];
    NSNumber *editionCount = [NSNumber numberWithInt:2000];
    NSDecimalNumber *rate = [[NSDecimalNumber alloc] initWithDouble:3.87];
    NSDate *date = [NSDate date];
    
    MGSBook *book = [[MGSBook alloc] initWithTitle:NSLocalizedString(@"book.title.VoinaIMir", nil) image:image author:NSLocalizedString(@"book.author.Tolstoy", nil) editionCount:editionCount text:@"book.text" rate:rate date:date];
    
    self.titleLabel.text = [NSString stringWithFormat:@"%@: %@", NSLocalizedString(@"book.title", nil), NSLocalizedString(book.title, nil)];
    self.authorLabel.text = [NSString stringWithFormat:@"%@: %@", NSLocalizedString(@"book.author", nil),NSLocalizedString(book.author, nil) ];
    self.textLabel.text = [NSString stringWithFormat:@"%@",NSLocalizedString(book.text, nil)];
    
    NSString *dateString = [[Helpers dateFormatter] stringFromDate:date];
    NSString *editionCountString = [[Helpers numberFormatter] stringFromNumber:editionCount];
    NSString *rateString = [[Helpers decimalNumberFormatter] stringFromNumber:rate];
    
    self.dateLabel.text = [NSString stringWithFormat:@"%@: %@", NSLocalizedString(@"book.date", nil), dateString];
    self.editionCountLabel.text = [NSString stringWithFormat:@"%@: %@", NSLocalizedString(@"book.edition", nil), editionCountString];
    self.rateLabel.text = [NSString stringWithFormat:@"%@: %@", NSLocalizedString(@"book.rate", nil), rateString];
    
    self.imageView.image = book.image;
    
}



@end
