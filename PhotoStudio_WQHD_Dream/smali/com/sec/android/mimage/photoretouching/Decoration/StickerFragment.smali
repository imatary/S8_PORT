.class public Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;
.super Lcom/samsung/android/sdk/rcl/RclExpansionFragment;
.source "StickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;,
        Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_HEIGHT_LAND:I = 0x168

.field private static final DEFAULT_MAX_HEIGHT_PORT:I = 0x215

.field private static final DEFAULT_MIN_HEIGHT_LAND:I = 0xce

.field private static final DEFAULT_MIN_HEIGHT_PORT:I = 0x117

.field private static final KEY_CURRENT_CATEGORY:Ljava/lang/String; = "current_category"

.field private static final LOCATION_DISTANCE:F = 100.0f

.field private static final LOCATION_INTERVAL:I = 0x3e8

.field public static final LOCATION_JSON_REQ_TAG:Ljava/lang/String; = "location_json_request"

.field public static final MSG_UPDATE_LOC_DATA:I = 0xc81

.field public static final TAG:Ljava/lang/String; = "StickerFragment"

.field public static final WEATHER_JSON_REQ_TAG:Ljava/lang/String; = "weather_json_request"

.field public static mCurrentStickerCategory:I


# instance fields
.field handlerView:Landroid/widget/ImageView;

.field private isFragmentViewExpanded:Z

.field private isLocationPermissionGranted:Z

.field public mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

.field public mContext:Landroid/content/Context;

.field public mCurrentOrientation:I

.field private mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

.field mHandler:Landroid/os/Handler;

.field public mIsFullMode:Z

