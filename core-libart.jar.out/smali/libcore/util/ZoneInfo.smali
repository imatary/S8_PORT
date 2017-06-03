.class public final Llibcore/util/ZoneInfo;
.super Ljava/util/TimeZone;
.source "ZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/util/ZoneInfo$CheckedArithmeticException;,
        Llibcore/util/ZoneInfo$OffsetInterval;,
        Llibcore/util/ZoneInfo$WallTime;
    }
.end annotation


# static fields
.field private static final LEAP:[I

.field private static final MILLISECONDS_PER_400_YEARS:J = 0xb7af85d9c00L

.field private static final MILLISECONDS_PER_DAY:J = 0x5265c00L

.field private static final NORMAL:[I

.field private static final UNIX_OFFSET:J = 0x388a6f046000L

.field static final serialVersionUID:J = -0x3fd1fff6d5149890L


# instance fields
.field private mDstSavings:I

.field private final mEarliestRawOffset:I

.field private final mIsDsts:[B

.field private final mOffsets:[I

.field private mRawOffset:I

.field private final mTransitions:[J

.field private final mTypes:[B

.field private final mUseDst:Z


# direct methods
.method static synthetic -get0(Llibcore/util/ZoneInfo;)[B
    .locals 1

    iget-object v0, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    return-object v0
.end method

.method static synthetic -get1(Llibcore/util/ZoneInfo;)[I
    .locals 1

    iget-object v0, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    return-object v0
.end method

.method static synthetic -get2(Llibcore/util/ZoneInfo;)I
    .locals 1

    iget v0, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    return v0
.end method

.method static synthetic -get3(Llibcore/util/ZoneInfo;)[J
    .locals 1

    iget-object v0, p0, Llibcore/util/ZoneInfo;->mTransitions:[J

    return-object v0
.end method

.method static synthetic -get4(Llibcore/util/ZoneInfo;)[B
    .locals 1

    iget-object v0, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    return-object v0
.end method

.method static synthetic -wrap0(JI)I
    .locals 2

    invoke-static {p0, p1, p2}, Llibcore/util/ZoneInfo;->checkedAdd(JI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(II)I
    .locals 1

    invoke-static {p0, p1}, Llibcore/util/ZoneInfo;->checkedSubtract(II)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xc

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Llibcore/util/ZoneInfo;->NORMAL:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Llibcore/util/ZoneInfo;->LEAP:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;[J[B[I[BJ)V
    .locals 18

    invoke-direct/range {p0 .. p0}, Ljava/util/TimeZone;-><init>()V

    move-object/from16 v0, p4

    array-length v14, v0

    if-nez v14, :cond_0

    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ZoneInfo requires at least one offset to be provided for each timezone but could not find one for \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfo;->mTransitions:[J

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfo;->mTypes:[B

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfo;->mIsDsts:[B

    invoke-virtual/range {p0 .. p1}, Llibcore/util/ZoneInfo;->setID(Ljava/lang/String;)V

    const/4 v12, -0x1

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTransitions:[J

    array-length v14, v14

    add-int/lit8 v6, v14, -0x1

    :goto_0
    const/4 v14, -0x1

    if-eq v12, v14, :cond_1

    const/4 v14, -0x1

    if-ne v7, v14, :cond_4

    :cond_1
    if-ltz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v14, v14, v6

    and-int/lit16 v13, v14, 0xff

    const/4 v14, -0x1

    if-ne v12, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    aget-byte v14, v14, v13

    if-nez v14, :cond_2

    move v12, v6

    :cond_2
    const/4 v14, -0x1

    if-ne v7, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    aget-byte v14, v14, v13

    if-eqz v14, :cond_3

    move v7, v6

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTransitions:[J

    array-length v14, v14

    if-nez v14, :cond_7

    const/4 v14, 0x0

    aget v14, p4, v14

    move-object/from16 v0, p0

    iput v14, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    :goto_1
    const/4 v14, -0x1

    if-eq v7, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTransitions:[J

    aget-wide v8, v14, v7

    invoke-static/range {p6 .. p7}, Llibcore/util/ZoneInfo;->roundUpMillisToSeconds(J)J

    move-result-wide v2

    cmp-long v14, v8, v2

    if-gez v14, :cond_5

    const/4 v7, -0x1

    :cond_5
    const/4 v14, -0x1

    if-ne v7, v14, :cond_9

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Llibcore/util/ZoneInfo;->mDstSavings:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Llibcore/util/ZoneInfo;->mUseDst:Z

    :goto_2
    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTransitions:[J

    array-length v14, v14

    if-ge v6, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v15, v15, v6

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    if-nez v14, :cond_a

    move v5, v6

    :cond_6
    const/4 v14, -0x1

    if-eq v5, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v14, v14, v5

    and-int/lit16 v14, v14, 0xff

    aget v4, p4, v14

    :goto_4
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Llibcore/util/ZoneInfo;->mOffsets:[I

    const/4 v6, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    array-length v14, v14

    if-ge v6, v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    aget v15, v14, v6

    move-object/from16 v0, p0

    iget v0, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    aput v15, v14, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    const/4 v14, -0x1

    if-ne v12, v14, :cond_8

    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ZoneInfo requires at least one non-DST transition to be provided for each timezone that has at least one transition but could not find one for \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v14, v14, v12

    and-int/lit16 v14, v14, 0xff

    aget v14, p4, v14

    move-object/from16 v0, p0

    iput v14, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v14, v14, v12

    and-int/lit16 v14, v14, 0xff

    aget v11, p4, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v14, v14, v7

    and-int/lit16 v14, v14, 0xff

    aget v10, p4, v14

    sub-int v14, v11, v10

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    mul-int/lit16 v14, v14, 0x3e8

    move-object/from16 v0, p0

    iput v14, v0, Llibcore/util/ZoneInfo;->mDstSavings:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Llibcore/util/ZoneInfo;->mUseDst:Z

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget v14, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    mul-int/lit16 v14, v14, 0x3e8

    move-object/from16 v0, p0

    iput v14, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    mul-int/lit16 v14, v4, 0x3e8

    move-object/from16 v0, p0

    iput v14, v0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    return-void
.end method

.method private static checkedAdd(JI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    int-to-long v2, p2

    add-long v0, p0, v2

    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Llibcore/util/ZoneInfo$CheckedArithmeticException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Llibcore/util/ZoneInfo$CheckedArithmeticException;-><init>(Llibcore/util/ZoneInfo$CheckedArithmeticException;)V

    throw v2

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method private static checkedSubtract(II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    int-to-long v2, p0

    int-to-long v4, p1

    sub-long v0, v2, v4

    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Llibcore/util/ZoneInfo$CheckedArithmeticException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Llibcore/util/ZoneInfo$CheckedArithmeticException;-><init>(Llibcore/util/ZoneInfo$CheckedArithmeticException;)V

    throw v2

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static makeTimeZone(Ljava/lang/String;Llibcore/io/BufferIterator;)Llibcore/util/ZoneInfo;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Llibcore/util/ZoneInfo;->makeTimeZone(Ljava/lang/String;Llibcore/io/BufferIterator;J)Llibcore/util/ZoneInfo;

    move-result-object v0

    return-object v0
.end method

.method public static makeTimeZone(Ljava/lang/String;Llibcore/io/BufferIterator;J)Llibcore/util/ZoneInfo;
    .locals 14

    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    move-result v0

    const v1, 0x545a6966

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Llibcore/io/BufferIterator;->skip(I)V

    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    move-result v11

    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    move-result v12

    const/16 v0, 0x100

    if-le v12, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " has more than 256 different types"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Llibcore/io/BufferIterator;->skip(I)V

    new-array v10, v11, [I

    array-length v0, v10

    const/4 v1, 0x0

    invoke-virtual {p1, v10, v1, v0}, Llibcore/io/BufferIterator;->readIntArray([III)V

    new-array v2, v11, [J

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_2

    aget v0, v10, v9

    int-to-long v0, v0

    aput-wide v0, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    new-array v3, v11, [B

    array-length v0, v3

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v1, v0}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    new-array v4, v12, [I

    new-array v5, v12, [B

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v12, :cond_4

    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readInt()I

    move-result v0

    aput v0, v4, v9

    invoke-virtual {p1}, Llibcore/io/BufferIterator;->readByte()B

    move-result v8

    if-eqz v8, :cond_3

    const/4 v0, 0x1

    if-eq v8, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " dst at "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " is not 0 or 1, is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    aput-byte v8, v5, v9

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Llibcore/io/BufferIterator;->skip(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Llibcore/util/ZoneInfo;

    move-object v1, p0

    move-wide/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Llibcore/util/ZoneInfo;-><init>(Ljava/lang/String;[J[B[I[BJ)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-boolean v0, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-nez v0, :cond_0

    iget v0, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    if-eqz v0, :cond_0

    iput v1, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    :cond_0
    return-void
.end method

.method static roundDownMillisToSeconds(J)J
    .locals 4

    const-wide/16 v2, 0x3e8

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x3e7

    sub-long v0, p0, v0

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    div-long v0, p0, v2

    return-wide v0
.end method

.method static roundUpMillisToSeconds(J)J
    .locals 4

    const-wide/16 v2, 0x3e8

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e7

    add-long/2addr v0, p0

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    div-long v0, p0, v2

    return-wide v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Llibcore/util/ZoneInfo;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Llibcore/util/ZoneInfo;

    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Llibcore/util/ZoneInfo;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method findOffsetIndexForTimeInMilliseconds(J)I
    .locals 3

    invoke-static {p1, p2}, Llibcore/util/ZoneInfo;->roundDownMillisToSeconds(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Llibcore/util/ZoneInfo;->findOffsetIndexForTimeInSeconds(J)I

    move-result v0

    return v0
.end method

.method findOffsetIndexForTimeInSeconds(J)I
    .locals 3

    invoke-virtual {p0, p1, p2}, Llibcore/util/ZoneInfo;->findTransitionIndex(J)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    iget-object v1, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public findTransitionIndex(J)I
    .locals 3

    iget-object v1, p0, Llibcore/util/ZoneInfo;->mTransitions:[J

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_0

    not-int v1, v0

    add-int/lit8 v0, v1, -0x1

    if-gez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    return v0
.end method

.method public getDSTSavings()I
    .locals 1

    iget v0, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    return v0
.end method

.method public getOffset(IIIIII)I
    .locals 8

    div-int/lit16 v4, p2, 0x190

    int-to-long v4, v4

    const-wide v6, 0xb7af85d9c00L

    mul-long v0, v4, v6

    rem-int/lit16 p2, p2, 0x190

    int-to-long v4, p2

    const-wide v6, 0x757b12c00L

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x3

    div-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    if-lez p2, :cond_0

    add-int/lit8 v4, p2, -0x1

    div-int/lit8 v4, v4, 0x64

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    sub-long/2addr v0, v4

    :cond_0
    if-eqz p2, :cond_1

    rem-int/lit8 v4, p2, 0x4

    if-nez v4, :cond_2

    rem-int/lit8 v4, p2, 0x64

    if-eqz v4, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_3

    sget-object v3, Llibcore/util/ZoneInfo;->LEAP:[I

    :goto_1
    aget v4, v3, p3

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p4, -0x1

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    int-to-long v4, p6

    add-long/2addr v0, v4

    iget v4, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    const-wide v4, 0x388a6f046000L

    sub-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Llibcore/util/ZoneInfo;->getOffset(J)I

    move-result v4

    return v4

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    sget-object v3, Llibcore/util/ZoneInfo;->NORMAL:[I

    goto :goto_1
.end method

.method public getOffset(J)I
    .locals 3

    invoke-virtual {p0, p1, p2}, Llibcore/util/ZoneInfo;->findOffsetIndexForTimeInMilliseconds(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    return v1

    :cond_0
    iget v1, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget-object v2, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    aget v2, v2, v0

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    return v1
.end method

.method public getOffsetsByUtcTime(J[I)I
    .locals 11

    const/4 v9, -0x1

    const/4 v8, 0x0

    invoke-static {p1, p2}, Llibcore/util/ZoneInfo;->roundDownMillisToSeconds(J)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Llibcore/util/ZoneInfo;->findTransitionIndex(J)I

    move-result v3

    if-ne v3, v9, :cond_0

    iget v1, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    aput v1, p3, v8

    const/4 v5, 0x1

    aput v0, p3, v5

    return v2

    :cond_0
    iget-object v5, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v5, v5, v3

    and-int/lit16 v4, v5, 0xff

    iget v5, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget-object v6, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    aget v6, v6, v4

    mul-int/lit16 v6, v6, 0x3e8

    add-int v2, v5, v6

    iget-object v5, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    aget-byte v5, v5, v4

    if-nez v5, :cond_1

    move v1, v2

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    iget-object v5, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v5, v5, v3

    and-int/lit16 v4, v5, 0xff

    iget-object v5, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    aget-byte v5, v5, v4

    if-nez v5, :cond_4

    iget v5, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget-object v6, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    aget v6, v6, v4

    mul-int/lit16 v6, v6, 0x3e8

    add-int v1, v5, v6

    :cond_2
    if-ne v1, v9, :cond_3

    iget v1, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    :cond_3
    sub-int v0, v2, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method public getRawOffset()I
    .locals 1

    iget v0, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Llibcore/util/ZoneInfo;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Llibcore/util/ZoneInfo;

    iget-boolean v2, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    iget-boolean v3, v0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    iget-boolean v2, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-nez v2, :cond_3

    iget v2, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget v3, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    iget v2, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget v3, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    iget-object v3, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    iget-object v3, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    iget-object v3, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Llibcore/util/ZoneInfo;->mTransitions:[J

    iget-object v2, v0, Llibcore/util/ZoneInfo;->mTransitions:[J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x1f

    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTransitions:[J

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([J)I

    move-result v3

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    :goto_0
    add-int v1, v3, v2

    return v1

    :cond_0
    const/16 v2, 0x4d5

    goto :goto_0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Llibcore/util/ZoneInfo;->findOffsetIndexForTimeInMilliseconds(J)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    return v4

    :cond_0
    iget-object v5, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    aget-byte v5, v5, v0

    if-ne v5, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v4

    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 0

    iput p1, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mRawOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mEarliestRawOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mUseDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mDstSavings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",transitions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/util/ZoneInfo;->mTransitions:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    iget-boolean v0, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    return v0
.end method
