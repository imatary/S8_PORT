.class Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;
.super Ljava/lang/Object;
.source "GetMoreAppsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Install Button Click"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->access$000(Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->access$200(Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->startInstall(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isNetworkTypeWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/common/Device;->isSimWifionly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/util/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;->newInstance()Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->startInstall(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/common/Device;->isAvailableNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/util/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/common/Device;->isSimWifionly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->access$100(Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;)Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->installSelectedApps(I)Z

    :cond_6
    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->startInstall(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;->this$0:Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->finish()V

    goto/16 :goto_0
.end method
