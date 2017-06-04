.class public Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;
.super Lcom/samsung/android/app/omcagent/dm/agent/XDMHandleCmd;
.source "XDMParserAtomic.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxml;


# instance fields
.field public cmdid:I

.field public is_noresp:I

.field public itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

.field public meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/agent/XDMHandleCmd;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseAtomic(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I
    .locals 14

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/16 v12, 0x8

    invoke-virtual {p1, v12}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v9

    if-eqz v9, :cond_0

    move v12, v9

    :goto_0
    return v12

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v9

    const/16 v12, 0x8

    if-ne v9, v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_2

    sget-object v12, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v13, "not WBXML_ERR_OK"

    invoke-virtual {v12, v13}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    move v12, v9

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :goto_1
    const/4 v12, 0x1

    if-ne v6, v12, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    if-eqz v1, :cond_3

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v12, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;)V

    const/4 v1, 0x0

    :cond_3
    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v12}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicEnd(Ljava/lang/Object;)V

    const/4 v12, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v12, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sparse-switch v6, :sswitch_data_0

    const/4 v9, 0x2

    :goto_2
    if-eqz v9, :cond_2

    move v12, v9

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v9

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->cmdid:I

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1, v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v12

    iput v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->is_noresp:I

    goto :goto_2

    :sswitch_2
    new-instance v12, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-direct {v12}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iget-object v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {v12, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v9

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iput-object v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    goto :goto_2

    :sswitch_3
    if-eqz v1, :cond_5

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v12, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;)V

    const/4 v1, 0x0

    :cond_5
    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->xdmParParseAdd(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v9

    goto :goto_2

    :sswitch_4
    if-eqz v1, :cond_6

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v12, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;)V

    const/4 v1, 0x0

    :cond_6
    new-instance v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;-><init>()V

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->xdmParParseDelete(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v9

    goto :goto_2

    :sswitch_5
    if-eqz v1, :cond_7

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v12, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;)V

    const/4 v1, 0x0

    :cond_7
    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;-><init>()V

    invoke-virtual {v5, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;->xdmParParseExec(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v9

    goto :goto_2

    :sswitch_6
    if-eqz v1, :cond_8

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v12, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;)V

    const/4 v1, 0x0

    :cond_8
    new-instance v2, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;-><init>()V

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;->xdmParParseCopy(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v9

    goto :goto_2

    :sswitch_7
    if-eqz v1, :cond_9

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v12, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;)V

    const/4 v1, 0x0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->xdmParParseAtomic(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v9

    goto :goto_2

    :sswitch_8
    if-eqz v1, :cond_a

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v12, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;)V

    const/4 v1, 0x0

    :cond_a
    new-instance v7, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;

    invoke-direct {v7}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;-><init>()V

    invoke-virtual {v7, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->xdmParParseMap(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v9

    goto/16 :goto_2

    :sswitch_9
    if-eqz v1, :cond_b

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v12, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;)V

    const/4 v1, 0x0

    :cond_b
    new-instance v8, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;

    invoke-direct {v8}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;-><init>()V

    invoke-virtual {v8, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->xdmParParseReplace(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v9

    goto/16 :goto_2

    :sswitch_a
    if-eqz v1, :cond_c

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v12, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;)V

    const/4 v1, 0x0

    :cond_c
    new-instance v10, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;

    invoke-direct {v10}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;-><init>()V

    invoke-virtual {v10, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->xdmParParseSequence(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v9

    goto/16 :goto_2

    :sswitch_b
    if-eqz v1, :cond_d

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v12, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;)V

    const/4 v1, 0x0

    :cond_d
    new-instance v11, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;

    invoke-direct {v11}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;-><init>()V

    invoke-virtual {v11, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->xdmParParseSync(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v9

    goto/16 :goto_2

    :sswitch_c
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v6

    iput v6, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->codePage:I

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x5 -> :sswitch_3
        0x8 -> :sswitch_7
        0xb -> :sswitch_0
        0xd -> :sswitch_6
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
        0x18 -> :sswitch_8
        0x1a -> :sswitch_2
        0x1d -> :sswitch_1
        0x20 -> :sswitch_9
        0x24 -> :sswitch_a
        0x2a -> :sswitch_b
    .end sparse-switch
.end method
