.class public Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;
.super Ljava/lang/Object;
.source "XDMParserAnchor.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxml;


# instance fields
.field public m_szLast:Ljava/lang/String;

.field public m_szNext:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParGetMetinfAnchor()Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    return-object v0
.end method

.method public xdmParParseAnchor(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I
    .locals 5

    const/4 v1, -0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v4, "xdmParParseAnchor"

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    if-eqz v2, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v4, "not WBXML_ERR_OK"

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseSkipLiteralElement()I

    move-result v2

    if-eqz v2, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sparse-switch v1, :sswitch_data_0

    const/4 v2, 0x2

    :goto_2
    if-eqz v2, :cond_3

    move v3, v2

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method
