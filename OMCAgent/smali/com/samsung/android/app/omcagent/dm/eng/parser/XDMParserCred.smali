.class public Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;
.super Ljava/lang/Object;
.source "XDMParserCred.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxml;


# instance fields
.field public m_szData:Ljava/lang/String;

.field public meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I
    .locals 6

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v4, 0xe

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    if-eqz v2, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    iput-object p0, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sparse-switch v1, :sswitch_data_0

    const/4 v2, 0x2

    :goto_2
    if-eqz v2, :cond_0

    move v3, v2

    goto :goto_0

    :sswitch_0
    new-instance v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->Meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    iput v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;->codePage:I

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xf -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method
