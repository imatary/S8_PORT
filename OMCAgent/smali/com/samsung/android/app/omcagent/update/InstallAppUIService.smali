.class public Lcom/samsung/android/app/omcagent/update/InstallAppUIService;
.super Landroid/app/Service;
.source "InstallAppUIService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;
    }
.end annotation


# instance fields
.field private volatile serviceHandler:Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;

.field private volatile serviceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->serviceHandler:Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "onCreate"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Service[OMC_InstallAppService]"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->serviceLooper:Landroid/os/Looper;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->serviceLooper:Landroid/os/Looper;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->serviceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;-><init>(Lcom/samsung/android/app/omcagent/update/InstallAppUIService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->serviceHandler:Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Thread Looper is null"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 v2, 0x2

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "onStartCommand"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Intent is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->stopSelf(I)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->serviceHandler:Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Handler is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->serviceHandler:Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;

    invoke-virtual {v0, p3, p1}, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
