.class public Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;
.super Landroid/app/Activity;
.source "GetMoreAppsActivity.java"


# instance fields
.field private installBtn:Landroid/widget/TextView;

.field private final intentReceiver:Landroid/content/BroadcastReceiver;

.field private mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

.field private mAppList:Ljava/util/LinkedHashMap;
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

.field private mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

.field private mInstallBtnListener:Landroid/view/View$OnClickListener;

.field private final viewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mAppList:Ljava/util/LinkedHashMap;

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->viewType:I

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$1;-><init>(Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity$2;-><init>(Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mInstallBtnListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mAppList:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;)Lcom/samsung/android/app/omcagent/ui/application/AppListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->isAllUnchecked()Z

    move-result v0

    return v0
.end method

.method private isAllUnchecked()Z
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

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

.method private loadView()V
    .locals 4

    const v0, 0x7f0e0005

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mAppList:Ljava/util/LinkedHashMap;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->setup(Landroid/content/Context;Ljava/util/LinkedHashMap;I)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->getAppAdapter()Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->installBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->installBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mInstallBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f050001

    const/high16 v6, 0x7f050000

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->overridePendingTransition(II)V

    const v5, 0x7f040002

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->setContentView(I)V

    const v5, 0x7f080059

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/samsung/android/common/util/GeneralUtils;->applyHideIndicatorOnLandscape(Landroid/content/Context;ILandroid/view/Window;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->setIsAppInstalling(Landroid/content/Context;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->readDownloadableResourceInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Downloadable resource Info does not exist"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8, v1, v9, v7}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->loadApps(Landroid/content/Context;ZLjava/util/LinkedHashMap;Ljava/util/LinkedHashMap;I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6, v2, v9, v7}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->loadApps(Landroid/content/Context;ZLjava/util/LinkedHashMap;Ljava/util/LinkedHashMap;I)V

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-static {v5}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "No app item is loaded"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x66

    invoke-static {v5, v6}, Lcom/samsung/android/app/omcagent/ui/OmcNotificationManager;->clearNotifictaion(Landroid/content/Context;I)V

    sget-object v5, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/db/TaskPref;->getOMCState(Landroid/content/Context;)I

    move-result v0

    const/16 v5, 0x64

    if-ne v5, v0, :cond_2

    sget-object v5, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->startInstall(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->finish()V

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    invoke-static {v6, v5, v7}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->createAppItemWithResourceInfo(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;I)Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->loadView()V

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->disableSelectAll()V

    :cond_5
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/ui/GetMoreAppsActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.samsung.omcagent.intent.APP_ICON_UPDATE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_1
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
