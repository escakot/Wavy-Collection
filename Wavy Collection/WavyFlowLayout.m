//
//  WavyFlowLayout.m
//  Wavy Collection
//
//  Created by Errol Cheong on 2017-07-13.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "WavyFlowLayout.h"

@interface WavyFlowLayout ()

@property (strong, nonatomic) NSMutableArray *layoutAttributes;

@end

@implementation WavyFlowLayout


-(void)prepareLayout{
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}


-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    NSArray<UICollectionViewLayoutAttributes*>* layouts = [super layoutAttributesForElementsInRect:rect];
    
    self.layoutAttributes = [[NSMutableArray alloc] init];
    
    for (UICollectionViewLayoutAttributes* attribute in layouts) {
        CGFloat newY = attribute.frame.size.height/2 + (((float) rand() / RAND_MAX) * (self.collectionView.frame.size.height - attribute.frame.size.height));
        CGFloat newHeight = ((newY * -1) + (self.collectionView.frame.size.height - attribute.frame.size.height)) / 2;
        CGRect frame = CGRectMake(attribute.frame.origin.x, 0, attribute.frame.size.width, newHeight);
        attribute.frame = frame;
        attribute.center = CGPointMake(attribute.center.x, newY);
        
        
        
        [self.layoutAttributes addObject:attribute];
    }
    return self.layoutAttributes;
}

@end
