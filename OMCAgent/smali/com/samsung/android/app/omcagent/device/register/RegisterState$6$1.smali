.class Lcom/samsung/android/app/omcagent/device/register/RegisterState$6$1;
.super Ljava/lang/Object;
.source "RegisterState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/device/push/PushIDResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/device/register/RegisterState$6;->run(Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;)Lcom/samsung/android/app/omcagent/device/register/RegisterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/device/register/RegisterState$6;

.field final synthetic val$return_:Lcom/samsung/android/common/util/ReturnHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/device/register/RegisterState$6;Lcom/samsung/android/common/util/ReturnHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$6$1;->this$0:Lcom/samsung/android/app/omcagent/device/register/RegisterState$6;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$6$1;->val$return_:Lcom/samsung/android/common/util/ReturnHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushResponse(Lcom/samsung/android/app/omcagent/device/push/PushIDResult;)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Receive result: success in GCM requestID"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gcm id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->getPushID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->H(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$6$1;->val$return_:Lcom/samsung/android/common/util/ReturnHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/common/util/ReturnHolder;->with(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/app/omcagent/device/push/PushID;->instance:Lcom/samsung/android/app/omcagent/device/push/PushID;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/omcagent/device/push/PushID;->setPushReceiver(Lcom/samsung/android/app/omcagent/device/push/PushIDResultReceiver;)V

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive result: fail in GCM error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/omcagent/device/push/PushID;->instance:Lcom/samsung/android/app/omcagent/device/push/PushID;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/omcagent/device/push/PushID;->setPushReceiver(Lcom/samsung/android/app/omcagent/device/push/PushIDResultReceiver;)V

    throw v0
.end method
