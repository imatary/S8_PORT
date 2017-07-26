.class public Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;
.super Landroid/app/Activity;
.source "OmcSetUpActivity.java"


# static fields
.field public static final RESULT_SKIP_EX:I = 0x3f2


# instance fields
.field private arrowAni:Landroid/view/animation/AnimationSet;

.field private bottomBtnArea:Landroid/widget/RelativeLayout;

.field private fadeIn:Landroid/view/animation/Animation$AnimationListener;

.field private fadeOut:Landroid/view/animation/Animation$AnimationListener;

.field private install_desc:Landroid/widget/TextView;

.field private final intentReceiver:Landroid/content/BroadcastReceiver;

.field private isNoItemList:Ljava/lang/Boolean;

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

.field private nextBtn_Text:Landroid/widget/TextView;

.field private title_text:Landroid/widget/TextView;

.field private toast:Landroid/widget/Toast;

.field private final viewType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->isNoItemList:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppList:Ljava/util/LinkedHashMap;

    iput v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->viewType:I

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$1;-><init>(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$5;-><init>(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->fadeIn:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$6;-><init>(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->fadeOut:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppList:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)Lcom/samsung/android/app/omcagent/ui/application/AppListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->title_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->startInitAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->startArrowFadeInAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->startArrowDownAnimation()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->startArrowFadeOutAnimation()V

    return-void
.end method

.method private isNetworkError(Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/application/AppItem;)Z
    .locals 6

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getResult()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x194 -> :sswitch_0
        0x1f5 -> :sswitch_0
        0x4e20 -> :sswitch_0
    .end sparse-switch
.end method

.method private loadComponent(Ljava/util/LinkedHashMap;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/ui/application/AppItem;",
            ">;)V"
        }
    .end annotation

    const/4 v13, 0x0

    const/4 v12, 0x0

    const v9, 0x7f0e0043

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v9, 0x7f0e0041

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v9, 0x7f0e003e

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v9, 0x7f0e0042

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->nextBtn_Text:Landroid/widget/TextView;

    const v9, 0x7f0e0005

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    iput-object v9, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-static {v9}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {v9, v12}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->setVisibility(I)V

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v10, v11, v12, p1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->setup(Landroid/content/Context;Ljava/util/LinkedHashMap;ILjava/util/LinkedHashMap;)V

    :goto_0
    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->getAppAdapter()Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    :goto_1
    const v9, 0x7f0e000f

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->title_text:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->title_text:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setSelected(Z)V

    const v9, 0x7f0e003d

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->bottomBtnArea:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->bottomBtnArea:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a001a

    invoke-virtual {v10, v11, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const v9, 0x7f0e0010

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v8, 0x1006

    invoke-virtual {v2, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->nextBtn_Text:Landroid/widget/TextView;

    const v10, 0x7f080034

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->nextBtn_Text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a001d

    invoke-virtual {v10, v11, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/high16 v9, -0x1000000

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a001b

    invoke-virtual {v10, v11, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    invoke-direct {v1, v9, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->nextBtn_Text:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->nextBtn_Text:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080077

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v9, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$2;-><init>(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$3;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$3;-><init>(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080068

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isFree(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080066

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "body : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const v9, 0x7f0e0044

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->setup(Landroid/content/Context;Ljava/util/LinkedHashMap;I)V

    goto/16 :goto_0

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private resetAnimation()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->title_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity$4;-><init>(Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private startArrowDownAnimation()V
    .locals 4

    const v2, 0x7f0e000e

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->arrowAni:Landroid/view/animation/AnimationSet;

    const v2, 0x7f050004

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->arrowAni:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->arrowAni:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startArrowFadeInAnimation()V
    .locals 3

    const v2, 0x7f0e000d

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v2, 0x7f050005

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->fadeIn:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startArrowFadeOutAnimation()V
    .locals 3

    const v2, 0x7f0e000d

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v2, 0x7f050006

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->fadeOut:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startInitAnimation()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->title_text:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->title_text:Landroid/widget/TextView;

    const-wide/16 v2, 0x258

    const-wide/16 v4, 0x190

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper;->animTitleFromRight(Landroid/view/View;JJ)V

    return-void
.end method

.method private startWifiSettingActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x30800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "wifiSettingsAppear"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "onCreate"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f050001

    const/high16 v6, 0x7f050000

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->overridePendingTransition(II)V

    const v5, 0x7f040004

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/common/util/GeneralUtils;->applyTransparencyIndicator(Landroid/view/Window;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->setIsAppInstalling(Landroid/content/Context;)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v5, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->readDownloadableResourceInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    :cond_0
    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Downloadable resource Info does not exist"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5, v7, v1, v9, v7}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->loadApps(Landroid/content/Context;ZLjava/util/LinkedHashMap;Ljava/util/LinkedHashMap;I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5, v8, v2, v9, v7}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->loadApps(Landroid/content/Context;ZLjava/util/LinkedHashMap;Ljava/util/LinkedHashMap;I)V

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->createAppItemWithEssentialContents(Landroid/content/Context;I)Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-static {v5}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->isNoItemList:Ljava/lang/Boolean;

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Fail to read Item List"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/db/SystemSetting;->instance:Lcom/samsung/android/app/omcagent/db/SystemSetting;

    invoke-virtual {v5, p0}, Lcom/samsung/android/app/omcagent/db/SystemSetting;->setAppsNotReady(Landroid/content/Context;)Z

    const/16 v5, 0x3f2

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->finish()V

    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->loadComponent(Ljava/util/LinkedHashMap;)V

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-static {v5}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->disableSelectAll()V

    :cond_4
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.samsung.omcagent.intent.APP_ICON_UPDATE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.samsung.omcagent.intent.APP_RESET"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->resetAnimation()V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    invoke-static {v6, v5, v7}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->createAppItemWithResourceInfo(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;I)Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "onResume"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppList:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isExistApp(Ljava/util/LinkedHashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->mAppListView:Lcom/samsung/android/app/omcagent/ui/application/AppListView;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->updateSelectAllCheckBox()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->toast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateContentSizeText()Ljava/lang/String;
    .locals 14

    sget-object v9, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {v9, p0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->readDownloadableResourceInfoListForSetupWizard(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    sget-object v9, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v9, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAvailableMandatoryAppInfoListForSetupWizard(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const v9, 0x7f080020

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "0"

    const v9, 0x7f080049

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getContentSize()J

    move-result-wide v10

    add-long/2addr v4, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getContentSize()J

    move-result-wide v10

    add-long/2addr v4, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lSize: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-lez v9, :cond_3

    const-wide/32 v10, 0x100000

    cmp-long v9, v4, v10

    if-gez v9, :cond_2

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v12, 0x400

    div-long v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    return-object v6

    :cond_2
    const v9, 0x7f08004b

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/omcagent/ui/OmcSetUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/32 v12, 0x100000

    div-long v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3
.end method
