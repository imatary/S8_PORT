.class public Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;
.super Ljava/lang/Object;
.source "XDMParserSync.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxml;


# instance fields
.field public cmdid:I

.field public cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

.field public is_noresp:Z

.field public is_noresults:Z

.field public m_szSource:Ljava/lang/String;

.field public m_szTarget:Ljava/lang/String;

.field public meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

.field public numofchanges:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseSync(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I
    .locals 14

    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v2, 0x1

    sget-object v12, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v13, "xdmParParseSync"

    invoke-virtual {v12, v13}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    const/16 v12, 0x2a

    invoke-virtual {p1, v12}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v10

    if-eqz v10, :cond_0

    move v12, v10

    :goto_0
    return v12

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v10

    const/16 v12, 0x8

    if-ne v10, v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    if-eqz v10, :cond_2

    sget-object v12, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v13, "not WBXML_ERR_OK"

    invoke-virtual {v12, v13}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    move v12, v10

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

    move-result v6

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    :catch_0
    move-exception v5

    sget-object v12, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sparse-switch v6, :sswitch_data_0

    const/4 v10, 0x2

    :goto_2
    if-eqz v10, :cond_2

    move v12, v10

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v10

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->cmdid:I

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1, v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v7

    const/4 v12, 0x1

    if-ne v7, v12, :cond_5

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->is_noresp:Z

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->is_noresp:Z

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1, v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v8

    const/4 v12, 0x1

    if-ne v8, v12, :cond_6

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->is_noresults:Z

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->is_noresults:Z

    goto :goto_2

    :sswitch_3
    new-instance v12, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-direct {v12}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;-><init>()V

    iput-object v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    iget-object v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {v12, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;->xdmParParseCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v10

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    iput-object v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    goto :goto_2

    :sswitch_4
    invoke-virtual {p1, v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v10

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szTarget:Ljava/lang/String;

    iput-object v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->m_szTarget:Ljava/lang/String;

    goto :goto_2

    :sswitch_5
    invoke-virtual {p1, v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v10

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szSource:Ljava/lang/String;

    iput-object v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->m_szSource:Ljava/lang/String;

    goto :goto_2

    :sswitch_6
    new-instance v12, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-direct {v12}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iget-object v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {v12, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v10

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iput-object v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    goto :goto_2

    :sswitch_7
    invoke-virtual {p1, v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v10

    iget-object v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->numofchanges:I

    goto :goto_2

    :sswitch_8
    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :cond_7
    new-instance v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;-><init>()V

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;->xdmParParseCopy(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v10

    goto :goto_2

    :sswitch_9
    if-eqz v2, :cond_8

    const/4 v2, 0x0

    :cond_8
    new-instance v11, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;

    invoke-direct {v11}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;-><init>()V

    invoke-virtual {v11, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;->xdmParParseSequence(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v10

    goto/16 :goto_2

    :sswitch_a
    if-eqz v2, :cond_9

    const/4 v2, 0x0

    :cond_9
    new-instance v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->xdmParParseAtomic(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v10

    goto/16 :goto_2

    :sswitch_b
    sget-object v12, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v13, "xdmParParseSync : WBXML_TAG_ADD"

    invoke-virtual {v12, v13}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    :cond_a
    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->xdmParParseAdd(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v10

    goto/16 :goto_2

    :sswitch_c
    if-eqz v2, :cond_b

    const/4 v2, 0x0

    :cond_b
    new-instance v9, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;

    invoke-direct {v9}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;-><init>()V

    invoke-virtual {v9, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->xdmParParseReplace(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v10

    goto/16 :goto_2

    :sswitch_d
    if-eqz v2, :cond_c

    const/4 v2, 0x0

    :cond_c
    new-instance v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;-><init>()V

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->xdmParParseDelete(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v10

    goto/16 :goto_2

    :sswitch_e
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v6

    iput v6, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->codePage:I

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x5 -> :sswitch_b
        0x8 -> :sswitch_a
        0xb -> :sswitch_0
        0xd -> :sswitch_8
        0xe -> :sswitch_3
        0x10 -> :sswitch_d
        0x1a -> :sswitch_6
        0x1d -> :sswitch_1
        0x1e -> :sswitch_2
        0x20 -> :sswitch_c
        0x24 -> :sswitch_9
        0x27 -> :sswitch_5
        0x2e -> :sswitch_4
        0x33 -> :sswitch_7
    .end sparse-switch
.end method
