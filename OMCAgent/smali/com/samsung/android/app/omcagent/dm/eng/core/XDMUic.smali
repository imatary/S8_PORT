.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUic;
.super Ljava/lang/Object;
.source "XDMUic.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/interfaces/XUICInterface;
.implements Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmUicCopyResult(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;
    .locals 5

    move-object v2, p0

    move-object v1, p1

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    if-nez v1, :cond_1

    :cond_0
    return-object p0

    :cond_1
    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->appId:I

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->appId:I

    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->UICType:I

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->UICType:I

    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->result:I

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->result:I

    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->SingleSelected:I

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->SingleSelected:I

    iget-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget v4, v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    iput v4, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    iget-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget v4, v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->size:I

    iput v4, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->size:I

    iget-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v3, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v4, v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    :cond_2
    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->MenuNumbers:I

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->MenuNumbers:I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->MultiSelected:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->MultiSelected:[I

    iget-object v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->MultiSelected:[I

    aget v4, v4, v0

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static xdmUicCopyUicOption(Ljava/lang/Object;Ljava/lang/Object;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;
    .locals 7

    const/4 v6, 0x0

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;

    const/4 v0, 0x0

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->appId:I

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->appId:I

    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->inputType:I

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->inputType:I

    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->echoType:I

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->echoType:I

    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->maxDT:I

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->maxDT:I

    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->maxLen:I

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->maxLen:I

    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->minDT:I

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->minDT:I

    iget-wide v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->progrCurSize:J

    iput-wide v4, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->progrCurSize:J

    iget-wide v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->progrMaxSize:J

    iput-wide v4, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->progrMaxSize:J

    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->progrType:I

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->progrType:I

    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->UICType:I

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->UICType:I

    new-instance v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;-><init>()V

    iput-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget v4, v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    iput v4, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    iget-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget v4, v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->size:I

    iput v4, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->size:I

    iget-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v3, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v4, v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    :cond_0
    :goto_0
    new-instance v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;-><init>()V

    iput-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget v4, v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    iput v4, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    iget-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget v4, v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->size:I

    iput v4, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->size:I

    iget-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v3, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iget-object v4, v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    :cond_1
    :goto_1
    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->UICType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->UICType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    :cond_2
    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->uicMenuNumbers:I

    if-nez v3, :cond_3

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v4, "xdmUicCopyUicOption uicMenuNumbers = 0 !!!"

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    :cond_3
    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->uicMenuNumbers:I

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->uicMenuNumbers:I

    const/4 v0, 0x0

    :goto_2
    iget v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->uicMenuNumbers:I

    if-lt v0, v3, :cond_7

    iget-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->m_szUicMenuTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->m_szUicMenuTitle:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->m_szUicMenuTitle:Ljava/lang/String;

    :cond_4
    check-cast p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;

    return-object p0

    :cond_5
    iget-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iput v6, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    iget-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iput v6, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->size:I

    goto :goto_0

    :cond_6
    iget-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iput v6, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    iget-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iput v6, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->size:I

    goto :goto_1

    :cond_7
    iget-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->uicMenuList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0x20

    if-ge v0, v3, :cond_8

    iget-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->uicMenuList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->uicMenuList:[Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->uicMenuList:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static xdmUicCreateResult()Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;
    .locals 3

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;-><init>()V

    new-instance v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListCreateText(ILjava/lang/Object;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    return-object v0
.end method

.method public static xdmUicCreateUicOption()Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x80

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;-><init>()V

    new-instance v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    new-instance v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    invoke-static {v2, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListCreateText(ILjava/lang/Object;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    invoke-static {v2, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListCreateText(ILjava/lang/Object;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    return-object v0
.end method

.method public static xdmUicFreeResult(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    move-object v0, p0

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v2, "xdmUicFreeResult"

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iput-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    const/4 v0, 0x0

    return-object v3
.end method

.method public static xdmUicFreeUicOption(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;
    .locals 4

    const/4 v3, 0x0

    move-object v1, p0

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    iput-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    iput-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    const/4 v0, 0x0

    :goto_0
    iget v2, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->uicMenuNumbers:I

    if-lt v0, v2, :cond_1

    iput-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->m_szUicMenuTitle:Ljava/lang/String;

    const/4 v1, 0x0

    :cond_0
    return-object p0

    :cond_1
    iget-object v2, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->uicMenuList:[Ljava/lang/String;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static xdmUicGetUicType(Ljava/lang/String;)I
    .locals 4

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pType "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "1100"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1101"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "1102"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v1, "1103"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const-string v1, "1104"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static xdmUicOptionProcess(Ljava/lang/String;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;)Ljava/lang/String;
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/16 v11, 0x26

    const/4 v10, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v0, 0x0

    const/4 v3, 0x0

    sget-object v7, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "pUicOptions :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    sget-object v7, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "uicOption :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    aget-char v7, v4, v3

    if-nez v7, :cond_1

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    aget-char v7, v4, v3

    const/16 v8, 0x20

    if-eq v7, v8, :cond_0

    aget-char v7, v4, v3

    const/16 v8, 0x9

    if-eq v7, v8, :cond_0

    :goto_1
    add-int v7, v3, v2

    array-length v8, v4

    if-ge v7, v8, :cond_2

    add-int v7, v3, v2

    aget-char v7, v4, v7

    const/16 v8, 0x3d

    if-ne v7, v8, :cond_5

    :cond_2
    array-length v7, v4

    sub-int/2addr v7, v3

    new-array v5, v7, [C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    array-length v8, v4

    sub-int/2addr v8, v3

    invoke-virtual {v7, v3, v8, v5, v10}, Ljava/lang/String;->getChars(II[CI)V

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MINDT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MDT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_3
    add-int v7, v3, v2

    add-int/lit8 v3, v7, 0x1

    const/4 v2, 0x0

    :goto_2
    add-int v7, v3, v2

    array-length v8, v4

    if-ge v7, v8, :cond_4

    add-int v7, v3, v2

    aget-char v7, v4, v7

    if-eq v7, v11, :cond_4

    add-int v7, v3, v2

    aget-char v7, v4, v7

    if-nez v7, :cond_6

    :cond_4
    add-int v7, v3, v2

    array-length v8, v4

    if-ge v7, v8, :cond_7

    add-int v7, v3, v2

    aget-char v0, v4, v7

    add-int v7, v3, v2

    aput-char v10, v4, v7

    :goto_3
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    add-int v8, v3, v2

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->minDT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    if-ne v0, v11, :cond_1d

    add-int v7, v3, v2

    add-int/lit8 v3, v7, 0x1

    const/4 v5, 0x0

    array-length v7, v4

    sub-int/2addr v7, v3

    new-array v5, v7, [C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v3, v8, v5, v10}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v7, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUic;->xdmUicOptionProcess(Ljava/lang/String;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :catch_0
    move-exception v1

    sget-object v7, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    iput v10, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->minDT:I

    goto :goto_4

    :cond_8
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MAXDT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    add-int v7, v3, v2

    add-int/lit8 v3, v7, 0x1

    const/4 v2, 0x0

    :goto_5
    add-int v7, v3, v2

    array-length v8, v4

    if-ge v7, v8, :cond_9

    add-int v7, v3, v2

    aget-char v7, v4, v7

    if-eq v7, v11, :cond_9

    add-int v7, v3, v2

    aget-char v7, v4, v7

    if-nez v7, :cond_a

    :cond_9
    add-int v7, v3, v2

    array-length v8, v4

    if-ge v7, v8, :cond_b

    add-int v7, v3, v2

    aget-char v0, v4, v7

    add-int v7, v3, v2

    aput-char v10, v4, v7

    :goto_6
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    add-int v8, v3, v2

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "temp :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->maxDT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v1

    sget-object v7, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    iput v10, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->maxDT:I

    goto/16 :goto_4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    :cond_c
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    const-string v8, "DR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    add-int v7, v3, v2

    add-int/lit8 v3, v7, 0x1

    const/4 v2, 0x0

    :goto_7
    add-int v7, v3, v2

    array-length v8, v4

    if-ge v7, v8, :cond_d

    add-int v7, v3, v2

    aget-char v7, v4, v7

    if-eq v7, v11, :cond_d

    add-int v7, v3, v2

    aget-char v7, v4, v7

    if-nez v7, :cond_e

    :cond_d
    add-int v7, v3, v2

    array-length v8, v4

    if-ge v7, v8, :cond_f

    add-int v7, v3, v2

    aget-char v0, v4, v7

    add-int v7, v3, v2

    aput-char v10, v4, v7

    :goto_8
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    add-int v8, v3, v2

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    invoke-static {v7, v6}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListCopyStrText(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    move-result-object v7

    iput-object v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    goto/16 :goto_4

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    goto :goto_8

    :cond_10
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MAXLEN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    add-int v7, v3, v2

    add-int/lit8 v3, v7, 0x1

    const/4 v2, 0x0

    :goto_9
    add-int v7, v3, v2

    array-length v8, v4

    if-ge v7, v8, :cond_11

    add-int v7, v3, v2

    aget-char v7, v4, v7

    if-eq v7, v11, :cond_11

    add-int v7, v3, v2

    aget-char v7, v4, v7

    if-nez v7, :cond_12

    :cond_11
    add-int v7, v3, v2

    array-length v8, v4

    if-ge v7, v8, :cond_13

    add-int v7, v3, v2

    aget-char v0, v4, v7

    add-int v7, v3, v2

    aput-char v10, v4, v7

    :goto_a
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    add-int v8, v3, v2

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->maxLen:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v1

    sget-object v7, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    iput v10, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->maxLen:I

    goto/16 :goto_4

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    goto :goto_a

    :cond_14
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    const-string v8, "IT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_18

    add-int v7, v3, v2

    add-int/lit8 v3, v7, 0x1

    const/4 v2, 0x0

    :goto_b
    add-int v7, v3, v2

    array-length v8, v4

    if-ge v7, v8, :cond_15

    add-int v7, v3, v2

    aget-char v7, v4, v7

    if-eq v7, v11, :cond_15

    add-int v7, v3, v2

    aget-char v7, v4, v7

    if-nez v7, :cond_16

    :cond_15
    add-int v7, v3, v2

    array-length v8, v4

    if-ge v7, v8, :cond_17

    add-int v7, v3, v2

    aget-char v0, v4, v7

    add-int v7, v3, v2

    aput-char v10, v4, v7

    :goto_c
    const/4 v5, 0x0

    new-array v5, v2, [C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    add-int v8, v3, v2

    invoke-virtual {v7, v3, v8, v5, v10}, Ljava/lang/String;->getChars(II[CI)V

    aget-char v7, v4, v3

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    iput v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->inputType:I

    goto/16 :goto_4

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    const/4 v0, 0x0

    goto :goto_c

    :sswitch_1
    iput v13, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->inputType:I

    goto/16 :goto_4

    :sswitch_2
    const/4 v7, 0x3

    iput v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->inputType:I

    goto/16 :goto_4

    :sswitch_3
    const/4 v7, 0x4

    iput v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->inputType:I

    goto/16 :goto_4

    :sswitch_4
    const/4 v7, 0x5

    iput v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->inputType:I

    goto/16 :goto_4

    :sswitch_5
    const/4 v7, 0x6

    iput v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->inputType:I

    goto/16 :goto_4

    :cond_18
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ET"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1c

    add-int v7, v3, v2

    add-int/lit8 v3, v7, 0x1

    const/4 v2, 0x0

    :goto_d
    add-int v7, v3, v2

    array-length v8, v4

    if-ge v7, v8, :cond_19

    add-int v7, v3, v2

    aget-char v7, v4, v7

    if-eq v7, v11, :cond_19

    add-int v7, v3, v2

    aget-char v7, v4, v7

    if-nez v7, :cond_1a

    :cond_19
    add-int v7, v3, v2

    array-length v8, v4

    if-ge v7, v8, :cond_1b

    add-int v7, v3, v2

    aget-char v0, v4, v7

    add-int v7, v3, v2

    aput-char v10, v4, v7

    :goto_e
    const/4 v5, 0x0

    new-array v5, v2, [C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    add-int v8, v3, v2

    invoke-virtual {v7, v3, v8, v5, v10}, Ljava/lang/String;->getChars(II[CI)V

    aget-char v7, v4, v3

    sparse-switch v7, :sswitch_data_1

    goto/16 :goto_4

    :sswitch_6
    iput v13, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->echoType:I

    goto/16 :goto_4

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_e

    :sswitch_7
    iput v12, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->echoType:I

    goto/16 :goto_4

    :cond_1c
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_1d
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x44 -> :sswitch_2
        0x49 -> :sswitch_5
        0x4e -> :sswitch_1
        0x50 -> :sswitch_4
        0x54 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x50 -> :sswitch_6
        0x54 -> :sswitch_7
    .end sparse-switch
.end method
