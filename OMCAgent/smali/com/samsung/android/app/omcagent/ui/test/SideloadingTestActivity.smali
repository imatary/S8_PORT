.class public Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;
.super Landroid/app/Activity;
.source "SideloadingTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;
    }
.end annotation


# instance fields
.field protected alertDialog:Landroid/app/AlertDialog;

.field private installBtn:Landroid/widget/Button;

.field private final intentReceiver:Landroid/content/BroadcastReceiver;

.field private progress:Landroid/widget/ProgressBar;

.field private stateText:Landroid/widget/TextView;

.field private targetOmcPackagePath:Ljava/lang/String;

.field private zipFileList:[Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$1;-><init>(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->updateUIState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->showInformation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->updateUIState2(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->onInstallButtonClickEvent(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->targetOmcPackagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->targetOmcPackagePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;)[Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->zipFileList:[Ljava/io/File;

    return-object v0
.end method

.method private getErrorMessage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const-string v1, "result"

    const/16 v2, 0x258

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager$RESULT;->getStringID(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadComponent()V
    .locals 2

    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->installBtn:Landroid/widget/Button;

    const v0, 0x7f0e0013

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->stateText:Landroid/widget/TextView;

    const v0, 0x7f0e0014

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->progress:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->installBtn:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$2;-><init>(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onInstallButtonClickEvent(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Install Button Click"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->startSideloading(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->instance:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->updateUI(Landroid/content/Context;I)V

    return-void
.end method

.method private showInformation(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->installBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private showProgress(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->installBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private updateUIState(Landroid/content/Intent;)V
    .locals 3

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->showFileList()V

    goto :goto_0

    :sswitch_1
    const v1, 0x7f0800b2

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->showProgress(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const v1, 0x7f0800b5

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->showProgress(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const v1, 0x7f0800b3

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->showProgress(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const v1, 0x7f0800c1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->showProgress(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->getErrorMessage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->showInformation(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x32 -> :sswitch_2
        0x64 -> :sswitch_3
        0x96 -> :sswitch_4
        0x190 -> :sswitch_5
    .end sparse-switch
.end method

.method private updateUIState2(Landroid/content/Intent;)V
    .locals 3

    const-string v1, "RESULT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_1

    :cond_0
    const v1, 0x7f0800c0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->showInformation(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0800bf

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->showInformation(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public findZipFiles()[Ljava/io/File;
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Can not read External storage"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v3, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$3;-><init>(Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v3, v1

    if-nez v3, :cond_0

    :cond_2
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Can not find zip files"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "onCreate"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const v1, 0x7f050001

    const/high16 v2, 0x7f050000

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->overridePendingTransition(II)V

    const v1, 0x7f040005

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->loadComponent()V

    const-string v0, "com.samsung.sec.android.application.csc"

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.omcagent.intent.SIDELOADING_UI_STATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.OMCUPDATE_MODEMFINISH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2, v0, v5}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.OMCUPDATE_FINISH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2, v0, v5}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public showFileList()V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->findZipFiles()[Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->zipFileList:[Ljava/io/File;

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->zipFileList:[Ljava/io/File;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->zipFileList:[Ljava/io/File;

    array-length v6, v6

    if-nez v6, :cond_1

    :cond_0
    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "OMC Test package is not found."

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/16 v6, 0x194

    invoke-static {v6}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager$RESULT;->getStringID(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->showInformation(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->zipFileList:[Ljava/io/File;

    array-length v6, v6

    new-array v5, v6, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->zipFileList:[Ljava/io/File;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->zipFileList:[Ljava/io/File;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->zipFileList:[Ljava/io/File;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "fota_countrylist_dialog"

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    const v6, 0x7f0800b7

    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;->newInstance(I[Ljava/lang/String;I)Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity$MyAlertDialogFragment;

    move-result-object v3

    const/4 v6, 0x0

    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/samsung/android/app/omcagent/ui/test/SideloadingTestActivity;->targetOmcPackagePath:Ljava/lang/String;

    const-string v6, "omc_configuration_files_dialog"

    invoke-virtual {v3, v1, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v6, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
