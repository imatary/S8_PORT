.class public Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;
.super Ljava/lang/Object;
.source "XDMParserResults.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxml;
.implements Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface;


# instance fields
.field public cmdid:I

.field public itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

.field public m_szCmdRef:Ljava/lang/String;

.field public m_szMsgRef:Ljava/lang/String;

.field public m_szSourceRef:Ljava/lang/String;

.field public m_szTargetRef:Ljava/lang/String;

.field public meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    return-void
.end method


# virtual methods
.method public xdmParParseResults(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I
    .locals 6

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v4, 0x22

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    if-eqz v2, :cond_1

    move v3, v2

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    if-eqz v2, :cond_2

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v4, "not WBXML_ERR_OK"

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    move v3, v2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sparse-switch v1, :sswitch_data_0

    const/4 v2, 0x2

    :goto_2
    if-eqz v2, :cond_2

    move v3, v2

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->cmdid:I

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->m_szMsgRef:Ljava/lang/String;

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->m_szCmdRef:Ljava/lang/String;

    goto :goto_2

    :sswitch_3
    new-instance v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    goto :goto_2

    :sswitch_4
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->m_szTargetRef:Ljava/lang/String;

    goto :goto_2

    :sswitch_5
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->m_szSourceRef:Ljava/lang/String;

    goto :goto_2

    :sswitch_6
    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseItemlist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    goto :goto_2

    :sswitch_7
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    iput v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->codePage:I

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0xb -> :sswitch_0
        0xc -> :sswitch_2
        0x14 -> :sswitch_6
        0x1a -> :sswitch_3
        0x1c -> :sswitch_1
        0x28 -> :sswitch_5
        0x2f -> :sswitch_4
    .end sparse-switch
.end method
