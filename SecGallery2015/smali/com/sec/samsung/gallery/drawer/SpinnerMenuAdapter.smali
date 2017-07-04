.class Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SpinnerMenuAdapter.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpinnerMenuAdapter"


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mDrawerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/drawer/DrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private mGroupArray:[Lcom/sec/samsung/gallery/drawer/Group;

.field private mGroupDefault:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;

.field mGroupDefaultExpansion:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

.field private mGroupServices:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

.field private mHandler:Landroid/os/Handler;

.field private mIsLocalOnlyPickMode:Z

.field private mIsPickMode:Z

.field private mNeedToPostJob:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mSpinnerMenudAperMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsPickMode:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsLocalOnlyPickMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mNeedToPostJob:Z

    new-instance v0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$1;

    const-string/jumbo v1, "EVENT_SPINNER_VIEW_MENU"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$1;-><init>(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mSpinnerMenudAperMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->init()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->createGroup()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->initializeGroup()V

    invoke-static {p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mSpinnerMenudAperMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mSpinnerMenudAperMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mNeedToPostJob:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->doPostJob()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->postResume()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefault:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)[Lcom/sec/samsung/gallery/drawer/Group;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupArray:[Lcom/sec/samsung/gallery/drawer/Group;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupServices:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mDrawerItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$601(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->postCreateGroup()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->postInitializeGroup()V

    return-void
.end method

.method private checkPickerMode()V
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "android.intent.action.PICK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "android.intent.action.PERSON_PICK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/gallery3d/app/GalleryActivity;->ACTION_MULTIPLE_PICK:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsPickMode:Z

    :cond_1
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsPickMode:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v3, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsLocalOnlyPickMode:Z

    :cond_2
    return-void
.end method

.method private createDefaultExpansionGroup()V
    .locals 3

    new-instance v0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$3;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$3;-><init>(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/drawer/IDrawerCallback;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefaultExpansion:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    return-void
.end method

.method private createDefaultGroup()V
    .locals 3

    new-instance v0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$2;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$2;-><init>(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/drawer/IDrawerCallback;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefault:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;

    return-void
.end method

.method private createGroup()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->createDefaultGroup()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mNeedToPostJob:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->postCreateGroup()V

    :cond_0
    return-void
.end method

.method private createServicesGroup()V
    .locals 4

    new-instance v1, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v3, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$4;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$4;-><init>(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsPickMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsLocalOnlyPickMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/drawer/IDrawerCallback;Z)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupServices:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doPostJob()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$6;

    const-string/jumbo v1, "SpinnerPostJobThread"

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$6;-><init>(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$6;->start()V

    return-void
.end method

.method private drawEventCountIcon(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const v2, 0x7f1201f5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefaultExpansion:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->getEventCount()I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAddAllTextLongLanguage:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0202db

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mResources:Landroid/content/res/Resources;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mDrawerItems:Ljava/util/ArrayList;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/samsung/gallery/drawer/Group;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupArray:[Lcom/sec/samsung/gallery/drawer/Group;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->checkPickerMode()V

    return-void
.end method

.method private initializeGroup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefault:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;->initialize()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mNeedToPostJob:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->postInitializeGroup()V

    :cond_0
    return-void
.end method

.method private postCreateGroup()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsPickMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsLocalOnlyPickMode:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->createServicesGroup()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->createDefaultExpansionGroup()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->createServicesGroup()V

    goto :goto_0
.end method

.method private postInitializeGroup()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsPickMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsLocalOnlyPickMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupServices:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->initialize()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefaultExpansion:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefaultExpansion:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->initialize()V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupServices:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->initialize()V

    goto :goto_0
.end method

.method private postResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsPickMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsLocalOnlyPickMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupServices:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->onResume()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefaultExpansion:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefaultExpansion:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->onResume()V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupServices:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->onResume()V

    goto :goto_0
.end method

.method private setColorSelectedItem(Lcom/sec/samsung/gallery/drawer/DrawerItem;Landroid/widget/TextView;)V
    .locals 10

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v6

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->getGroupType()I

    move-result v7

    sget-object v8, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->DEFAULT:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v8

    if-eq v7, v8, :cond_0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->getGroupType()I

    move-result v7

    sget-object v8, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->DEFAULT_EXPANSION:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v8

    if-ne v7, v8, :cond_4

    :cond_0
    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v7

    if-eq v6, v7, :cond_1

    sget-object v7, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v7

    if-ne v6, v7, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    :goto_0
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "mtpMode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "mtpDeviceName"

    invoke-static {v7, v8}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadStringKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v7, :cond_3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_7

    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f1001fe

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0420

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->getGroupType()I

    move-result v7

    sget-object v8, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->SOCIAL_CLOUD:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v8

    if-ne v7, v8, :cond_2

    instance-of v7, p1, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;

    if-eqz v7, :cond_5

    move-object v4, p1

    check-cast v4, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->getViewByFilterType()I

    move-result v7

    if-ne v6, v7, :cond_2

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SLINK:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v7, :cond_2

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v7, :cond_2

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_5
    instance-of v7, p1, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;

    if-eqz v7, :cond_6

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SLINK:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v7, :cond_2

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_6
    instance-of v7, p1, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;

    if-eqz v7, :cond_2

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v7, :cond_2

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f1000cd

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a041f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChild(I)Lcom/sec/samsung/gallery/drawer/DrawerItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/drawer/DrawerItem;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const v11, 0x7f1201f7

    const/4 v10, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->getChild(I)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->isGroupNameItem()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->getGroupType()I

    move-result v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040107

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sget-object v8, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->DEFAULT:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v8

    if-eq v6, v8, :cond_0

    sget-object v8, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->DEFAULT_EXPANSION:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v8

    if-ne v6, v8, :cond_1

    :cond_0
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const v8, 0x7f120249

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSelected(Z)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0a01ed

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v2, p2

    :goto_0
    return-object v2

    :cond_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040109

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCountIconInSpinner:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040108

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_3
    const v8, 0x7f1201f6

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->getGroupType()I

    move-result v8

    sget-object v9, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->DEFAULT:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v9

    if-eq v8, v9, :cond_4

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->getGroupType()I

    move-result v8

    sget-object v9, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->DEFAULT_EXPANSION:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v9

    if-eq v8, v9, :cond_4

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->isGroupFirstItem()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCountIconInSpinner:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v9, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->drawEventCountIcon(Landroid/view/View;)V

    :cond_5
    invoke-direct {p0, v0, v7}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->setColorSelectedItem(Lcom/sec/samsung/gallery/drawer/DrawerItem;Landroid/widget/TextView;)V

    move-object v2, p2

    goto/16 :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/drawer/DrawerItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->isGroupNameItem()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsPickMode:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsLocalOnlyPickMode:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->getGroupType()I

    move-result v1

    sget-object v3, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->DEFAULT:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsPickMode:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsLocalOnlyPickMode:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->getGroupType()I

    move-result v1

    sget-object v3, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->DEFAULT:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v3

    if-eq v1, v3, :cond_3

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->getGroupType()I

    move-result v1

    sget-object v3, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->SOCIAL_CLOUD:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_0

    :cond_3
    instance-of v1, v0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->getNetworkMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->getNetworkMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "OFF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public isNeedToPostJob()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mNeedToPostJob:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$5;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$5;-><init>(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "EVENT_DRAWER"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefault:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefault:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;->onPause()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsPickMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefaultExpansion:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefaultExpansion:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->onPause()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupServices:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupServices:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->onPause()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mIsLocalOnlyPickMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupServices:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupServices:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->onPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefault:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;->onResume()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mNeedToPostJob:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->postResume()V

    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method
