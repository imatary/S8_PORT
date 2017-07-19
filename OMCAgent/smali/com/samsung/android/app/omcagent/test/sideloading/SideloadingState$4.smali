.class final Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$4;
.super Ljava/lang/Object;
.source "SideloadingState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;
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
.method public run(Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;)Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;
    .locals 4

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "SideLoading State: Start to packages & resources installation"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->instance:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x96

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->updateUI(Landroid/content/Context;I)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->install(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.OMCUPDATE_MODEMSTART"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$4;->FINISH_SIDELOADING:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE_CONFIGURATIONS"

    return-object v0
.end method
