.class public Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;
.super Lcom/samsung/android/app/omcagent/dm/agent/XDMHandleCmd;
.source "XDMParserSyncheader.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxml;


# instance fields
.field public cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

.field public is_noresp:I

.field public m_szLocname:Ljava/lang/String;

.field public m_szRespUri:Ljava/lang/String;

.field public m_szSessionId:Ljava/lang/String;

.field public m_szSource:Ljava/lang/String;

.field public m_szTarget:Ljava/lang/String;

.field public m_szVerdtd:Ljava/lang/String;

.field public m_szVerproto:Ljava/lang/String;

.field public meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

.field public msgid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/agent/XDMHandleCmd;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseSyncheader(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I
    .locals 7

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v4, "not WBXML_ERR_OK"

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

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

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "xdmParParseSyncheader verproto : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szVerproto:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "xdmParParseSyncheader sessionid : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szSessionId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "xdmParParseSyncheader msgid : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->msgid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "xdmParParseSyncheader is_noresp : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->is_noresp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v4, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->xdmAgentHdlCmdSyncHdr(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "xdmParParseCurrentElement error = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sparse-switch v1, :sswitch_data_0

    const/4 v2, 0x2

    :goto_2
    if-eqz v2, :cond_2

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v4, "not  WBXML_ERR_OK"

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    move v3, v2

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szVerdtd:Ljava/lang/String;

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szVerproto:Ljava/lang/String;

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szSessionId:Ljava/lang/String;

    goto :goto_2

    :sswitch_3
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->msgid:I

    goto :goto_2

    :sswitch_4
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szRespUri:Ljava/lang/String;

    goto :goto_2

    :sswitch_5
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseSource()I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szTarget:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szSource:Ljava/lang/String;

    goto :goto_2

    :sswitch_6
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseTarget()I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szSource:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szTarget:Ljava/lang/String;

    goto :goto_2

    :sswitch_7
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->is_noresp:I

    goto :goto_2

    :sswitch_8
    new-instance v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    goto :goto_2

    :sswitch_9
    new-instance v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;->xdmParParseCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    goto :goto_2

    :sswitch_a
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    iput v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->codePage:I

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xe -> :sswitch_9
        0x1a -> :sswitch_8
        0x1b -> :sswitch_3
        0x1d -> :sswitch_7
        0x21 -> :sswitch_4
        0x25 -> :sswitch_2
        0x27 -> :sswitch_5
        0x2e -> :sswitch_6
        0x31 -> :sswitch_0
        0x32 -> :sswitch_1
    .end sparse-switch
.end method
