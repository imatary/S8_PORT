.class Ljava/math/Primality;
.super Ljava/lang/Object;
.source "Primality.java"


# static fields
.field private static final BIprimes:[Ljava/math/BigInteger;

.field private static final primes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v1, 0xac

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Ljava/math/Primality;->primes:[I

    sget-object v1, Ljava/math/Primality;->primes:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/math/BigInteger;

    sput-object v1, Ljava/math/Primality;->BIprimes:[Ljava/math/BigInteger;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/math/Primality;->primes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/math/Primality;->BIprimes:[Ljava/math/BigInteger;

    sget-object v2, Ljava/math/Primality;->primes:[I

    aget v2, v2, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
        0x2b
        0x2f
        0x35
        0x3b
        0x3d
        0x43
        0x47
        0x49
        0x4f
        0x53
        0x59
        0x61
        0x65
        0x67
        0x6b
        0x6d
        0x71
        0x7f
        0x83
        0x89
        0x8b
        0x95
        0x97
        0x9d
        0xa3
        0xa7
        0xad
        0xb3
        0xb5
        0xbf
        0xc1
        0xc5
        0xc7
        0xd3
        0xdf
        0xe3
        0xe5
        0xe9
        0xef
        0xf1
        0xfb
        0x101
        0x107
        0x10d
        0x10f
        0x115
        0x119
        0x11b
        0x125
        0x133
        0x137
        0x139
        0x13d
        0x14b
        0x151
        0x15b
        0x15d
        0x161
        0x167
        0x16f
        0x175
        0x17b
        0x17f
        0x185
        0x18d
        0x191
        0x199
        0x1a3
        0x1a5
        0x1af
        0x1b1
        0x1b7
        0x1bb
        0x1c1
        0x1c9
        0x1cd
        0x1cf
        0x1d3
        0x1df
        0x1e7
        0x1eb
        0x1f3
        0x1f7
        0x1fd
        0x209
        0x20b
        0x21d
        0x223
        0x22d
        0x233
        0x239
        0x23b
        0x241
        0x24b
        0x251
        0x257
        0x259
        0x25f
        0x265
        0x269
        0x26b
        0x277
        0x281
        0x283
        0x287
        0x28d
        0x293
        0x295
        0x2a1
        0x2a5
        0x2ab
        0x2b3
        0x2bd
        0x2c5
        0x2cf
        0x2d7
        0x2dd
        0x2e3
        0x2e7
        0x2ef
        0x2f5
        0x2f9
        0x301
        0x305
        0x313
        0x31d
        0x329
        0x32b
        0x335
        0x337
        0x33b
        0x33d
        0x347
        0x355
        0x359
        0x35b
        0x35f
        0x36d
        0x371
        0x373
        0x377
        0x38b
        0x38f
        0x397
        0x3a1
        0x3a9
        0x3ad
        0x3b3
        0x3b9
        0x3c7
        0x3cb
        0x3d1
        0x3d7
        0x3df
        0x3e5
        0x3f1
        0x3f5
        0x3fb
        0x3fd
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static nextProbablePrime(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 14

    const/16 v13, 0x400

    const/4 v12, 0x0

    const/16 v0, 0x400

    sget-object v9, Ljava/math/Primality;->primes:[I

    array-length v9, v9

    new-array v5, v9, [I

    new-array v2, v0, [Z

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInt;->bitLength()I

    move-result v9

    const/16 v10, 0xa

    if-gt v9, v10, :cond_1

    invoke-virtual {v6}, Ljava/math/BigInt;->longInt()J

    move-result-wide v10

    long-to-int v4, v10

    sget-object v9, Ljava/math/Primality;->primes:[I

    sget-object v10, Ljava/math/Primality;->primes:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    if-ge v4, v9, :cond_1

    const/4 v1, 0x0

    :goto_0
    sget-object v9, Ljava/math/Primality;->primes:[I

    aget v9, v9, v1

    if-lt v4, v9, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v9, Ljava/math/Primality;->BIprimes:[Ljava/math/BigInteger;

    aget-object v9, v9, v1

    return-object v9

    :cond_1
    invoke-virtual {v6}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    move-result-object v8

    new-instance v7, Ljava/math/BigInt;

    invoke-direct {v7}, Ljava/math/BigInt;-><init>()V

    const/4 v9, 0x2

    invoke-static {v6, v9}, Ljava/math/BigInt;->remainderByPositiveInt(Ljava/math/BigInt;I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/math/BigInt;->addPositiveInt(I)V

    const/4 v1, 0x0

    :goto_1
    sget-object v9, Ljava/math/Primality;->primes:[I

    array-length v9, v9

    if-ge v1, v9, :cond_3

    sget-object v9, Ljava/math/Primality;->primes:[I

    aget v9, v9, v1

    invoke-static {v8, v9}, Ljava/math/BigInt;->remainderByPositiveInt(Ljava/math/BigInt;I)I

    move-result v9

    add-int/lit16 v9, v9, -0x400

    aput v9, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v0}, Ljava/math/BigInt;->addPositiveInt(I)V

    :cond_3
    invoke-static {v2, v12}, Ljava/util/Arrays;->fill([ZZ)V

    const/4 v1, 0x0

    :goto_2
    sget-object v9, Ljava/math/Primality;->primes:[I

    array-length v9, v9

    if-ge v1, v9, :cond_6

    aget v9, v5, v1

    add-int/lit16 v9, v9, 0x400

    sget-object v10, Ljava/math/Primality;->primes:[I

    aget v10, v10, v1

    rem-int/2addr v9, v10

    aput v9, v5, v1

    aget v9, v5, v1

    if-nez v9, :cond_4

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v13, :cond_5

    const/4 v9, 0x1

    aput-boolean v9, v2, v3

    sget-object v9, Ljava/math/Primality;->primes:[I

    aget v9, v9, v1

    add-int/2addr v3, v9

    goto :goto_3

    :cond_4
    sget-object v9, Ljava/math/Primality;->primes:[I

    aget v9, v9, v1

    aget v10, v5, v1

    sub-int v3, v9, v10

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v13, :cond_2

    aget-boolean v9, v2, v3

    if-nez v9, :cond_7

    invoke-virtual {v7, v8}, Ljava/math/BigInt;->putCopy(Ljava/math/BigInt;)V

    invoke-virtual {v7, v3}, Ljava/math/BigInt;->addPositiveInt(I)V

    const/16 v9, 0x64

    invoke-virtual {v7, v9}, Ljava/math/BigInt;->isPrime(I)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v7}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v9

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method
