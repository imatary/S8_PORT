.class public Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;
.super Ljava/lang/Object;
.source "InsecureSHA1PRNGKeyDerivator.java"


# static fields
.field private static final BYTES_OFFSET:I = 0x51

.field private static final COUNTER_BASE:I = 0x0

.field private static final DIGEST_LENGTH:I = 0x14

.field private static final END_FLAGS:[I

.field private static final EXTRAFRAME_OFFSET:I = 0x5

.field private static final FRAME_LENGTH:I = 0x10

.field private static final FRAME_OFFSET:I = 0x15

.field private static final H0:I = 0x67452301

.field private static final H1:I = -0x10325477

.field private static final H2:I = -0x67452302

.field private static final H3:I = 0x10325476

.field private static final H4:I = -0x3c2d1e10

.field private static final HASHBYTES_TO_USE:I = 0x14

.field private static final HASHCOPY_OFFSET:I = 0x0

.field private static final HASH_OFFSET:I = 0x52

.field private static final LEFT:[I

.field private static final MASK:[I

.field private static final MAX_BYTES:I = 0x30

.field private static final NEXT_BYTES:I = 0x2

.field private static final RIGHT1:[I

.field private static final RIGHT2:[I

.field private static final SET_SEED:I = 0x1

.field private static final UNDEFINED:I


# instance fields
.field private transient copies:[I

.field private transient counter:J

.field private transient nextBIndex:I

.field private transient nextBytes:[B

.field private transient seed:[I

.field private transient seedLength:J

.field private transient state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->END_FLAGS:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->RIGHT1:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->RIGHT2:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->LEFT:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->MASK:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x80000000
        0x800000
        0x8000
        0x80
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x28
        0x30
        0x38
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x8
        0x10
        0x18
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x18
        0x10
        0x8
    .end array-data

    :array_4
    .array-data 4
        -0x1
        0xffffff
        0xffff
        0xff
    .end array-data
.end method

.method private constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/16 v3, 0x14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x57

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    iget-object v0, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v1, 0x52

    const v2, 0x67452301

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v1, 0x53

    const v2, -0x10325477

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v1, 0x54

    const v2, -0x67452302

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v1, 0x55

    const v2, 0x10325476

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v1, 0x56

    const v2, -0x3c2d1e10

    aput v2, v0, v1

    iput-wide v4, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seedLength:J

    const/16 v0, 0x25

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->copies:[I

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    iput v3, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    iput-wide v4, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->counter:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->state:I

    return-void
.end method

.method private static computeHash([I)V
    .locals 15

    const/16 v14, 0x55

    const/16 v13, 0x54

    const/16 v12, 0x53

    const/16 v11, 0x52

    const/16 v10, 0x50

    aget v0, p0, v11

    aget v1, p0, v12

    aget v2, p0, v13

    aget v3, p0, v14

    const/16 v7, 0x56

    aget v4, p0, v7

    const/16 v5, 0x10

    :goto_0
    if-ge v5, v10, :cond_0

    add-int/lit8 v7, v5, -0x3

    aget v7, p0, v7

    add-int/lit8 v8, v5, -0x8

    aget v8, p0, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v5, -0xe

    aget v8, p0, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v5, -0x10

    aget v8, p0, v8

    xor-int v6, v7, v8

    shl-int/lit8 v7, v6, 0x1

    ushr-int/lit8 v8, v6, 0x1f

    or-int/2addr v7, v8

    aput v7, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_1
    const/16 v7, 0x14

    if-ge v5, v7, :cond_1

    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    and-int v8, v1, v2

    xor-int/lit8 v9, v1, -0x1

    and-int/2addr v9, v3

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    aget v8, p0, v5

    add-int/2addr v8, v4

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int v6, v7, v8

    move v4, v3

    move v3, v2

    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    move v1, v0

    move v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/16 v5, 0x14

    :goto_2
    const/16 v7, 0x28

    if-ge v5, v7, :cond_2

    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    aget v8, p0, v5

    add-int/2addr v8, v4

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int v6, v7, v8

    move v4, v3

    move v3, v2

    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    move v1, v0

    move v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/16 v5, 0x28

    :goto_3
    const/16 v7, 0x3c

    if-ge v5, v7, :cond_3

    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    and-int v8, v1, v2

    and-int v9, v1, v3

    or-int/2addr v8, v9

    and-int v9, v2, v3

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    aget v8, p0, v5

    add-int/2addr v8, v4

    const v9, -0x70e44324

    add-int/2addr v8, v9

    add-int v6, v7, v8

    move v4, v3

    move v3, v2

    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    move v1, v0

    move v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    const/16 v5, 0x3c

    :goto_4
    if-ge v5, v10, :cond_4

    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    aget v8, p0, v5

    add-int/2addr v8, v4

    const v9, -0x359d3e2a    # -3715189.5f

    add-int/2addr v8, v9

    add-int v6, v7, v8

    move v4, v3

    move v3, v2

    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    move v1, v0

    move v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    aget v7, p0, v11

    add-int/2addr v7, v0

    aput v7, p0, v11

    aget v7, p0, v12

    add-int/2addr v7, v1

    aput v7, p0, v12

    aget v7, p0, v13

    add-int/2addr v7, v2

    aput v7, p0, v13

    aget v7, p0, v14

    add-int/2addr v7, v3

    aput v7, p0, v14

    const/16 v7, 0x56

    aget v8, p0, v7

    add-int/2addr v8, v4

    aput v8, p0, v7

    return-void
.end method

.method public static deriveInsecureKey([BI)[B
    .locals 2

    new-instance v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;

    invoke-direct {v0}, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;-><init>()V

    invoke-direct {v0, p0}, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->setSeed([B)V

    new-array v1, p1, [B

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBytes([B)V

    return-object v1
.end method

.method private declared-synchronized setSeed([B)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "seed == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v3, 0x52

    const/4 v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->state:I

    array-length v0, p1

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->updateSeed([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method private static updateHash([I[BII)V
    .locals 11

    const/16 v8, 0x51

    aget v2, p0, v8

    move v1, p2

    shr-int/lit8 v7, v2, 0x2

    and-int/lit8 v0, v2, 0x3

    const/16 v8, 0x51

    add-int v9, v2, p3

    sub-int/2addr v9, p2

    add-int/lit8 v9, v9, 0x1

    and-int/lit8 v9, v9, 0x3f

    aput v9, p0, v8

    if-eqz v0, :cond_3

    :goto_0
    if-gt v1, p3, :cond_0

    const/4 v8, 0x4

    if-ge v0, v8, :cond_0

    aget v8, p0, v7

    aget-byte v9, p1, v1

    and-int/lit16 v9, v9, 0xff

    rsub-int/lit8 v10, v0, 0x3

    shl-int/lit8 v10, v10, 0x3

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, p0, v7

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x4

    if-ne v0, v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x10

    if-ne v7, v8, :cond_1

    invoke-static {p0}, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->computeHash([I)V

    const/4 v7, 0x0

    :cond_1
    if-le v1, p3, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    sub-int v8, p3, v1

    add-int/lit8 v8, v8, 0x1

    shr-int/lit8 v4, v8, 0x2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    aget-byte v8, p1, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    add-int/lit8 v9, v1, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    add-int/lit8 v9, v1, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    add-int/lit8 v9, v1, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aput v8, p0, v7

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x10

    if-ge v7, v8, :cond_4

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->computeHash([I)V

    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    sub-int v8, p3, v1

    add-int/lit8 v5, v8, 0x1

    if-eqz v5, :cond_2

    aget-byte v8, p1, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v6, v8, 0x18

    const/4 v8, 0x1

    if-eq v5, v8, :cond_6

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v6, v8

    const/4 v8, 0x2

    if-eq v5, v8, :cond_6

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    :cond_6
    aput v6, p0, v7

    goto :goto_1
.end method

.method private updateSeed([B)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/4 v1, 0x0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->updateHash([I[BII)V

    iget-wide v0, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seedLength:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seedLength:J

    return-void
.end method


# virtual methods
.method protected declared-synchronized nextBytes([B)V
    .locals 18

    monitor-enter p0

    const/4 v4, 0x7

    if-nez p1, :cond_0

    :try_start_0
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v12, "bytes == null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    if-nez v11, :cond_1

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->state:I

    if-nez v11, :cond_2

    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "No seed supplied!"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    add-int/lit8 v11, v11, 0x7

    shr-int/lit8 v8, v11, 0x2

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->state:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v12, 0x52

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/4 v14, 0x0

    const/4 v15, 0x5

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v8, 0x3

    :goto_1
    const/16 v11, 0x12

    if-ge v5, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/4 v12, 0x0

    aput v12, v11, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seedLength:J

    const/4 v11, 0x3

    shl-long/2addr v12, v11

    const-wide/16 v14, 0x40

    add-long v2, v12, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    const/16 v12, 0x30

    if-ge v11, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v12, 0xe

    const/16 v13, 0x20

    ushr-long v14, v2, v13

    long-to-int v13, v14

    aput v13, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v12, 0xf

    const-wide/16 v14, -0x1

    and-long/2addr v14, v2

    long-to-int v13, v14

    aput v13, v11, v12

    :goto_2
    const/16 v11, 0x14

    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    :cond_4
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->state:I

    move-object/from16 v0, p1

    array-length v11, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v11, :cond_7

    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/16 v12, 0x13

    const/16 v13, 0x20

    ushr-long v14, v2, v13

    long-to-int v13, v14

    aput v13, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/16 v12, 0x14

    const-wide/16 v14, -0x1

    and-long/2addr v14, v2

    long-to-int v13, v14

    aput v13, v11, v12

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    rsub-int/lit8 v11, v11, 0x14

    move-object/from16 v0, p1

    array-length v12, v0

    sub-int/2addr v12, v10

    if-ge v11, v12, :cond_c

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    rsub-int/lit8 v9, v11, 0x14

    :goto_4
    if-lez v9, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    move-object/from16 v0, p1

    invoke-static {v11, v12, v0, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    add-int/2addr v11, v9

    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    add-int/2addr v10, v9

    :cond_8
    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v10, v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    and-int/lit8 v9, v11, 0x3

    :cond_9
    if-nez v9, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->counter:J

    const/16 v14, 0x20

    ushr-long/2addr v12, v14

    long-to-int v12, v12

    aput v12, v11, v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    add-int/lit8 v12, v8, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->counter:J

    const-wide/16 v16, -0x1

    and-long v14, v14, v16

    long-to-int v13, v14

    aput v13, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    add-int/lit8 v12, v8, 0x2

    sget-object v13, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->END_FLAGS:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    aput v13, v11, v12

    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    const/16 v12, 0x30

    if-le v11, v12, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/4 v12, 0x5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v14, 0x10

    aget v13, v13, v14

    aput v13, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/4 v12, 0x6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v14, 0x11

    aget v13, v13, v14

    aput v13, v11, v12

    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    invoke-static {v11}, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->computeHash([I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v12, 0x51

    aget v11, v11, v12

    const/16 v12, 0x30

    if-le v11, v12, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/16 v14, 0x15

    const/16 v15, 0x10

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/4 v12, 0x5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/4 v14, 0x0

    const/16 v15, 0x10

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    invoke-static {v11}, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->computeHash([I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/16 v12, 0x15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/4 v14, 0x0

    const/16 v15, 0x10

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->counter:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->counter:J

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_6
    const/4 v11, 0x5

    if-ge v5, v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    add-int/lit8 v12, v5, 0x52

    aget v7, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    ushr-int/lit8 v12, v7, 0x18

    int-to-byte v12, v12

    aput-byte v12, v11, v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    add-int/lit8 v12, v6, 0x1

    ushr-int/lit8 v13, v7, 0x10

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    add-int/lit8 v12, v6, 0x2

    ushr-int/lit8 v13, v7, 0x8

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    add-int/lit8 v12, v6, 0x3

    int-to-byte v13, v7

    aput-byte v13, v11, v12

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    move-object/from16 v0, p1

    array-length v11, v0

    sub-int v9, v11, v10

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    aget v12, v11, v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->counter:J

    sget-object v13, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->RIGHT1:[I

    aget v13, v13, v9

    ushr-long/2addr v14, v13

    sget-object v13, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->MASK:[I

    aget v13, v13, v9

    int-to-long v0, v13

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    long-to-int v13, v14

    or-int/2addr v12, v13

    aput v12, v11, v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    add-int/lit8 v12, v8, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->counter:J

    sget-object v13, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->RIGHT2:[I

    aget v13, v13, v9

    ushr-long/2addr v14, v13

    const-wide/16 v16, -0x1

    and-long v14, v14, v16

    long-to-int v13, v14

    aput v13, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->seed:[I

    add-int/lit8 v12, v8, 0x2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->counter:J

    sget-object v13, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->LEFT:[I

    aget v13, v13, v9

    shl-long/2addr v14, v13

    sget-object v13, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->END_FLAGS:[I

    aget v13, v13, v9

    int-to-long v0, v13

    move-wide/from16 v16, v0

    or-long v14, v14, v16

    long-to-int v13, v14

    aput v13, v11, v12

    goto/16 :goto_5

    :cond_e
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    const/16 v11, 0x14

    move-object/from16 v0, p1

    array-length v12, v0

    sub-int/2addr v12, v10

    if-ge v11, v12, :cond_10

    const/16 v6, 0x14

    :goto_7
    if-lez v6, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v11, v12, v0, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v6

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    add-int/2addr v11, v6

    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/android/common/cipher/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    :cond_f
    move-object/from16 v0, p1

    array-length v11, v0

    if-lt v10, v11, :cond_9

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p1

    array-length v11, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int v6, v11, v10

    goto :goto_7
.end method
