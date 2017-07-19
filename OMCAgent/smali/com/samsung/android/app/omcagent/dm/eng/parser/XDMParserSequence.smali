.class public Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;
.super Lcom/samsung/android/app/omcagent/dm/agent/XDMHandleCmd;
.source "XDMParserSequence.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxml;


# instance fields
.field public add:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;

.field public alert:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;

.field public atomic:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;

.field public cmdid:I

.field public copy:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;

.field public delete:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;

.field public exec:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;

.field public get:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;

.field public is_noresp:I

.field public itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

.field public map:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;

.field public meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

.field public replace:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;

.field public sync:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/agent/XDMHandleCmd;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseSequence(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I
    .locals 7

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/16 v5, 0x24

    invoke-virtual {p1, v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v3

    if-eqz v3, :cond_1

    move v4, v3

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

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
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v2

    if-eqz v0, :cond_3

    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;)V

    const/4 v0, 0x0

    :cond_3
    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceEnd(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sparse-switch v2, :sswitch_data_0

    const/4 v3, 0x2

    :goto_2
    if-eqz v3, :cond_2

    move v4, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v3

    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->cmdid:I

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->is_noresp:I

    goto :goto_2

    :sswitch_2
    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {v5, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v3

    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    goto :goto_2

    :sswitch_3
    if-eqz v0, :cond_5

    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;)V

    const/4 v0, 0x0

    :cond_5
    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->alert:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->alert:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;

    invoke-virtual {v5, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->xdmParParseAlert(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    goto :goto_2

    :sswitch_4
    if-eqz v0, :cond_6

    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;)V

    const/4 v0, 0x0

    :cond_6
    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->add:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->add:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;

    invoke-virtual {v5, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->xdmParParseAdd(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    goto :goto_2

    :sswitch_5
    if-eqz v0, :cond_7

    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;)V

    const/4 v0, 0x0

    :cond_7
    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->replace:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->replace:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;

    invoke-virtual {v5, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->xdmParParseReplace(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    goto :goto_2

    :sswitch_6
    if-eqz v0, :cond_8

    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;)V

    const/4 v0, 0x0

    :cond_8
    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->delete:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->delete:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;

    invoke-virtual {v5, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->xdmParParseDelete(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    goto :goto_2

    :sswitch_7
    if-eqz v0, :cond_9

    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;)V

    const/4 v0, 0x0

    :cond_9
    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->copy:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->copy:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;

    invoke-virtual {v5, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;->xdmParParseCopy(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    goto/16 :goto_2

    :sswitch_8
    if-eqz v0, :cond_a

    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;)V

    const/4 v0, 0x0

    :cond_a
    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->atomic:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->atomic:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;

    invoke-virtual {v5, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->xdmParParseAtomic(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    goto/16 :goto_2

    :sswitch_9
    if-eqz v0, :cond_b

    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;)V

    const/4 v0, 0x0

    :cond_b
    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->map:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->map:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;

    invoke-virtual {v5, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->xdmParParseMap(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    goto/16 :goto_2

    :sswitch_a
    if-eqz v0, :cond_c

    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;)V

    const/4 v0, 0x0

    :cond_c
    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->get:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->get:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;

    invoke-virtual {v5, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;->xdmParParseGet(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    goto/16 :goto_2

    :sswitch_b
    if-eqz v0, :cond_d

    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;)V

    const/4 v0, 0x0

    :cond_d
    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->sync:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->sync:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;

    invoke-virtual {v5, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->xdmParParseSync(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    goto/16 :goto_2

    :sswitch_c
    if-eqz v0, :cond_e

    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;)V

    const/4 v0, 0x0

    :cond_e
    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->exec:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->exec:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;

    invoke-virtual {v5, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;->xdmParParseExec(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    goto/16 :goto_2

    :sswitch_d
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v2

    iput v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->codePage:I

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x8 -> :sswitch_8
        0xb -> :sswitch_0
        0xd -> :sswitch_7
        0x10 -> :sswitch_6
        0x11 -> :sswitch_c
        0x13 -> :sswitch_a
        0x18 -> :sswitch_9
        0x1a -> :sswitch_2
        0x1d -> :sswitch_1
        0x20 -> :sswitch_5
        0x2a -> :sswitch_b
    .end sparse-switch
.end method
