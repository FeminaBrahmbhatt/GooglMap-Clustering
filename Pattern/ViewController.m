//
//  ViewController.m
//  Pattern Project
//
//  Created by Femina Rajesh Brahmbhatt on 04/08/17.
//  Copyright © 2017 ENM Technologies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   //no is for spacing columns
    //i is for no of row
    //j is for column
    //s is for spacing
    /*
    *
    * *
    * * *
    * * * *
    * * * * *

    //i is for row
    //s is fow column having "  "
     // j is for column having "*"
    int  nos = 4;
    for ( int i = 1; i <= 5; i++) {
        for (int s = nos; s >= 1; s--) {  // Spacing factor
            printf("  ");
        }
        for (int j = 1; j <= i; j++) {
            printf("%2s", "*");
        }
        printf("\n");
        --nos;   // Controls the spacing factor
    }
     */
    
    /*
    *                   *
    * * *           * * *
    * * * * *   * * * * *
    * * * * * * * * * * *
    
    
    int i, j, k, s;
    int c = 1;
    int nos = 9;
    
    for (i = 1; c <= 4; i++) {
        // As we want to print the columns in odd sequence viz. 1,3,5,.etc
        if ((i % 2) != 0) {
            for (j = 1; j <= i; j++) {
                printf("%2s", "*");
            }
            for (s = nos; s >= 1; s--) { //The spacing factor
                if (c == 4 && s == 1) {
                    break;
                }
                printf("  ");
            }
            for (k = 1; k <= i; k++) {
                if (c == 4 && k == 5) {
                    break;
                }
                printf("%2s", "*");
            }
            printf("\n");
            nos = nos - 4;  // controls the spacing factor
            ++c;
        }
    }

      */
    
    /*
     
     *                       *
     *                 *
     *     *           *     *
     *     *     *     *
     *     *     *     *     *
     *     *     *     *
     *     *           *     *
     *                 *
     *                       *
     
    int i, j, k, s, p, r, nos = 7;
    
    for (i = 1; i <= 5; i++) {
        for (j = 1; j <= i; j++) {
            if ((i % 2) != 0 && (j % 2) != 0) {
                printf("%3s", "*");
            }
            else if ((i % 2) == 0 && (j % 2) == 0) {
                printf("%3s", "*");
            }
            else {
                printf("   ");
            }
        }
        for (s = nos; s >= 1; s--) {  // for the spacing factor
            printf("   ");
        }
        for (k = 1; k <= i; k++) { //Joining seperate figures
            if (i == 5 && k == 1) {
                continue;
            }
            if ((k % 2) != 0) {
                printf("%3s", "*");
            }
            else {
                printf("   ");
            }
        }
        printf("\n");
        nos = nos - 2;   // space control
    }  nos = 1;  // remaining half..
    for (p = 4; p >= 1; p--) {
        for (r = 1; r <= p; r++) {
            if ((p % 2) != 0 && (r % 2) != 0) {
                printf("%3s", "*");
            }
            else if ((p % 2) == 0 && (r % 2) == 0) {
                printf("%3s", "*");
            }
            else {
                printf("   ");
            }
        }
        for (s = nos; s >= 1; s--) {
            printf("   ");
        }
        for (k = 1; k <= p; k++) {
            if ((k % 2) != 0) {
                printf("%3s", "*");
            }
            else {
                printf("   ");
            }
        }
        nos = nos + 2;  // space control
        printf("\n");
    }
     
     */
    /*
    *   *   *   *   *
    *   *   *   *
    *   *   *
    *   *
    *
    *   *
    *   *   *
    *   *   *   *
    *   *   *   *   *
    int i, j, s, nos = 0;
    for (i = 9; i >= 1; (i = i - 2)) {
        for (s = nos; s >= 1; s--) {
            printf("   ");
        }
        for (j = 1;j <= i; j++) {
            if ((i % 2) != 0 && (j % 2) != 0) {
                printf("%2s","*");
            }
            else{
                printf("   ");
            }
        }
            printf("\n");
            nos++;
    }
    nos = 3;
    for (i = 3; i <= 9; (i=i+2)) {
        for (s=nos; s>=1; s--) {
            printf("   ");
        }
        for (j=1; j<=i; j++) {
            if ((i%2)!=0 && (j%2)!=0) {
                printf("%2s","*");
            }
            else{
                printf("   ");
            }
        }
        printf("\n");
        nos--;
    }
    */
    //NSArray *arr = @[@7, @42, @5, @6, @42, @8, @7, @5, @3, @6, @7];
    //NSLog(@"%d",[self findindex:arr favno1:7 favno2:42 countofarr:(int)arr.count]);
    
    //NSLog(@"%d",[self countsquaresbetween:2 and:10]);
    [self findElements:@[@2, @0 ,@3 , @5, @1]];
}

-(int)findindex:(NSArray*)arr favno1:(int)x favno2:(int)y countofarr:(int)n{

    int nx = 0;
    int ny = 0;
    int result = -1;
    
    for(int i=0;i<n;i++){
     
        if ([arr[i] intValue]==x) {
            nx++;
        }
        
        if ([arr[i] intValue]==y) {
            ny++;
        }
        
        if ((nx==ny)&&(nx!=0||ny!=0)) {
            result = i;
        }
    
    }
    
    return result;
    
}

-(int)countsquaresbetween:(int)a and:(int)b{
    
    int result = 1;
    for (int i = a; i<=b; i++) {
        
        for (int j=1; j*j<=i; j++){
            if (j*j == i){
                result++;
            }
        }
    }
    return result;
}

-(void)findElements:(NSArray*)arr{
    
    int count = 0;
    
    for (int i = 0; i<arr.count; i++) {
        
        for (int j=0; j<arr.count; j++){
            if ([arr[j] intValue]>[arr[i] intValue]){
                count++;
            }
            
            if (count>=2) {
                NSLog(@"%@",arr[i]);
            }
        }
    }
   
}

-(int)solution:(NSArray *) A{
    NSUInteger a = 0, b = 0;
    
    for (int i=0; i<A.count; i++) {
        NSNumber *iValue = A[i];
        b += iValue.intValue;
    }
    NSLog(@"Total: b: %ld", b);
    
    for (int k=0; k<A.count; k++) {
        NSNumber *kValue = A[k];
        b -= kValue.intValue;
        
        NSLog(@"b: %ld", b);
        NSLog(@"a: %ld", a);
        
        if (a == b)
            return k;
        
        a += kValue.intValue;
        
    }
    
    return -1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
