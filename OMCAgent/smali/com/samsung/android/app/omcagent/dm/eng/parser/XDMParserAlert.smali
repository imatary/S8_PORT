.class public Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;
.super Lcom/samsung/android/app/omcagent/dm/agent/XDMHandleCmd;
.source "XDMParserAlert.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxml;


# instance fields
.field public cmdid:I

.field public cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

.field public is_noresp:I

.field public itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

.field public m_szCorrelator:Ljava/lang/String;

.field public m_szData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/agent/XDMHandleCmd;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->is_noresp:I

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->m_szCorrelator:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    return-void
.end method


# virtual methods
.method public xdmParParseAlert(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I
    .locals 6

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x6

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

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v4, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->xdmAgentHdlCmdAlert(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;)V

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

    iput v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->cmdid:I

    goto :goto_2

    :sswitch_1
    new-instance v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;->xdmParParseCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    goto :goto_2

    :sswitch_3
    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseItemlist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    goto :goto_2

    :sswitch_4
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->is_noresp:I

    goto :goto_2

    :sswitch_5
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    iput v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->codePage:I

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0xb -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x14 -> :sswitch_3
        0x1d -> :sswitch_4
    .end sparse-switch
.end method
