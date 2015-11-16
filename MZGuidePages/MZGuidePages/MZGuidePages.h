//
//  MZGuidePages.h
//  MZGuidePages
//
//  Created by boco on 15/11/13.
//  Copyright © 2015年 Machelle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MZGuidePages : UIView

@property (nonatomic, strong) NSArray *imageDatas;
@property (nonatomic, copy) void (^buttonAction)();

- (instancetype)initWithImageDatas:(NSArray *)imageDatas completion:(void (^)(void))buttonAction;

@end
