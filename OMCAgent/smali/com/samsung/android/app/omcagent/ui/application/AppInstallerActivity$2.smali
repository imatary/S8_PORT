.class Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity$2;
.super Ljava/lang/Object;
.source "AppInstallerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x3

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Install Button Click"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isNetworkTypeWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/omcagent/common/Device;->isSimWifionly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/common/util/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;->newInstance()Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v2, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/common/Device;->isAvailableNetwork(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/common/util/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;

    # getter for: Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppListview:Lcom/samsung/android/app/omcagent/ui/application/AppListView;
    invoke-static {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->access$300(Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;)Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->installSelectedApps(I)Z

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/omcagent/common/Device;->isSimWifionly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;

    # getter for: Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppListview:Lcom/samsung/android/app/omcagent/ui/application/AppListView;
    invoke-static {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->access$300(Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;)Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->installSelectedApps(I)Z

    goto :goto_0
.end method
