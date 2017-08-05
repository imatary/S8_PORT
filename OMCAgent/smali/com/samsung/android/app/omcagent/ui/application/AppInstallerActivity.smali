.class public Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;
.super Landroid/app/Activity;
.source "AppInstallerActivity.java"


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

.field private mAppListview:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

.field private mInstallBtnListener:Landroid/view/View$OnClickListener;

.field private final viewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppList:Ljava/util/LinkedHashMap;

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->viewType:I

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity$1;-><init>(Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity$2;-><init>(Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mInstallBtnListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppList:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->loadNoItemView()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->loadView()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;)Lcom/samsung/android/app/omcagent/ui/application/AppListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppListview:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->loadDescription()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;)Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->updateInstallBtn()V

    return-void
.end method

.method private isInstalling()Z
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-nez v2, :cond_1

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "NotificationManager is empty"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v2}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_0

    aget-object v5, v3, v0

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    const/16 v5, 0xd2

    if-eq v5, v1, :cond_2

    const/16 v5, 0xdc

    if-ne v5, v1, :cond_3

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private loadDescription()V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0e0003

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0e0004

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isAppInstallStart(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->isAllInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private loadNoItemView()V
    .locals 12

    const v7, 0x7f0e0003

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v7, 0x7f0e0007

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v7, 0x7f0e0008

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v7, v5, Landroid/graphics/Point;->x:I

    int-to-double v8, v7

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v8, v10

    double-to-int v6, v8

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private loadView()V
    .locals 7

    const/4 v6, 0x3

    const v3, 0x7f0e0003

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v3, 0x7f0e0007

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v3, 0x7f0e0005

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppListview:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppListview:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppListview:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->setup(Landroid/content/Context;Ljava/util/LinkedHashMap;I)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v6}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->loadApps(Landroid/content/Context;ZLjava/util/LinkedHashMap;Ljava/util/LinkedHashMap;I)V

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppListview:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->disableSelectAll()V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppListview:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->getAppAdapter()Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    :cond_1
    const v3, 0x7f0e0006

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->installBtn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->installBtn:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mInstallBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setUpShortCut()V
    .locals 6

    const-string v0, "com.samsung.android.omcagent.app.ui.AppInstallerActivity"

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.NAME"

    const v5, 0x7f080059

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x7f030000

    invoke-static {p0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setupActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method private updateInstallBtn()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->isAllInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->installBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->installBtn:Landroid/widget/TextView;

    const v1, 0x4d252525    # 1.73167184E8f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->installBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->installBtn:Landroid/widget/TextView;

    const v1, -0x33dadadb    # -4.3291796E7f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Create shortcut"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->setUpShortCut()V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->setupActionBar()V

    const v4, 0x7f050001

    const/high16 v5, 0x7f050000

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->overridePendingTransition(II)V

    const/high16 v4, 0x7f040000

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->setContentView(I)V

    const v4, 0x7f080028

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/samsung/android/common/util/GeneralUtils;->applyHideIndicatorOnLandscape(Landroid/content/Context;ILandroid/view/Window;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/samsung/android/app/omcagent/update/app/BadgeManager;->setBadgeCount(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->isInstalling()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->isInstalling(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateStateToReady(Landroid/content/Context;)I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->setIsAppInstalling(Landroid/content/Context;)V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5, v3, v1, v7}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->loadApps(Landroid/content/Context;ZLjava/util/LinkedHashMap;Ljava/util/LinkedHashMap;I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v2, v1, v7}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->loadApps(Landroid/content/Context;ZLjava/util/LinkedHashMap;Ljava/util/LinkedHashMap;I)V

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "No app item is loaded"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->loadNoItemView()V

    :goto_1
    return-void

    :cond_1
    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "2"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->isInstalling(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "3"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->removeInstall(Landroid/content/Context;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "4"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->loadView()V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.samsung.omcagent.intent.APP_STATE_PACKAGENAME"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.samsung.omcagent.intent.APP_DOWNLOADING"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.samsung.omcagent.intent.APP_ICON_UPDATE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.samsung.omcagent.intent.APP_REFRESH"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.samsung.omcagent.intent.APP_RESET"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.samsung.omcagent.intent.APP_INSTALLED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->mAppListview:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->updateAppItemStateAndAppItemList(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->setIsAppInstalling(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->updateInstallBtn()V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->loadDescription()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/BadgeManager;->setBadgeCount(Landroid/content/Context;I)V

    return-void
.end method
