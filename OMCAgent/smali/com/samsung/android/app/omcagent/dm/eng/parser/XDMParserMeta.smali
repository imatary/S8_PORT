.class public Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;
.super Ljava/lang/Object;
.source "XDMParserMeta.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxml;


# instance fields
.field public anchor:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

.field public m_szEmi:Ljava/lang/String;

.field public m_szFormat:Ljava/lang/String;

.field public m_szMark:Ljava/lang/String;

.field public m_szNextNonce:Ljava/lang/String;

.field public m_szType:Ljava/lang/String;

.field public m_szVersion:Ljava/lang/String;

.field public maxmsgsize:I

.field public maxobjsize:I

.field public mem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v4, 0x1a

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

    move v3, v2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-ne v1, v6, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    if-eqz v2, :cond_4

    move v3, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    if-eqz v2, :cond_5

    move v3, v2

    goto :goto_0

    :cond_5
    iput v6, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->codePage:I

    :cond_6
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :goto_2
    if-ne v1, v6, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    iput-object p0, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    move v3, v2

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x2

    :goto_3
    if-eqz v2, :cond_6

    move v3, v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    iput v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->codePage:I

    goto :goto_3

    :pswitch_2
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    goto :goto_3

    :pswitch_3
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    goto :goto_3

    :pswitch_4
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szMark:Ljava/lang/String;

    goto :goto_3

    :pswitch_5
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->size:I

    goto :goto_3

    :pswitch_6
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    goto :goto_3

    :pswitch_7
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szVersion:Ljava/lang/String;

    goto :goto_3

    :pswitch_8
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->maxmsgsize:I

    goto :goto_3

    :pswitch_9
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->maxobjsize:I

    goto :goto_3

    :pswitch_a
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szEmi:Ljava/lang/String;

    goto :goto_3

    :pswitch_b
    new-instance v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->mem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->mem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;->xdmParParseMem(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    goto :goto_3

    :pswitch_c
    new-instance v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->anchor:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->anchor:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;->xdmParParseAnchor(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
