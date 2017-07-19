.class Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;
.super Landroid/os/Handler;
.source "InstallAppUIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/InstallAppUIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/update/InstallAppUIService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/omcagent/update/InstallAppUIService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;->this$0:Lcom/samsung/android/app/omcagent/update/InstallAppUIService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v5, p1, Landroid/os/Message;->what:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/content/Intent;

    if-nez v7, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "intent is null!!"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;->this$0:Lcom/samsung/android/app/omcagent/update/InstallAppUIService;

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->stopSelf(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "position"

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "package"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Package name is empty!!"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;->this$0:Lcom/samsung/android/app/omcagent/update/InstallAppUIService;

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->stopSelf(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;->this$0:Lcom/samsung/android/app/omcagent/update/InstallAppUIService;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v6

    if-nez v6, :cond_2

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "AppInfo is null!!"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;->this$0:Lcom/samsung/android/app/omcagent/update/InstallAppUIService;

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->stopSelf(I)V

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;->this$0:Lcom/samsung/android/app/omcagent/update/InstallAppUIService;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    new-instance v0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler$1;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;->this$0:Lcom/samsung/android/app/omcagent/update/InstallAppUIService;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler$1;-><init>(Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;Landroid/content/Context;Ljava/lang/String;II)V

    invoke-virtual {v8, v9, v3, v0}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->installPackage(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Fail to call install package"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;->this$0:Lcom/samsung/android/app/omcagent/update/InstallAppUIService;

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->stopSelf(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;->this$0:Lcom/samsung/android/app/omcagent/update/InstallAppUIService;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;->this$0:Lcom/samsung/android/app/omcagent/update/InstallAppUIService;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->installing(Landroid/content/Context;Landroid/app/Service;)V

    goto :goto_0
.end method
