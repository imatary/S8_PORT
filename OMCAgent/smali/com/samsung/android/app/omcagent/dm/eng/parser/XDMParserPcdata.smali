.class public Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;
.super Ljava/lang/Object;
.source "XDMParserPcdata.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxml;
.implements Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface;


# instance fields
.field public anchor:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

.field public data:[C

.field public size:I

.field public skipstatus:Z

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->skipstatus:Z

    return-void
.end method


# virtual methods
.method public xdmParGetPcdata()Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;-><init>()V

    iget v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->type:I

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->type:I

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->data:[C

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->data:[C

    iget v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->size:I

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->size:I

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->anchor:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->anchor:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

    return-object v0
.end method

.method public xdmParGetPcdataAnchor()Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->anchor:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

    return-object v0
.end method

.method public xdmParGetPcdataData()[C
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->data:[C

    return-object v0
.end method

.method public xdmParGetPcdataSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->size:I

    return v0
.end method

.method public xdmParGetPcdataType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->type:I

    return v0
.end method

.method public xdmParParsePcdata(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;I)I
    .locals 10

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v7, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v8, "xdmParParsePcdata"

    invoke-virtual {v7, v8}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v3

    if-eqz v3, :cond_1

    move v6, v3

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v3

    const/16 v7, 0x8

    if-eq v3, v7, :cond_0

    if-eqz v3, :cond_2

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v7, "not WBXML_ERR_OK"

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    move v6, v3

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I

    move-result v2

    const/4 v7, 0x3

    if-ne v2, v7, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecParseStr_i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->xdmString2pcdata(Ljava/lang/String;)V

    :goto_1
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v3

    if-eqz v3, :cond_0

    move v6, v3

    goto :goto_0

    :cond_3
    const/16 v7, 0x83

    if-ne v2, v7, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecParseStr_t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->xdmString2pcdata(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v7, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v7, 0xc3

    if-ne v2, v7, :cond_5

    :try_start_1
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecParseExtension(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    iput v7, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->type:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->size:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->xdmString2pcdata(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-nez v2, :cond_b

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v5

    if-eqz v3, :cond_6

    move v6, v3

    goto :goto_0

    :cond_6
    iput v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->codePage:I

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I

    move-result v5

    :cond_7
    iget v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->codePage:I

    if-ne v7, v9, :cond_8

    const/4 v7, 0x5

    if-ne v5, v7, :cond_8

    new-instance v7, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

    invoke-direct {v7}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->anchor:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->anchor:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

    invoke-virtual {v7, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;->xdmParParseAnchor(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v3

    if-eqz v3, :cond_a

    move v6, v3

    goto :goto_0

    :cond_8
    iget v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->codePage:I

    if-ne v7, v9, :cond_9

    const/16 v7, 0xd

    if-ne v5, v7, :cond_9

    new-instance v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;->xdmParParseMem(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v3

    if-eqz v3, :cond_a

    move v6, v3

    goto/16 :goto_0

    :cond_9
    if-nez v5, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I

    move-result v5

    if-ne v5, v9, :cond_7

    goto/16 :goto_1

    :cond_b
    iget v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxindex:I

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseSkipElement()I

    move-result v3

    if-eqz v3, :cond_c

    move v6, v3

    goto/16 :goto_0

    :cond_c
    const/4 v7, 0x2

    iput v7, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->type:I

    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->size:I

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->data:[C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public xdmString2pcdata(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->type:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->size:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->data:[C

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->data:[C

    aget-char v3, v0, v1

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
