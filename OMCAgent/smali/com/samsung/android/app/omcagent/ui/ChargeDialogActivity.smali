.class public Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;
.super Landroid/app/Activity;
.source "ChargeDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showDialog()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "OmcChargeDialog"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-static {}, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment;->newInstance()Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity$OmcDialogFragment;

    move-result-object v2

    const-string v4, "OmcChargeDialog"

    invoke-virtual {v2, v1, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/samsung/android/common/util/GeneralUtils;->requestSystemKeyEvent(IZLandroid/content/ComponentName;)Z

    const/16 v2, 0xbb

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/samsung/android/common/util/GeneralUtils;->requestSystemKeyEvent(IZLandroid/content/ComponentName;)Z

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;->showDialog()V

    return-void
.end method
