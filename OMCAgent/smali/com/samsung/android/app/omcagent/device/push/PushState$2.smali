.class final Lcom/samsung/android/app/omcagent/device/push/PushState$2;
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

    const-string v2, "Push State: [OMC Update] start server init"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    const-string v1, "msg"

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->getContent()Lcom/samsung/android/app/omcagent/device/push/PushContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/device/push/PushContent;->getDecodeMessageString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/ProcessOMC;->setStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.omcagent.intent.PUSH_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/device/push/PushState$2;->PUSH_FINISH:Lcom/samsung/android/app/omcagent/device/push/PushState;

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PROCESS_OMC_UPDATE"

    return-object v0
.end method