.field private final mLocationListeners:[Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mOnStickerStateListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

.field private mQueue:Lcom/android/volley/RequestQueue;

.field public mStickerPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

.field public mStickerTabManager:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;

.field private mViewPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private maxHeight:I

.field private minHeight:I

.field public requiredStickerPages:[I

.field public requiredTabs:[I

.field private root:Landroid/view/View;

.field private stickerTabContainer:Landroid/widget/RelativeLayout;

.field private viewPagerContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->handlerView:Landroid/widget/ImageView;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;

    const-string v3, "gps"

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;Ljava/lang/String;Landroid/content/Context;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;

    const-string v3, "network"

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;Ljava/lang/String;Landroid/content/Context;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mLocationListeners:[Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mViewPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$2;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;)Lcom/android/volley/RequestQueue;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method private initPagesAdapter()V
    .locals 6

    const-string v0, "StickerFragment"

    const-string v1, "initAttachViewPager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mOnStickerStateListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->requiredStickerPages:[I

    sget v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mCurrentStickerCategory:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;[II)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->viewPagerContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0e01f7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    sget v1, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mCurrentStickerCategory:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mViewPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->root:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->requiredTabs:[I

    sget v5, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mCurrentStickerCategory:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;Landroid/view/View;Landroid/support/v4/view/ViewPager;[II)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerTabManager:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;

    return-void
.end method

.method private initializeLocationManager(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mLocationManager:Landroid/location/LocationManager;

    :cond_0
    return-void
.end method

.method public static newInstance(I)Landroid/app/Fragment;
    .locals 3

    sput p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mCurrentStickerCategory:I

    new-instance v1, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-direct {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "current_category"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private setMinMaxHeight(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/high16 v0, 0x434e0000    # 206.0f

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->minHeight:I

    const/high16 v0, 0x43b40000    # 360.0f

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->maxHeight:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const v0, 0x438b8000    # 279.0f

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->minHeight:I

    const v0, 0x44054000    # 533.0f

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->maxHeight:I

    goto :goto_0
.end method

.method private startReceivingLocationUpdates()V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->initializeLocationManager(Landroid/content/Context;)V

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mLocationListeners:[Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mLocationListeners:[Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    return-void

    :catch_0
    move-exception v6

    const-string v0, "StickerFragment"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v6

    const-string v0, "StickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v6

    const-string v0, "StickerFragment"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v6

    const-string v0, "StickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public enableExpansion(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->enableExpansion(III)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->setExpansionMode(I)V

    return-void
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 14

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mLocationListeners:[Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;

    array-length v3, v11

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mLocationListeners:[Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v11, v6, v1

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->current()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v7, v2

    :cond_0
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v4, v5, v12, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->doubleEquals(DD)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v8, v9, v12, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->doubleEquals(DD)Z

    move-result v11

    if-nez v11, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    :goto_2
    return-object v7

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move-object v7, v10

    goto :goto_2

    :cond_5
    const-string v11, "StickerFragment"

    const-string v12, "current location is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v10

    goto :goto_2
.end method

.method public getDensity()F
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    return v1
.end method

.method public getNumColumn()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getRclExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerTabManager:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerTabManager:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    goto :goto_0
.end method

.method public isFragmentViewExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->isFragmentViewExpanded:Z

    return v0
.end method

.method public isNetworkLocationProviderEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->initializeLocationManager(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->root:Landroid/view/View;

    const v1, 0x7f0e01f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->viewPagerContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->setMinMaxHeight(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->viewPagerContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0e01f7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->minHeight:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->maxHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->enableExpansion(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->initPagesAdapter()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->initTime()V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->isLocationPermissionGranted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->startReceivingLocationUpdates()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "StickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location permission ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->isLocationPermissionGranted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR Internet connection not available..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerTabManager:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mCurrentOrientation:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->setMinMaxHeight(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->viewPagerContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0e01f7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->minHeight:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->maxHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->enableExpansion(Landroid/view/View;II)V

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mCurrentOrientation:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->setMinMaxHeight(I)V

    goto :goto_0
.end method

.method public onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v1, 0x7f03005d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->root:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->root:Landroid/view/View;

    const v2, 0x7f0e01f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->stickerTabContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->stickerTabContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e00e2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC5Model()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->root:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "StickerFragment"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onDestroy()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mViewPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->viewPagerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->viewPagerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->viewPagerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->viewPagerContainer:Landroid/widget/FrameLayout;

    :cond_0
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->root:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerTabManager:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerTabManager:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->destroyAttachViewTabManager()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerTabManager:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mQueue:Lcom/android/volley/RequestQueue;

    const-string v1, "location_json_request"

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mQueue:Lcom/android/volley/RequestQueue;

    const-string v1, "weather_json_request"

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc81

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mHandler:Landroid/os/Handler;

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->stopReceivingLocationUpdates()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "StickerFragment"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onDestroyView()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->setExpansion(Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->destroy()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    :cond_1
    return-void
.end method

.method protected onExpansionClose()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onExpansionClose()V

    return-void
.end method

.method protected onExpansionFinish(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->isFragmentViewExpanded:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mStickerPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->updateOnExpansionFinish(ZLcom/samsung/android/sdk/rcl/RclExpansionHelper;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e01fc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->handlerView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->handlerView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->handlerView:Landroid/widget/ImageView;

    const v1, 0x7f020259

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->handlerView:Landroid/widget/ImageView;

    const v1, 0x7f02025a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onExpansionStart(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onExpansionStart(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setLocationPermission(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->isLocationPermissionGranted:Z

    return-void
.end method

.method public setMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mIsFullMode:Z

    return-void
.end method

.method public setOnDecorationAttachInterfaceListener(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mOnStickerStateListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    return-void
.end method

.method public setRequiredPagesAndTabs([I[I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->requiredStickerPages:[I

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->requiredTabs:[I

    return-void
.end method

.method protected stopReceivingLocationUpdates()V
    .locals 7

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mLocationListeners:[Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v5, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "StickerFragment"

    const-string v6, "fail to remove location listeners, ignore"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public updateExpansionWH(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->minHeight:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->maxHeight:I

    return-void
.end method
