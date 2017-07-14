//
//  WavyCollectionViewCell.m
//  Wavy Collection
//
//  Created by Errol Cheong on 2017-07-13.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "WavyCollectionViewCell.h"

@interface WavyCollectionViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation WavyCollectionViewCell

-(void)updateDisplay{
    
    self.label.text = [NSString stringWithFormat:@"Center Y:%.2f\nHeight:%.2f",
                       self.center.y, self.frame.size.height];
    [self.label sizeToFit];
    
}

@end
