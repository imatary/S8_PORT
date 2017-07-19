.class public Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;
.super Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;
.source "XDMParser.java"


# instance fields
.field public Chal:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

.field public Cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

.field public Meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

.field public _pItem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;

.field public _pMapitem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;

.field public charset:I

.field public codePage:I

.field public in:Ljava/io/ByteArrayInputStream;

.field public m_szParserElement:Ljava/lang/String;

.field public m_szSource:Ljava/lang/String;

.field public m_szStringtable:Ljava/lang/String;

.field public m_szTarget:Ljava/lang/String;

.field public puid:I

.field public stsize:I

.field public userdata:Ljava/lang/Object;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->_pItem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->_pMapitem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szTarget:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Chal:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxbuff:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlDecoder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->_pItem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->_pMapitem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szTarget:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Chal:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxbuff:[B

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxbuff:[B

    return-void
.end method


# virtual methods
.method public xdmHdlCmdSyncEnd(Ljava/lang/Object;I)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;

    if-lez p2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->isFinal:Z

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v2, "didn\'t catch FINAL"

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->isFinal:Z

    goto :goto_0
.end method

.method public xdmParDevinfo()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public xdmParParse()I
    .locals 6

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v5, "xdmParParse"

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxbuff:[B

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    iput v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxindex:I

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxbuff:[B

    iget v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxindex:I

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecInit([BI)V

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecParseStartdoc(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)V

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_1

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v4, "not WBXML_TAG_SYNCML"

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v3, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseSyncml()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_2
    move v3, v2

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public xdmParParseBlankElement(I)I
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I

    move-result v3

    and-int/lit8 v5, v3, 0x40

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-eqz v1, :cond_3

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    :goto_1
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public xdmParParseChal()I
    .locals 4

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v1

    if-eqz v1, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    sget-object v2, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v3, "not WBXML_ERR_OK"

    invoke-virtual {v2, v3}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Chal:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v1

    if-eqz v1, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method public xdmParParseCheckElement(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v2, "xdmParParseReadElement is WBXML_ERR_UNKNOWN_ELEMENT"

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public xdmParParseContent()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecParseStr_i()Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_0
    move-object v4, v3

    :goto_1
    return-object v4

    :cond_1
    const/16 v4, 0x83

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecParseStr_t()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/16 v4, 0xc3

    if-ne v1, v4, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecParseExtension(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxindex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxindex:I

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseSkipElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public xdmParParseCurrentElement()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxbuff:[B

    iget v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxindex:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected EOF"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    and-int/lit8 v2, v1, 0x3f

    and-int/lit8 v0, v2, 0x7f

    return v0
.end method

.method public xdmParParseElelist(ILcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;
    .locals 8

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-eq v2, p1, :cond_0

    :goto_2
    return-object p2

    :catch_0
    move-exception v0

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 p2, 0x0

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v1, v5, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListAppend(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;Ljava/lang/Object;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object p2

    goto :goto_0
.end method

.method public xdmParParseElement(I)I
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    const-string v6, ""

    iput-object v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    if-eqz v2, :cond_0

    move v6, v2

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    const/16 v6, 0x8

    if-ne v2, v6, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v7, "not WBXML_ERR_OK"

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    move v6, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseSkipLiteralElement()I

    move-result v2

    if-eqz v2, :cond_5

    move v6, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I

    move-result p1

    const/16 v6, 0x83

    if-ne p1, v6, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecParseStr_t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I

    move-result p1

    if-ne p1, v8, :cond_4

    iget v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxindex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxindex:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    if-eqz v2, :cond_7

    move v6, v2

    goto :goto_0

    :cond_4
    :try_start_1
    iget v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxindex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxindex:I

    :cond_5
    :goto_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxindex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxindex:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move v6, v2

    goto :goto_0
.end method

.method public xdmParParseInit(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->codePage:I

    iput-object p2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    return-void
.end method

.method public xdmParParseItemlist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;
    .locals 7

    const/4 v3, 0x0

    move-object v1, p1

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    const/16 v5, 0x14

    if-eq v2, v5, :cond_0

    :goto_2
    return-object v1

    :catch_0
    move-exception v0

    sget-object v5, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->_pItem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->_pItem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->_pItem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;

    invoke-virtual {v5, p0, v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->xdmParParseItem(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->_pItem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;

    invoke-static {v1, v4, v5}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListAppend(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;Ljava/lang/Object;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v1

    goto :goto_0
.end method

.method public xdmParParseMapitemlist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;
    .locals 7

    move-object v1, p1

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    const/16 v5, 0x19

    if-eq v2, v5, :cond_0

    :goto_2
    return-object v1

    :catch_0
    move-exception v0

    sget-object v5, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->_pMapitem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->_pMapitem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->_pMapitem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;

    invoke-virtual {v5, p0, v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;->xdmParParseMapitem(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->_pMapitem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;

    invoke-static {v1, v4, v5}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListAppend(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;Ljava/lang/Object;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v1

    goto :goto_0
.end method

.method public xdmParParseReadElement()I
    .locals 5

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    and-int/lit8 v3, v2, 0x3f

    and-int/lit8 v1, v3, 0x7f

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public xdmParParseSkipElement()I
    .locals 5

    const/4 v1, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    return v3

    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I

    goto :goto_1

    :cond_3
    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/16 v3, 0x83

    if-eq v2, v3, :cond_4

    const/16 v3, 0xc3

    if-ne v2, v3, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseContent()Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public xdmParParseSkipLiteralElement()I
    .locals 4

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public xdmParParseSource()I
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/16 v5, 0x27

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    if-eqz v2, :cond_0

    move v5, v2

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    sget-object v5, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v6, "not WBXML_ERR_OK"

    invoke-virtual {v5, v6}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    move v5, v2

    goto :goto_0

    :cond_2
    const/16 v5, 0x17

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    if-eqz v2, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I

    move-result v1

    const/16 v5, 0x16

    if-ne v1, v5, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseSkipElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    if-eqz v2, :cond_5

    move v5, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szSource:Ljava/lang/String;

    :goto_2
    move v5, v2

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szSource:Ljava/lang/String;

    goto :goto_2
.end method

.method public xdmParParseSyncbody()I
    .locals 24

    const/4 v11, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x2b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v15

    if-eqz v15, :cond_0

    move/from16 v21, v15

    :goto_0
    return v21

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v15

    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v15, v0, :cond_1

    const/16 v21, 0x0

    goto :goto_0

    :cond_1
    if-eqz v15, :cond_2

    sget-object v21, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v22, "not WBXML_ERR_OK"

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    move/from16 v21, v15

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    :goto_1
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v11

    sget-object v21, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "xdmParParseSyncbody end tmp = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmHdlCmdSyncEnd(Ljava/lang/Object;I)V

    const/16 v21, 0x0

    goto :goto_0

    :catch_0
    move-exception v8

    sget-object v21, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sparse-switch v11, :sswitch_data_0

    const/4 v15, 0x2

    :goto_2
    if-eqz v15, :cond_2

    move/from16 v21, v15

    goto :goto_0

    :sswitch_0
    new-instance v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->xdmParParseAlert(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v15

    goto :goto_2

    :sswitch_1
    new-instance v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->xdmParParseAdd(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v15

    goto :goto_2

    :sswitch_2
    new-instance v14, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;

    invoke-direct {v14}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->xdmParParseReplace(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v15

    goto :goto_2

    :sswitch_3
    new-instance v10, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;

    invoke-direct {v10}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;->xdmParParseGet(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v15

    goto :goto_2

    :sswitch_4
    new-instance v12, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;

    invoke-direct {v12}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->xdmParParseMap(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v15

    goto :goto_2

    :sswitch_5
    new-instance v13, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPut;

    invoke-direct {v13}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPut;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPut;->xdmParParsePut(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v15

    goto :goto_2

    :sswitch_6
    new-instance v16, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->xdmParParseResults(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v15

    goto :goto_2

    :sswitch_7
    new-instance v18, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;

    invoke-direct/range {v18 .. v18}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->xdmParParseStatus(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v15

    goto :goto_2

    :sswitch_8
    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->xdmParParseAtomic(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v15

    goto :goto_2

    :sswitch_9
    new-instance v17, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->xdmParParseSequence(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v15

    goto/16 :goto_2

    :sswitch_a
    new-instance v19, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;

    invoke-direct/range {v19 .. v19}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->xdmParParseSync(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v15

    goto/16 :goto_2

    :sswitch_b
    new-instance v7, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;

    invoke-direct {v7}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->xdmParParseDelete(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v15

    goto/16 :goto_2

    :sswitch_c
    new-instance v6, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;

    invoke-direct {v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;->xdmParParseCopy(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v15

    goto/16 :goto_2

    :sswitch_d
    new-instance v9, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;

    invoke-direct {v9}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;->xdmParParseExec(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v15

    goto/16 :goto_2

    :sswitch_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v20

    goto/16 :goto_2

    :sswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->codePage:I

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
        0x8 -> :sswitch_8
        0xd -> :sswitch_c
        0x10 -> :sswitch_b
        0x11 -> :sswitch_d
        0x12 -> :sswitch_e
        0x13 -> :sswitch_3
        0x18 -> :sswitch_4
        0x1f -> :sswitch_5
        0x20 -> :sswitch_2
        0x22 -> :sswitch_6
        0x24 -> :sswitch_9
        0x29 -> :sswitch_7
        0x2a -> :sswitch_a
    .end sparse-switch
.end method

.method public xdmParParseSyncml()I
    .locals 7

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/16 v5, 0x2d

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v5, "not WBXML_ERR_OK"

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    move v4, v3

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_0

    if-eqz v3, :cond_2

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v5, "not WBXML_ERR_OK"

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    move v4, v3

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    sparse-switch v2, :sswitch_data_0

    const/4 v3, 0x2

    :goto_2
    if-eqz v3, :cond_2

    move v4, v3

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_0
    new-instance v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->xdmParParseSyncheader(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v3

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseSyncbody()I

    move-result v3

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v2

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2b -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method public xdmParParseTarget()I
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, -0x1

    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    if-eqz v2, :cond_0

    move v5, v2

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    sget-object v5, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v6, "not WBXML_ERR_OK"

    invoke-virtual {v5, v6}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    move v5, v2

    goto :goto_0

    :cond_2
    const/16 v5, 0x17

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    if-eqz v2, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I

    move-result v1

    const/16 v5, 0x16

    if-ne v1, v5, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseSkipElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    if-eqz v2, :cond_5

    move v5, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szTarget:Ljava/lang/String;

    :goto_2
    move v5, v2

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szTarget:Ljava/lang/String;

    goto :goto_2
.end method

.method public xdmParParseZeroBitTagCheck()I
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxbuff:[B

    iget v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxindex:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxindex:I

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    and-int/lit8 v4, v0, 0x3f

    and-int/lit8 v1, v4, 0x7f

    const/4 v4, 0x5

    if-lt v1, v4, :cond_1

    const/16 v4, 0x3c

    if-gt v1, v4, :cond_1

    and-int/lit8 v3, v0, 0x40

    if-nez v3, :cond_1

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v5, "WBXML_ERR_ZEROBIT_TAG"

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/16 v2, 0x8

    :cond_1
    iget v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxindex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->wbxindex:I

    move v4, v2

    goto :goto_0
.end method
