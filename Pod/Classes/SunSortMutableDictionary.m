//
//  SunSortMutableDictionary.m
//  SunSortMutableDictionary
//
//  Created by sunbohong on 16/9/21.
//  Copyright © 2016年 sunbohong. All rights reserved.
//

#import "SunSortMutableDictionary.h"


@implementation SunSortMutableDictionary {
    NSMutableDictionary *__dic;
}

+ (instancetype)dictionary {
    return [SunSortMutableDictionary new];
}

- (instancetype)init {
    if (self = [super init]) {
        __dic = [NSMutableDictionary dictionary];
    }
    return self;
}

- (instancetype)initWithObjects:(const id _Nonnull __unsafe_unretained *)objects forKeys:(const id<NSCopying>  _Nonnull __unsafe_unretained *)keys count:(NSUInteger)cnt {
    if (self = [super init]) {
        __dic = [NSMutableDictionary dictionaryWithObjects:objects forKeys:keys count:cnt];
    }
    return self;
}

- (nullable id)objectForKeyedSubscript:(NSString *)key {
    return __dic[key];
}

- (void)setObject:(nullable id)obj forKeyedSubscript:(id <NSCopying>)key {
    __dic[key] = obj;
}

- (NSUInteger)count {
    return __dic.count;
}

- (NSString *)description {
    return [@"" stringByAppendingFormat:@"%@:%p\n%@", [self class], self, __dic];
}

- (NSEnumerator *)keyEnumerator {
    if (!self.comparator) {
        return __dic.keyEnumerator;
    } else{
        NSMutableArray *arr = [NSMutableArray arrayWithArray:__dic.allKeys];
        [arr sortUsingComparator:self.comparator];
        return arr.objectEnumerator;
    }
}

- (id)objectForKey:(id)aKey {
    return __dic[aKey];
}

@end
