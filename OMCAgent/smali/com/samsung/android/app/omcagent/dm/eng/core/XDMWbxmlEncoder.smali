.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;
.super Ljava/lang/Object;
.source "XDMWbxmlEncoder.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxml;


# static fields
.field private static out:Ljava/io/ByteArrayOutputStream;


# instance fields
.field buf:Ljava/io/ByteArrayOutputStream;

.field stringTableBuf:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->buf:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public static xdmWbxEncGetBufferSize()I
    .locals 2

    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public xdmWbxEncAddContent(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendByte(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendToBuffer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public xdmWbxEncAddOpaque([CI)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v2, 0xc3

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendByte(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendMbUINT32(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    if-lt v0, p2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public xdmWbxEncAddSwitchpage(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendByte(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendByte(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public xdmWbxEncAppendByte(I)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public xdmWbxEncAppendMbUINT32(I)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x5

    new-array v0, v3, [B

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, p1, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    shr-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_1

    move v1, v2

    :goto_1
    if-gt v1, v5, :cond_0

    sget-object v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    aget-byte v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return v5

    :cond_0
    sget-object v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v1, v1, -0x1

    aget-byte v4, v0, v1

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public xdmWbxEncAppendToBuffer(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public xdmWbxEncEndDocument()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public xdmWbxEncEndElement()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendByte(I)Z

    move-result v0

    return v0
.end method

.method xdmWbxEncGetBuffer()Ljava/io/ByteArrayOutputStream;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public xdmWbxEncInit(Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public xdmWbxEncStartDocument(IILjava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendByte(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendMbUINT32(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendMbUINT32(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendMbUINT32(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendMbUINT32(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendToBuffer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public xdmWbxEncStartElement(IZ)Z
    .locals 2

    move v0, p1

    if-eqz p2, :cond_0

    or-int/lit8 v0, v0, 0x40

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendByte(I)Z

    move-result v1

    return v1
.end method
