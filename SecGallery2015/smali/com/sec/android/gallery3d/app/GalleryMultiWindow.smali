.class public Lcom/sec/android/gallery3d/app/GalleryMultiWindow;
.super Ljava/lang/Object;
.source "GalleryMultiWindow.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;
    }
.end annotation


# static fields
.field private static final FEATURE_USE_MULTIWINDOW:Z

.field private static final SPLIT_MENU_CLOSE_ID:I = 0x7d1

.field private static final SPLIT_MENU_SPLIT_ID:I = 0x3e9

.field private static final SPLIT_MENU_SWITCH_ID:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "GalleryMultiWindow"

.field private static final TYPE_GROUP_NONE:I = 0x0

.field private static final TYPE_GROUP_SPLIT:I = 0x1

.field private static final TYPE_MULTI_NONE:I = -0x1

.field private static final TYPE_MULTI_PINUP:I = 0x1

.field private static final TYPE_MULTI_SPLIT:I

.field private static final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isSelectionMode:Z

.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mDropDownReloadNeeded:Z

.field private mIsCheckWindowSize:Z

.field private final mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiWindowActivity:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

.field private mMultiWindowMode:I

.field private mMultiWindowModeChangeListener:Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;

.field private final mMultiWindowSize:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->FEATURE_USE_MULTIWINDOW:Z

    new-instance v0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$3;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$3;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mDropDownReloadNeeded:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowMode:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowSize:Landroid/graphics/Point;

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mIsCheckWindowSize:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMenuItems:Ljava/util/List;

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowActivity:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    iput v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowMode:I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->registerLayoutListener(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->isSelectionMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->isSelectionMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->isPickMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->isMultiWindow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mDropDownReloadNeeded:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mDropDownReloadNeeded:Z

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->FEATURE_USE_MULTIWINDOW:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowModeChangeListener:Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->setMultiWindowMode()V

    return-void
.end method

.method private finishGallery()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->finishAllViewState()V

    return-void
.end method

.method private isMultiWindow()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v0

    return v0
.end method

.method private isPickMode()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeExtras(Z)Landroid/content/Intent;
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;->FREE_STYLE:I

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowActivity:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->getZoneInfo()I

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowActivity:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    invoke-interface {v1, v2, v0, v2}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->makeMultiWindowIntent(Landroid/content/Intent;ILandroid/graphics/Rect;)V

    return-object v2
.end method

.method private registerLayoutListener(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$1;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$1;-><init>(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private setMultiWindowMode()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v2, "REFRESH_LAYOUT"

    invoke-virtual {v0, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->isPickMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v2, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->updateTabletPickerMode(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mIsCheckWindowSize:Z

    return-void
.end method

.method private startActivity(Landroid/content/ComponentName;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowActivity:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    invoke-interface {v3}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->makeExtras(Z)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "GalleryMultiWindow"

    const-string/jumbo v4, "Activity Not Found !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowActivity:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    return-object v0
.end method

.method public getMultiWindowRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowActivity:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget v10, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowMode:I

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "android.intent.category.MULTIWINDOW_LAUNCHER"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v10, 0x80

    invoke-virtual {v4, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v10, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v7, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v7, p0, v10, v4}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;-><init>(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;Landroid/content/pm/ComponentInfo;Landroid/content/pm/PackageManager;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget-object v10, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mComparator:Ljava/util/Comparator;

    invoke-static {v1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v10, 0x3e9

    const v11, 0x7f0a0426

    invoke-interface {p1, v13, v10, v12, v11}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v8

    if-eqz v8, :cond_4

    const v10, 0x7f020223

    invoke-interface {v8, v10}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    invoke-interface {v8}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    :cond_4
    iget-object v10, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    iget-object v10, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMenuItems:Ljava/util/List;

    new-instance v11, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;

    invoke-direct {v11, p0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;-><init>(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMenuItems:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v8, :cond_5

    const/4 v0, 0x0

    :goto_2
    iget-object v10, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_5

    add-int/lit16 v11, v0, 0x3eb

    iget-object v10, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMenuItems:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v13, v11, v12, v10}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit16 v10, v0, 0x3eb

    invoke-interface {v8, v10}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMenuItems:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/16 v10, 0x7d1

    const v11, 0x7f0a0425

    invoke-interface {p1, v12, v10, v12, v11}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v6

    if-eqz v6, :cond_0

    const v10, 0x7f020224

    invoke-interface {v6, v10}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    invoke-interface {v6}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/16 v6, 0x7d1

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowMode:I

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v6, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->finishGallery()V

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    if-ge v0, v6, :cond_0

    const/16 v5, 0x3eb

    if-lt v0, v5, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    add-int/lit16 v1, v5, -0x3eb

    if-ltz v1, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMenuItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_4

    :cond_3
    const-string/jumbo v5, "GalleryMultiWindow"

    const-string/jumbo v6, "indexing item is not available"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMenuItems:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->getCompName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v3}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;->access$800(Lcom/sec/android/gallery3d/app/GalleryMultiWindow$SplitMenuItem;)Landroid/content/pm/ComponentInfo;

    move-result-object v5

    instance-of v5, v5, Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->startActivity(Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public setMultiWindowModeChangeListener(Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowModeChangeListener:Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowActivity:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    new-instance v1, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$2;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$2;-><init>(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)V

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->setStateChangeListener(Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowStateChangeInterface;)V

    return-void
.end method

.method public updateMultiWindowSize()V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mIsCheckWindowSize:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mIsCheckWindowSize:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowSize:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowSize:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, -0x30

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowSize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_1
.end method
