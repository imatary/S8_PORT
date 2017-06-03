.class public final Landroid/icu/impl/StringPrepDataReader;
.super Ljava/lang/Object;
.source "StringPrepDataReader.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# static fields
.field private static final DATA_FORMAT_ID:I = 0x53505250

.field private static final DATA_FORMAT_VERSION:[B

.field private static final debug:Z


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private unicodeVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "NormalizerDataReader"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/StringPrepDataReader;->debug:Z

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0x2t
        0x5t
        0x2t
    .end array-data
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroid/icu/impl/StringPrepDataReader;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bytes in buffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    const v1, 0x53505250

    invoke-static {v0, v1, p0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/StringPrepDataReader;->unicodeVersion:I

    sget-boolean v0, Landroid/icu/impl/StringPrepDataReader;->debug:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bytes left in byteBuffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getDataFormatVersion()[B
    .locals 1

    sget-object v0, Landroid/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    return-object v0
.end method

.method public getUnicodeVersion()[B
    .locals 1

    iget v0, p0, Landroid/icu/impl/StringPrepDataReader;->unicodeVersion:I

    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getVersionByteArrayFromCompactInt(I)[B

    move-result-object v0

    return-object v0
.end method

.method public isDataVersionAcceptable([B)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    sget-object v2, Landroid/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v3

    sget-object v2, Landroid/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    aget-byte v2, v2, v3

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v4

    sget-object v2, Landroid/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    aget-byte v2, v2, v4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public read(I)[C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v0

    return-object v0
.end method

.method public readIndexes(I)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v1, p1, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v2, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
