.class public final Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;
.super Ljava/lang/Object;
.source "SlinkFileTransferUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SlinkFileTransferSessionInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;
    }
.end annotation


# instance fields
.field private controlDeviceName:Ljava/lang/String;

.field private currentFileIndex:I

.field private currentFileName:Ljava/lang/String;

.field private percent:I

.field private sentBytes:J

.field private sessionId:Ljava/lang/String;

.field private sourceDeviceName:Ljava/lang/String;

.field private state:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

.field private targetDeviceName:Ljava/lang/String;

.field private totalBytes:J

.field private totalNumberOfFiles:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sessionInfo must be non-empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->sessionId:Ljava/lang/String;

    const-string/jumbo v3, "currentBytesSent"

    const-wide/16 v4, -0x64

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->sentBytes:J

    const-string/jumbo v3, "totalBytesSent"

    const-wide/16 v4, -0x64

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->totalBytes:J

    const-string/jumbo v3, "controllerName"

    const-string/jumbo v4, "NULL"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->controlDeviceName:Ljava/lang/String;

    const-string/jumbo v3, "sourceName"

    const-string/jumbo v4, "NULL"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->sourceDeviceName:Ljava/lang/String;

    const-string/jumbo v3, "targetName"

    const-string/jumbo v4, "NULL"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->targetDeviceName:Ljava/lang/String;

    const-string/jumbo v3, "status"

    const-string/jumbo v4, "ERROR"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->state:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    const-string/jumbo v3, "currentFileName"

    const-string/jumbo v4, "NULL"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->currentFileName:Ljava/lang/String;

    const-string/jumbo v3, "currentFileIndex"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->currentFileIndex:I

    const-string/jumbo v3, "numberOfFiles"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->totalNumberOfFiles:I

    iget-wide v4, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->totalBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->percent:I

    return-void

    :cond_1
    iget-wide v4, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->sentBytes:J

    iget-wide v6, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->totalBytes:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    const/16 v1, 0x64

    goto :goto_0

    :cond_2
    iget-wide v4, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->sentBytes:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->totalBytes:J

    div-long/2addr v4, v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sessionInfo must be json format"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getControlDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->controlDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentFileIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->currentFileIndex:I

    return v0
.end method

.method public getCurrentFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->currentFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileTransferState()Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->state:Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo$SlinkFileTransferState;

    return-object v0
.end method

.method public getPercent()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->percent:I

    return v0
.end method

.method public getSentBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->sentBytes:J

    return-wide v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->sourceDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->targetDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->totalBytes:J

    return-wide v0
.end method

.method public getTotalNumberOfFiles()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils$SlinkFileTransferSessionInfo;->totalNumberOfFiles:I

    return v0
.end method
