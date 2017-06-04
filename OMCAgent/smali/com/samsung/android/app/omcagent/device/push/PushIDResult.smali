.class public Lcom/samsung/android/app/omcagent/device/push/PushIDResult;
.super Ljava/lang/Object;
.source "PushIDResult.java"


# instance fields
.field private errorCode:I

.field private errorMsg:Ljava/lang/String;

.field private isSuccess:Z

.field private pushID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->errorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getPushID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->pushID:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->isSuccess:Z

    return v0
.end method

.method public setErrorCode(I)V
    .locals 3

    iput p1, p0, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->errorCode:I

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPP Register error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->errorMsg:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GCM Register error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    return-void
.end method

.method public setPushID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->pushID:Ljava/lang/String;

    return-void
.end method

.method public setResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->isSuccess:Z

    return-void
.end method
