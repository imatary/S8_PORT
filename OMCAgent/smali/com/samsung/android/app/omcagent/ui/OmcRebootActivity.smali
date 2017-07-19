.class public Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;
.super Landroid/app/Activity;
.source "OmcRebootActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showRebootDialog()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "OmcRebootDialog"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-static {}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;->newInstance()Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity$OmcDialogFragment;

    move-result-object v2

    const-string v4, "OmcRebootDialog"

    invoke-virtual {v2, v1, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v4, v6, v5}, Lcom/samsung/android/common/util/GeneralUtils;->requestSystemKeyEvent(IZLandroid/content/ComponentName;)Z

    const/16 v4, 0xbb

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v4, v6, v5}, Lcom/samsung/android/common/util/GeneralUtils;->requestSystemKeyEvent(IZLandroid/content/ComponentName;)Z

    const-wide/16 v2, 0x0

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v4, p0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isForceInstall(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v4, 0x14000020

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;->startActivity(Landroid/content/Intent;)V

    const-wide/16 v2, 0x2710

    const-string v4, "persist.sys.omc_install"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/omcagent/update/omc/RebootDevice;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/omcagent/update/omc/RebootDevice;-><init>(Landroid/content/Context;)V

    new-array v4, v6, [Ljava/lang/Long;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/omcagent/update/omc/RebootDevice;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;->showRebootDialog()V

    goto :goto_0
.end method
