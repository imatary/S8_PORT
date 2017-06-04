.class final Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$3;
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
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "SideLoading State: Copy local omc packages"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->instance:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->updateUI(Landroid/content/Context;I)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getSourceOMCPackagePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->copyPackages(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Fail to copy packages"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->instance:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1fe

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->updateUIFailed(Landroid/content/Context;I)V

    sget-object v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$3;->FINISH_SIDELOADING:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$3;->UPDATE_CONFIGURATIONS:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "COPY_CONFIGURATIONS"

    return-object v0
.end method
