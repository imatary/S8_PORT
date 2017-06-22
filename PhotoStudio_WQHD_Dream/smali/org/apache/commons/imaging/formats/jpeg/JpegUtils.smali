.class public Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "JpegUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method public static getMarkerName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "SOS_MARKER"

    goto :goto_0

    :pswitch_2
    const-string v0, "JPEG_APP1_MARKER"

    goto :goto_0

    :pswitch_3
    const-string v0, "JPEG_APP2_MARKER"

    goto :goto_0

    :pswitch_4
    const-string v0, "JPEG_APP13_MARKER"

    goto :goto_0

    :pswitch_5
    const-string v0, "JPEG_APP14_MARKER"

    goto :goto_0

    :pswitch_6
    const-string v0, "JPEG_APP15_MARKER"

    goto :goto_0

    :pswitch_7
    const-string v0, "JFIF_MARKER"

    goto :goto_0

    :pswitch_8
    const-string v0, "SOF0_MARKER"

    goto :goto_0

    :pswitch_9
    const-string v0, "SOF1_MARKER"

    goto :goto_0

    :pswitch_a
    const-string v0, "SOF2_MARKER"

    goto :goto_0

    :pswitch_b
    const-string v0, "SOF3_MARKER"

    goto :goto_0

    :pswitch_c
    const-string v0, "SOF4_MARKER"

    goto :goto_0

    :pswitch_d
    const-string v0, "SOF5_MARKER"

    goto :goto_0

    :pswitch_e
    const-string v0, "SOF6_MARKER"

    goto :goto_0

    :pswitch_f
    const-string v0, "SOF7_MARKER"

    goto :goto_0

    :pswitch_10
    const-string v0, "SOF8_MARKER"

    goto :goto_0

    :pswitch_11
    const-string v0, "SOF9_MARKER"

    goto :goto_0

    :pswitch_12
    const-string v0, "SOF10_MARKER"

    goto :goto_0

    :pswitch_13
    const-string v0, "SOF11_MARKER"

    goto :goto_0

    :pswitch_14
    const-string v0, "DAC_MARKER"

    goto :goto_0

    :pswitch_15
    const-string v0, "SOF13_MARKER"

    goto :goto_0

    :pswitch_16
    const-string v0, "SOF14_MARKER"

    goto :goto_0

    :pswitch_17
    const-string v0, "SOF15_MARKER"

    goto :goto_0

    :pswitch_18
    const-string v0, "DQT_MARKER"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xffc0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public dumpJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$1;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    return-void
.end method

.method public traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->SOI:Lorg/apache/commons/imaging/common/BinaryConstant;

    const-string v10, "Not a Valid JPEG File: doesn\'t begin with 0xffd8"

    invoke-static {v8, v0, v10}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;Lorg/apache/commons/imaging/common/BinaryConstant;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_0
    const/4 v0, 0x2

    new-array v2, v0, [B

    :cond_0
    const/4 v0, 0x0

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    aput-byte v10, v2, v0

    const/4 v0, 0x1

    const-string v10, "marker"

    const-string v11, "Could not read marker"

    invoke-static {v10, v8, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v10

    aput-byte v10, v2, v0

    const/4 v0, 0x0

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v10, 0xff

    if-ne v0, v10, :cond_0

    const/4 v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v10, 0xff

    if-eq v0, v10, :cond_0

    const/4 v0, 0x0

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    or-int v1, v0, v10

    const v0, 0xffd9

    if-eq v1, v0, :cond_1

    const v0, 0xffda

    if-ne v1, v0, :cond_3

    :cond_1
    invoke-interface {p2}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;->beginSOS()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    const/4 v6, 0x1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v10, 0x0

    aput-object v8, v0, v10

    invoke-static {v6, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    :goto_1
    return-void

    :cond_2
    :try_start_1
    invoke-static {v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->getStreamBytes(Ljava/io/InputStream;)[B

    move-result-object v7

    invoke-interface {p2, v1, v2, v7}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;->visitSOS(I[B[B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " markers"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v10, 0x0

    aput-object v8, v0, v10

    invoke-static {v6, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto :goto_1

    :cond_3
    :try_start_2
    const-string v0, "segmentLengthBytes"

    const/4 v10, 0x2

    const-string v11, "segmentLengthBytes"

    invoke-static {v0, v8, v10, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BLjava/nio/ByteOrder;)I

    move-result v3

    const-string v0, "Segment Data"

    add-int/lit8 v10, v3, -0x2

    const-string v11, "Invalid Segment: insufficient data"

    invoke-static {v0, v8, v10, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v5

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;->visitSegment(I[BI[B[B)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    const/4 v6, 0x1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v10, 0x0

    aput-object v8, v0, v10

    invoke-static {v6, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/io/Closeable;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-static {v6, v10}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v0
.end method
