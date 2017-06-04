.class final Lcom/samsung/android/app/omcagent/device/push/PushState$1;
.super Ljava/lang/Object;
.source "PushState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/device/push/PushState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/device/push/PushState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/samsung/android/app/omcagent/device/push/PushStateContext;)Lcom/samsung/android/app/omcagent/device/push/PushState;
    .locals 4

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Push State: Check push message to process push"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->getContent()Lcom/samsung/android/app/omcagent/device/push/PushContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/device/push/PushContent;->getOperationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not support push mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/device/push/PushState$1;->PUSH_FINISH:Lcom/samsung/android/app/omcagent/device/push/PushState;

    :goto_0
    return-object v1

    :pswitch_0
    sget-object v1, Lcom/samsung/android/app/omcagent/device/push/PushState$1;->PROCESS_OMC_UPDATE:Lcom/samsung/android/app/omcagent/device/push/PushState;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/samsung/android/app/omcagent/device/push/PushState$1;->PROCESS_CONFIG_UPDATE:Lcom/samsung/android/app/omcagent/device/push/PushState;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ANALYZE_PUSH_MESSAGE"

    return-object v0
.end method
