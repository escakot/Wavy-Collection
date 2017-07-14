//
//  WavyViewController.m
//  Wavy Collection
//
//  Created by Errol Cheong on 2017-07-13.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "WavyViewController.h"
#import "WavyCollectionViewCell.h"
#import "WavyFlowLayout.h"

@interface WavyViewController () <UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) WavyFlowLayout *wavyFlowLayout;

@end

@implementation WavyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.wavyFlowLayout = [[WavyFlowLayout alloc] init];
    self.collectionView.collectionViewLayout = self.wavyFlowLayout;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 8;
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    WavyCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"wavyCell" forIndexPath:indexPath];
    
    [cell updateDisplay];
    
    return cell;
}


@end
