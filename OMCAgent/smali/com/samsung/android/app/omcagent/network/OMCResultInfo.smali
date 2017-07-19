.class public Lcom/samsung/android/app/omcagent/network/OMCResultInfo;
.super Lcom/samsung/android/app/omcagent/network/ResultInfo;
.source "OMCResultInfo.java"


# static fields
.field private static final URL_OMC_REPORT_RESULT:Ljava/lang/String; = "/v4/api/device/reportConfigResult"

.field public static instance:Lcom/samsung/android/app/omcagent/network/OMCResultInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->instance:Lcom/samsung/android/app/omcagent/network/OMCResultInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/network/ResultInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getUriInterface()Ljava/lang/String;
    .locals 1

    const-string v0, "/v4/api/device/reportConfigResult"

    return-object v0
.end method

.method public isVaild()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->processingId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->resultCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readResultInfo(Landroid/content/Context;)V
    .locals 2

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getReportUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->setBaseUrl(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getUpdateResultCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getDownloadResultCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->setResultCode(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getServiceTransactionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->setProcessingId(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getUpdateVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->setUpdateVersion(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nurl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "processingId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->processingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "package resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \n contentType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
