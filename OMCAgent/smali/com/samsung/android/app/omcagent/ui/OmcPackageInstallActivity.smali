.class public Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;
.super Landroid/app/Activity;
.source "OmcPackageInstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$OmcDialogFragment;
    }
.end annotation


# instance fields
.field installBtn:Landroid/widget/TextView;

.field private final intentReceiver:Landroid/content/BroadcastReceiver;

.field mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

.field mAppList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/ui/application/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

.field final viewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppList:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->viewType:I

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$1;-><init>(Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->showCautionDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->isAllUnchecked()Z

    move-result v0

    return v0
.end method

.method private isAllUnchecked()Z
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private loadComponent()V
    .locals 6

    const/4 v5, 0x0

    const v1, 0x7f0e0005

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppList:Ljava/util/LinkedHashMap;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->setup(Landroid/content/Context;Ljava/util/LinkedHashMap;I)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->getAppAdapter()Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    :goto_0
    const v1, 0x7f0e003c

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$2;-><init>(Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0e0006

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->installBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->installBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$3;-><init>(Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showCautionDialog()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "OmcCautionDialog"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-static {}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$OmcDialogFragment;->newInstance()Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity$OmcDialogFragment;

    move-result-object v2

    const-string v4, "OmcCautionDialog"

    invoke-virtual {v2, v1, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "onCreate"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const v4, 0x7f050001

    const/high16 v5, 0x7f050000

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->overridePendingTransition(II)V

    const v4, 0x7f040003

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/samsung/android/common/util/GeneralUtils;->applyHideIndicatorOnLandscape(Landroid/content/Context;ILandroid/view/Window;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->setIsAppInstalling(Landroid/content/Context;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->readDownloadableResourceInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    :cond_0
    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Downloadable resource Info does not exist"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4, v7, v0, v8, v6}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->loadApps(Landroid/content/Context;ZLjava/util/LinkedHashMap;Ljava/util/LinkedHashMap;I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4, v6, v1, v8, v6}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->loadApps(Landroid/content/Context;ZLjava/util/LinkedHashMap;Ljava/util/LinkedHashMap;I)V

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->loadComponent()V

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->disableSelectAll()V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->getAppAdapter()Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    :cond_3
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.samsung.omcagent.intent.APP_ICON_UPDATE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    invoke-static {v5, v4, v6}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->createAppItemWithResourceInfo(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;I)Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/OmcPackageInstallActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
