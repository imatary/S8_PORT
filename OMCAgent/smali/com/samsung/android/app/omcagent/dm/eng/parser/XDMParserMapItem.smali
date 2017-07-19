.class public Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;
.super Ljava/lang/Object;
.source "XDMParserMapItem.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxml;


# instance fields
.field public m_szSource:Ljava/lang/String;

.field public m_szTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseMapitem(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;)I
    .locals 5

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x19

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

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;->m_szTarget:Ljava/lang/String;

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseSource()I

    move-result v2

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szSource:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;->m_szSource:Ljava/lang/String;

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_1
        0x2e -> :sswitch_0
    .end sparse-switch
.end method
