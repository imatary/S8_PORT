.class Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;
.super Ljava/lang/Object;
.source "OmcSetUpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->loadComponent(Ljava/util/LinkedHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "###### NEXT Button Click : INSTALL APP "

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/common/Device;->isAvailableNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/common/util/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/common/Device;->isFreeOperator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    # getter for: Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppList:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->access$000(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    # getter for: Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->access$200(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->installSelectedApps(I)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->setResult(I)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/SystemSetting;->instance:Lcom/samsung/android/app/omcagent/db/SystemSetting;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/db/SystemSetting;->setAppsNotReady(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->finish()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    # getter for: Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->access$200(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->setStateToWaiting(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    # getter for: Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->access$200(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->setStateToWaiting(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;

    const v3, 0x7f08004e

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
