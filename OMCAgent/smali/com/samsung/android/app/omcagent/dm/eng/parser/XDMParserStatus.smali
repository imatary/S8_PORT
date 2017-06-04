.class public Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;
.super Lcom/samsung/android/app/omcagent/dm/agent/XDMHandleCmd;
.source "XDMParserStatus.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxml;


# instance fields
.field public chal:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

.field public cmdid:I

.field public cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

.field public itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

.field public m_szCmd:Ljava/lang/String;

.field public m_szCmdRef:Ljava/lang/String;

.field public m_szData:Ljava/lang/String;

.field public m_szMsgRef:Ljava/lang/String;

.field public sourceref:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

.field public targetref:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/agent/XDMHandleCmd;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->chal:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    return-void
.end method


# virtual methods
.method public xdmParParseStatus(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I
    .locals 7

    const/16 v6, 0x29

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

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

    if-eqz v2, :cond_3

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v4, "not WBXML_ERR_OK"

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    move v3, v2

    goto :goto_0

    :cond_2
    if-ne v1, v6, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v5, "xdmParParseStatus WBXML_END"

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WBXML_TAG_CMDID cmdid ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->cmdid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WBXML_TAG_MSGREF msgref ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WBXML_TAG_CMDREF cmdref ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szCmdRef:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WBXML_TAG_Cmd cmd ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WBXML_TAG_DATA data ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v4, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->xdmAgentHdlCmdStatus(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    sparse-switch v1, :sswitch_data_0

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v5, "WBXML_ERR_UNKNOWN_ELEMENT !!!!!!!"

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v2, 0x2

    :goto_2
    if-eqz v2, :cond_3

    move v3, v2

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->cmdid:I

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szCmdRef:Ljava/lang/String;

    goto :goto_2

    :sswitch_3
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    goto :goto_2

    :sswitch_4
    new-instance v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->targetref:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->targetref:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-virtual {p1, v1, v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElelist(ILcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->targetref:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    goto :goto_2

    :sswitch_5
    new-instance v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->sourceref:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->sourceref:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-virtual {p1, v1, v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElelist(ILcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->sourceref:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    goto :goto_2

    :sswitch_6
    new-instance v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;->xdmParParseCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    goto :goto_2

    :sswitch_7
    new-instance v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->chal:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseChal()I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Chal:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->chal:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    goto :goto_2

    :sswitch_8
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto :goto_2

    :sswitch_9
    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseItemlist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    goto :goto_2

    :sswitch_a
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    iput v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->codePage:I

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x9 -> :sswitch_7
        0xa -> :sswitch_3
        0xb -> :sswitch_0
        0xc -> :sswitch_2
        0xe -> :sswitch_6
        0xf -> :sswitch_8
        0x14 -> :sswitch_9
        0x1c -> :sswitch_1
        0x28 -> :sswitch_5
        0x2f -> :sswitch_4
    .end sparse-switch
.end method
