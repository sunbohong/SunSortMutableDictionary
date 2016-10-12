//
//  SunSortMutableDictionary.h
//  SunSortMutableDictionary
//
//  Created by sunbohong on 16/9/21.
//  Copyright © 2016年 sunbohong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SunSortMutableDictionary : NSDictionary

@property (nonatomic, copy) NSComparator comparator;

- (void)setObject:(nullable id)obj forKeyedSubscript:(id <NSCopying>)key;

@end

NS_ASSUME_NONNULL_END
