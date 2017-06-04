.class Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;
.super Ljava/lang/Object;
.source "OmcPackageInstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->loadComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    # invokes: Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->isAllUnchecked()Z
    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->access$100(Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->startInstall(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isNetworkTypeWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/common/Device;->isSimWifionly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/util/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;->newInstance()Lcom/samsung/android/app/omcagent/ui/WifiConfirmDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->startInstall(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/common/Device;->isAvailableNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/util/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/common/Device;->isSimWifionly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->installSelectedApps(I)Z

    :cond_6
    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->startInstall(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;->this$0:Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->finish()V

    goto/16 :goto_0
.end method
