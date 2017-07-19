.class public Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;
.super Ljava/lang/Object;
.source "XDMParserItem.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxml;


# instance fields
.field public data:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;

.field public m_szSource:Ljava/lang/String;

.field public m_szTarget:Ljava/lang/String;

.field public meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

.field public moredata:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseItem(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;)I
    .locals 6

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v4, "not WBXML_ERR_OK"

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

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
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xdmParParseItem res  = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sparse-switch v1, :sswitch_data_0

    const/4 v2, 0x2

    :goto_2
    if-eqz v2, :cond_2

    move v3, v2

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseTarget()I

    move-result v2

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szTarget:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseSource()I

    move-result v2

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szSource:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    goto :goto_2

    :sswitch_2
    new-instance v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v2

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    goto :goto_2

    :sswitch_3
    new-instance v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->data:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->data:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;

    invoke-virtual {v3, p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->xdmParParsePcdata(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;I)I

    move-result v2

    goto :goto_2

    :sswitch_4
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->moredata:I

    goto :goto_2

    :sswitch_5
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    iput v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->codePage:I

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0xf -> :sswitch_3
        0x1a -> :sswitch_2
        0x27 -> :sswitch_1
        0x2e -> :sswitch_0
        0x34 -> :sswitch_4
    .end sparse-switch
.end method
