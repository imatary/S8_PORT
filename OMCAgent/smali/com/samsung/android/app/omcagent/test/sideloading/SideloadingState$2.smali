.class final Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$2;
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

    const-string v1, "SideLoading State: Install local apps"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->instance:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->updateUI(Landroid/content/Context;I)V

    sget-object v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$2;->COPY_CONFIGURATIONS:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "INSTALL_APPS"

    return-object v0
.end method
