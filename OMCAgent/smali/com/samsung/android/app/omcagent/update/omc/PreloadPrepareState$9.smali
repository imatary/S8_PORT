.class final Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$9;
.super Ljava/lang/Object;
.source "PreloadPrepareState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;
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
.method public run(Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;)Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;
    .locals 4

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Prepare State: Fail to Verify package installation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/TaskPref;->setOMCState(Landroid/content/Context;I)V

    new-instance v0, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.omcagent.intent.INSTALL_PRELOAD_PACKAGE_ERROR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$9;->FINISH_PACKAGE_PREPARE:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VERIFY_FAIL"

    return-object v0
.end method
