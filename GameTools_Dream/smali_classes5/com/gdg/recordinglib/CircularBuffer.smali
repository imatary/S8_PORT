.class public Lcom/gdg/recordinglib/CircularBuffer;
.super Ljava/lang/Object;
.source "CircularBuffer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircularBuffer"


# instance fields
.field private mBitrate:I

.field private mBufferSize:I

.field mBuffersNum:I

.field private mDataBuffer:[Ljava/nio/ByteBuffer;

.field private mMetaHead:I

.field private mMetaLength:I

.field private mMetaTail:I

.field private mOrder:Ljava/nio/ByteOrder;

.field private mPacketFlags:[I

.field private mPacketLength:[I

.field private mPacketPtsUs:[J

.field private mPacketStart:[I

.field private mSingleBufferMetaLength:I

.field private mSpanMs:I

.field private mTimePerPacketMs:D

.field private mTotalBufferSize:I

.field private mTotalSpanMs:I


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;I)V
    .locals 19

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mBuffersNum:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    const-string/jumbo v7, "bitrate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mBitrate:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mBitrate:I

    int-to-long v14, v7

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    const-wide/16 v16, 0x1f40

    div-long v14, v14, v16

    long-to-int v7, v14

    move-object/from16 v0, p0

    iput v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mBitrate:I

    div-int/lit8 v6, v7, 0x8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    aput-object v15, v7, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    const/4 v14, 0x0

    aget-object v7, v7, v14

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalBufferSize:I

    const-wide/16 v14, 0x1f40

    move-object/from16 v0, p0

    iget v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    int-to-long v0, v7

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mBitrate:I

    int-to-long v0, v7

    move-wide/from16 v16, v0

    div-long v14, v14, v16

    long-to-int v7, v14

    move-object/from16 v0, p0

    iput v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mSpanMs:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mSpanMs:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalSpanMs:I

    const-string/jumbo v7, "mime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "video/avc"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v7, "audio/mp4a-latm"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v4, :cond_0

    const-string/jumbo v7, "frame-rate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    int-to-double v10, v7

    :goto_0
    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v14, v10

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/gdg/recordinglib/CircularBuffer;->mTimePerPacketMs:D

    move-object/from16 v0, p0

    iget v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mBitrate:I

    int-to-double v14, v7

    div-double/2addr v14, v10

    const-wide/high16 v16, 0x4020000000000000L    # 8.0

    div-double v8, v14, v16

    move-object/from16 v0, p0

    iget v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    int-to-double v14, v7

    div-double/2addr v14, v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v16

    double-to-int v2, v14

    mul-int/lit8 v7, v2, 0x2

    move-object/from16 v0, p0

    iput v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mSingleBufferMetaLength:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    new-array v7, v7, [I

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketFlags:[I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    new-array v7, v7, [J

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketPtsUs:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    new-array v7, v7, [I

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketStart:[I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    new-array v7, v7, [I

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketLength:[I

    const-string/jumbo v7, "CircularBuffer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "BitRate="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/gdg/recordinglib/CircularBuffer;->mBitrate:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " span="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "%,d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gdg/recordinglib/CircularBuffer;->mSpanMs:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "msec"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " buffer size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "%,d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "kB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " packet count="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v3, :cond_1

    const-string/jumbo v7, "sample-rate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    int-to-double v12, v7

    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    div-double v10, v12, v14

    goto/16 :goto_0

    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v14, "Media format provided is neither AVC nor AAC"

    invoke-direct {v7, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private canAdd(I)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v7, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    if-le p1, v7, :cond_0

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Enormous packet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " vs. buffer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p0}, Lcom/gdg/recordinglib/CircularBuffer;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    :goto_0
    return v5

    :cond_2
    iget v7, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    rem-int v4, v7, v8

    iget v7, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaTail:I

    if-ne v4, v7, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/gdg/recordinglib/CircularBuffer;->getHeadStart()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/gdg/recordinglib/CircularBuffer;->getFreeSpace(I)I

    move-result v2

    if-le p1, v2, :cond_4

    move v5, v6

    goto :goto_0

    :cond_4
    iget v7, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    div-int v7, v3, v7

    iget v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    mul-int v1, v7, v8

    iget v7, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    add-int/2addr v7, v1

    add-int/lit8 v0, v7, -0x1

    add-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    if-le v7, v0, :cond_1

    iget v7, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    add-int/2addr v7, v1

    iget v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalBufferSize:I

    rem-int v3, v7, v8

    invoke-direct {p0, v3}, Lcom/gdg/recordinglib/CircularBuffer;->getFreeSpace(I)I

    move-result v2

    if-le p1, v2, :cond_1

    move v5, v6

    goto :goto_0
.end method

.method private computeTimeSpanMs()D
    .locals 6

    invoke-virtual {p0}, Lcom/gdg/recordinglib/CircularBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    :cond_0
    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/gdg/recordinglib/CircularBuffer;->getFirstIndex()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    iget-wide v4, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTimePerPacketMs:D

    add-double/2addr v2, v4

    invoke-virtual {p0, v0}, Lcom/gdg/recordinglib/CircularBuffer;->getNextIndex(I)I

    move-result v0

    goto :goto_0
.end method

.method private getFreeMeta()I
    .locals 3

    invoke-virtual {p0}, Lcom/gdg/recordinglib/CircularBuffer;->getPacketNum()I

    move-result v1

    iget v2, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    sub-int/2addr v2, v1

    add-int/lit8 v0, v2, -0x1

    return v0
.end method

.method private getFreeSpace(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/gdg/recordinglib/CircularBuffer;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalBufferSize:I

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketStart:[I

    iget v3, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaTail:I

    aget v1, v2, v3

    iget v2, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalBufferSize:I

    add-int/2addr v2, v1

    sub-int/2addr v2, p1

    iget v3, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalBufferSize:I

    rem-int v0, v2, v3

    goto :goto_0
.end method

.method private getHeadStart()I
    .locals 3

    invoke-virtual {p0}, Lcom/gdg/recordinglib/CircularBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/gdg/recordinglib/CircularBuffer;->getLastIndex()I

    move-result v0

    iget-object v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketStart:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketLength:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalBufferSize:I

    rem-int/2addr v1, v2

    goto :goto_0
.end method

.method private getUsedSpace()I
    .locals 3

    invoke-virtual {p0}, Lcom/gdg/recordinglib/CircularBuffer;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/gdg/recordinglib/CircularBuffer;->getHeadStart()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/gdg/recordinglib/CircularBuffer;->getFreeSpace(I)I

    move-result v0

    iget v2, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalBufferSize:I

    sub-int v1, v2, v0

    goto :goto_0
.end method

.method private static increaseArraySize(Ljava/lang/Object;ILjava/lang/Class;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;I",
            "Ljava/lang/Class",
            "<TA;>;I)TA;"
        }
    .end annotation

    const/4 v3, 0x0

    add-int v1, p1, p3

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static increaseArraySize(Ljava/lang/Object;ILjava/lang/Class;III)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;I",
            "Ljava/lang/Class",
            "<TA;>;III)TA;"
        }
    .end annotation

    const/4 v5, 0x0

    add-int v1, p1, p3

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-le p5, p4, :cond_0

    sub-int v4, p5, p4

    invoke-static {p0, p4, v0, p4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    sub-int v4, p1, p4

    invoke-static {p0, p4, v0, p4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, p5, 0x0

    if-gt v2, p3, :cond_1

    invoke-static {p0, v5, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v5, v0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v3, v2, p3

    invoke-static {p0, p3, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private move(I)V
    .locals 11

    invoke-virtual {p0, p1}, Lcom/gdg/recordinglib/CircularBuffer;->getPreviousIndex(I)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_0

    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "Can\'t move tail packet."

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    iget-object v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketStart:[I

    aget v9, v9, v5

    iget-object v10, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketLength:[I

    aget v10, v10, v5

    add-int/2addr v9, v10

    iget v10, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalBufferSize:I

    rem-int v3, v9, v10

    iget-object v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketLength:[I

    aget v6, v9, p1

    iget v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    div-int v9, v3, v9

    iget v10, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    mul-int v2, v9, v10

    iget v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    add-int/2addr v9, v2

    add-int/lit8 v0, v9, -0x1

    add-int v9, v3, v6

    add-int/lit8 v9, v9, -0x1

    if-le v9, v0, :cond_1

    iget v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    add-int/2addr v9, v2

    iget v10, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalBufferSize:I

    rem-int v3, v9, v10

    :cond_1
    iget v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    rem-int v4, v3, v9

    iget v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    div-int v1, v3, v9

    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    invoke-virtual {p0, p1, v8}, Lcom/gdg/recordinglib/CircularBuffer;->getChunk(ILandroid/media/MediaCodec$BufferInfo;)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-object v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    aget-object v9, v9, v1

    add-int v10, v4, v6

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    aget-object v9, v9, v1

    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    aget-object v9, v9, v1

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketStart:[I

    aput v3, v9, p1

    return-void
.end method

.method private printStatus()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/gdg/recordinglib/CircularBuffer;->getUsedSpace()I

    move-result v1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    int-to-double v8, v1

    mul-double/2addr v6, v8

    iget v5, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalBufferSize:I

    int-to-double v8, v5

    div-double v2, v6, v8

    const-string/jumbo v5, "%.2f"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/gdg/recordinglib/CircularBuffer;->getPacketNum()I

    move-result v0

    const-string/jumbo v5, "CircularBuffer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Used "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "% from  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%,d"

    new-array v8, v11, [Ljava/lang/Object;

    iget v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalBufferSize:I

    div-int/lit16 v9, v9, 0x3e8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "kB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", meta used="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public add(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)I
    .locals 12

    iget v7, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mOrder:Ljava/nio/ByteOrder;

    if-nez v8, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    iput-object v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mOrder:Ljava/nio/ByteOrder;

    const/4 v5, 0x0

    :goto_0
    iget-object v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    array-length v8, v8

    if-ge v5, v8, :cond_0

    iget-object v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    aget-object v8, v8, v5

    iget-object v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v9

    if-eq v8, v9, :cond_1

    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Byte ordering changed"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-direct {p0, v7}, Lcom/gdg/recordinglib/CircularBuffer;->canAdd(I)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v3, -0x1

    :goto_1
    return v3

    :cond_2
    invoke-direct {p0}, Lcom/gdg/recordinglib/CircularBuffer;->getHeadStart()I

    move-result v4

    iget v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    div-int v8, v4, v8

    iget v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    mul-int v2, v8, v9

    iget v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    add-int/2addr v8, v2

    add-int/lit8 v0, v8, -0x1

    add-int v8, v4, v7

    add-int/lit8 v8, v8, -0x1

    if-le v8, v0, :cond_3

    iget v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    add-int/2addr v8, v2

    iget v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalBufferSize:I

    rem-int v4, v8, v9

    :cond_3
    iget v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    rem-int v6, v4, v8

    iget v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    div-int v1, v4, v8

    iget v8, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v9, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v8, v9

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v8, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    aget-object v8, v8, v1

    iget v9, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v9, v6

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    aget-object v8, v8, v1

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    aget-object v8, v8, v1

    invoke-virtual {v8, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketFlags:[I

    iget v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    iget v10, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    aput v10, v8, v9

    iget-object v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketPtsUs:[J

    iget v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    iget-wide v10, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    aput-wide v10, v8, v9

    iget-object v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketStart:[I

    iget v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    aput v4, v8, v9

    iget-object v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketLength:[I

    iget v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    aput v7, v8, v9

    iget v3, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    iget v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    add-int/lit8 v8, v8, 0x1

    iget v9, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    rem-int/2addr v8, v9

    iput v8, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    goto :goto_1
.end method

.method public getChunk(ILandroid/media/MediaCodec$BufferInfo;)Ljava/nio/ByteBuffer;
    .locals 6

    invoke-virtual {p0}, Lcom/gdg/recordinglib/CircularBuffer;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Can\'t return chunk of empty buffer"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketStart:[I

    aget v3, v3, p1

    iget v4, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    rem-int v2, v3, v4

    iget-object v3, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketStart:[I

    aget v3, v3, p1

    iget v4, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    div-int v0, v3, v4

    iget-object v3, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketFlags:[I

    aget v3, v3, p1

    iput v3, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v3, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketPtsUs:[J

    aget-wide v4, v3, p1

    iput-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput v2, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v3, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketLength:[I

    aget v3, v3, p1

    iput v3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v3, p0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/gdg/recordinglib/CircularBuffer;->mOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v1
.end method

.method public getFirstIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/gdg/recordinglib/CircularBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaTail:I

    goto :goto_0
.end method

.method public getLastIndex()I
    .locals 2

    invoke-virtual {p0}, Lcom/gdg/recordinglib/CircularBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    rem-int/2addr v0, v1

    goto :goto_0
.end method

.method public getNextIndex(I)I
    .locals 3

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    rem-int v0, v1, v2

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public getPacketNum()I
    .locals 3

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    iget v2, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaTail:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    rem-int v0, v1, v2

    return v0
.end method

.method public getPreviousIndex(I)I
    .locals 3

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaTail:I

    if-ne p1, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    rem-int v0, v1, v2

    goto :goto_0
.end method

.method public getTailChunk(Landroid/media/MediaCodec$BufferInfo;)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-virtual {p0}, Lcom/gdg/recordinglib/CircularBuffer;->getFirstIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/gdg/recordinglib/CircularBuffer;->getChunk(ILandroid/media/MediaCodec$BufferInfo;)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public increaseSize()Z
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    array-length v1, v1

    const-class v2, [Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v11}, Lcom/gdg/recordinglib/CircularBuffer;->increaseArraySize(Ljava/lang/Object;ILjava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v0, v8
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Allocated size can\'t be different."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v6

    const-string/jumbo v0, "CircularBuffer"

    const-string/jumbo v1, "Could not allocate memory to increase size."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v12

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mDataBuffer:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalBufferSize:I

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBufferSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalBufferSize:I

    iget v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalSpanMs:I

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mSpanMs:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalSpanMs:I

    iget-object v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketFlags:[I

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    const-class v2, [I

    iget v3, p0, Lcom/gdg/recordinglib/CircularBuffer;->mSingleBufferMetaLength:I

    iget v4, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaTail:I

    iget v5, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    invoke-static/range {v0 .. v5}, Lcom/gdg/recordinglib/CircularBuffer;->increaseArraySize(Ljava/lang/Object;ILjava/lang/Class;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketFlags:[I

    iget-object v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketPtsUs:[J

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    const-class v2, [J

    iget v3, p0, Lcom/gdg/recordinglib/CircularBuffer;->mSingleBufferMetaLength:I

    iget v4, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaTail:I

    iget v5, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    invoke-static/range {v0 .. v5}, Lcom/gdg/recordinglib/CircularBuffer;->increaseArraySize(Ljava/lang/Object;ILjava/lang/Class;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketPtsUs:[J

    iget-object v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketStart:[I

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    const-class v2, [I

    iget v3, p0, Lcom/gdg/recordinglib/CircularBuffer;->mSingleBufferMetaLength:I

    iget v4, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaTail:I

    iget v5, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    invoke-static/range {v0 .. v5}, Lcom/gdg/recordinglib/CircularBuffer;->increaseArraySize(Ljava/lang/Object;ILjava/lang/Class;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketStart:[I

    iget-object v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketLength:[I

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    const-class v2, [I

    iget v3, p0, Lcom/gdg/recordinglib/CircularBuffer;->mSingleBufferMetaLength:I

    iget v4, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaTail:I

    iget v5, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    invoke-static/range {v0 .. v5}, Lcom/gdg/recordinglib/CircularBuffer;->increaseArraySize(Ljava/lang/Object;ILjava/lang/Class;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketLength:[I

    invoke-virtual {p0}, Lcom/gdg/recordinglib/CircularBuffer;->getPacketNum()I

    move-result v9

    iget v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mSingleBufferMetaLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    iget v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaTail:I

    add-int/2addr v0, v9

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    invoke-virtual {p0}, Lcom/gdg/recordinglib/CircularBuffer;->getFirstIndex()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/gdg/recordinglib/CircularBuffer;->getNextIndex(I)I

    move-result v7

    const/4 v10, 0x0

    :goto_1
    if-ltz v7, :cond_3

    iget-object v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mPacketStart:[I

    aget v0, v0, v7

    if-nez v0, :cond_1

    const/4 v10, 0x1

    :cond_1
    if-eqz v10, :cond_2

    invoke-direct {p0, v7}, Lcom/gdg/recordinglib/CircularBuffer;->move(I)V

    :cond_2
    invoke-virtual {p0, v7}, Lcom/gdg/recordinglib/CircularBuffer;->getNextIndex(I)I

    move-result v7

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "CircularBuffer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Buffer size increased. BitRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/gdg/recordinglib/CircularBuffer;->mBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " span="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%,d"

    new-array v3, v11, [Ljava/lang/Object;

    iget v4, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalSpanMs:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "msec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " buffer size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%,d"

    new-array v3, v11, [Ljava/lang/Object;

    iget v4, p0, Lcom/gdg/recordinglib/CircularBuffer;->mTotalBufferSize:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "kB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " packet count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    goto/16 :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    iget v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaHead:I

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaTail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTail()V
    .locals 2

    invoke-virtual {p0}, Lcom/gdg/recordinglib/CircularBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t removeTail() in empty buffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaLength:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/gdg/recordinglib/CircularBuffer;->mMetaTail:I

    return-void
.end method
