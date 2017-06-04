.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;
.super Ljava/lang/Object;
.source "XDMWbxmlDecoder.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxml;


# instance fields
.field public m_szStringT:Ljava/lang/String;

.field protected wbxbuff:[B

.field public wbxindex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->wbxbuff:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->m_szStringT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public xdmWbxDecInit([BI)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->wbxbuff:[B

    iput p2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    return-void
.end method

.method public xdmWbxDecParseExtension(I)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v7, 0xc3

    if-ne p1, v7, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferMbUINT32()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v5, v6

    :cond_0
    :goto_1
    return-object v5

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferByte()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v7, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public xdmWbxDecParseStartdoc(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferByte()I

    move-result v1

    iput v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->version:I

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferMbUINT32()I

    move-result v1

    iput v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->puid:I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->puid:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferMbUINT32()I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferMbUINT32()I

    move-result v1

    iput v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->charset:I

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->xdmWbxDecParseStringtable()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szStringtable:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szStringtable:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->m_szStringT:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public xdmWbxDecParseStr_i()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferByte()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v2

    :cond_0
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected EOF wbxdec_parse_str_i"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method public xdmWbxDecParseStr_t()Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferMbUINT32()I

    move-result v4

    move v2, v4

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->m_szStringT:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    :goto_1
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v5

    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->m_szStringT:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public xdmWbxDecParseStringtable()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferMbUINT32()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v5, v6

    :goto_1
    return-object v5

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferByte()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v7, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public xdmWbxDecReadBufferByte()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->wbxbuff:[B

    iget v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF wbxdec_buffer_read_byte"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public xdmWbxDecReadBufferMbUINT32()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x5

    if-lt v0, v5, :cond_0

    move v3, v2

    :goto_1
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferByte()I

    move-result v1

    if-gez v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    shl-int/lit8 v5, v4, 0x7

    and-int/lit8 v6, v1, 0x7f

    or-int v4, v5, v6

    and-int/lit16 v5, v1, 0x80

    if-nez v5, :cond_2

    move v2, v4

    move v3, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
