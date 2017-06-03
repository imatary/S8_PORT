.class Ljava/math/Multiplication;
.super Ljava/lang/Object;
.source "Multiplication.java"


# static fields
.field static final bigFivePows:[Ljava/math/BigInteger;

.field static final bigTenPows:[Ljava/math/BigInteger;

.field static final fivePows:[I

.field static final tenPows:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v4, 0x20

    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    sput-object v3, Ljava/math/Multiplication;->tenPows:[I

    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    sput-object v3, Ljava/math/Multiplication;->fivePows:[I

    new-array v3, v4, [Ljava/math/BigInteger;

    sput-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    new-array v3, v4, [Ljava/math/BigInteger;

    sput-object v3, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x12

    if-gt v2, v3, :cond_0

    sget-object v3, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    sget-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    shl-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    const-wide/16 v4, 0x5

    mul-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    sget-object v3, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    sget-object v4, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    sget-object v5, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    sget-object v3, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    sget-object v4, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    sget-object v5, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 2

    sget-object v0, Ljava/math/Multiplication;->fivePows:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Ljava/math/Multiplication;->fivePows:[I

    aget v0, v0, p1

    invoke-static {p0, v0}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    sget-object v0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInt;->multiplyByPositiveInt(I)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v1
.end method

.method static multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;
    .locals 3

    sget-object v0, Ljava/math/Multiplication;->tenPows:[I

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    sget-object v0, Ljava/math/Multiplication;->tenPows:[I

    long-to-int v1, p1

    aget v0, v0, v1

    invoke-static {p0, v0}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method static powerOf10(J)Ljava/math/BigInteger;
    .locals 10

    const-wide/32 v8, 0x7fffffff

    long-to-int v1, p0

    sget-object v6, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    array-length v6, v6

    int-to-long v6, v6

    cmp-long v6, p0, v6

    if-gez v6, :cond_0

    sget-object v6, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    aget-object v6, v6, v1

    return-object v6

    :cond_0
    const-wide/16 v6, 0x32

    cmp-long v6, p0, v6

    if-gtz v6, :cond_1

    sget-object v6, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    return-object v6

    :cond_1
    const/4 v5, 0x0

    cmp-long v6, p0, v8

    if-gtz v6, :cond_2

    :try_start_0
    sget-object v6, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_2
    sget-object v6, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const v7, 0x7fffffff

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    move-object v5, v4

    sub-long v2, p0, v8

    const-wide/32 v6, 0x7fffffff

    rem-long v6, p0, v6

    long-to-int v1, v6

    :goto_1
    cmp-long v6, v2, v8

    if-lez v6, :cond_3

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sub-long/2addr v2, v8

    goto :goto_1

    :cond_3
    sget-object v6, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    sub-long v2, p0, v8

    :goto_2
    cmp-long v6, v2, v8

    if-lez v6, :cond_4

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    sub-long/2addr v2, v8

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/ArithmeticException;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
