.class public Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;
.super Lcom/sec/android/gallery3d/app/ActivityState;
.source "MapViewStateChn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;
    }
.end annotation


# static fields
.field private static final FEATURE_USE_DEVICE_COG:Z

.field private static final MAP_FRAGMENT_EVENT_TAG:Ljava/lang/String; = "eventmap"

.field private static final MAP_FRAGMENT_TAG:Ljava/lang/String; = "map"

.field private static final MSG_NO_LOCATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MapViewStateChn"

.field private static ZOOM_RATIO:F


# instance fields
.field private clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

.field private mAlbumPosition:I

.field private mBaseSet:Lcom/sec/android/gallery3d/data/MediaObject;

.field private mBwnDate:[J

.field private mCurrentItemPath:Ljava/lang/String;

.field private mCurrentSetPath:Ljava/lang/String;

.field private mEventViewAlbumBuckId:I

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mHandler:Landroid/os/Handler;

.field private mIsFakeloadingDone:Z

.field private mIsSupportViewSelected:Z

.field private mIsViewSelected:Z

.field private mItemLatLng:[D

.field private mMap:Lcom/amap/api/maps2d/AMap;

.field private mMapFragment:Lcom/amap/api/maps2d/MapFragment;

.field private mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

.field private final mMapViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private mMarkerDrawTask:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

.field private final mMediaChangeObserver:Landroid/database/DataSetObserver;

.field private final mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

.field private mSelectedBaseSet:Lcom/sec/android/gallery3d/data/MediaObject;

.field private mSelectedBwnDate:[J

.field private mSelectedEventViewAlbumBuckId:I

.field private final mUseDreamMapViewUI:Z

.field private mZoolLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41500000    # 13.0f

    sput v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->ZOOM_RATIO:F

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->FEATURE_USE_DEVICE_COG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/ActivityState;-><init>()V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mIsSupportViewSelected:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mIsViewSelected:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamMapViewUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mUseDreamMapViewUI:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mIsFakeloadingDone:Z

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$1;

    const-string/jumbo v1, "MAP_VIEW"

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$1;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMediaChangeObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->onConfigChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->setUpMapIfNeeded()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mIsSupportViewSelected:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mEventViewAlbumBuckId:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)[J
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mBwnDate:[J

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)[D
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mItemLatLng:[D

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->setCameraPositon()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mUseDreamMapViewUI:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;Lcom/amap/api/maps2d/model/LatLngBounds;)Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->getExpandedBounds(Lcom/amap/api/maps2d/model/LatLngBounds;)Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMarkerDrawTask:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;)Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMarkerDrawTask:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mCurrentSetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mAlbumPosition:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mAlbumPosition:I

    return p1
.end method

.method private changeDataSetWhenModeChanged()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mIsViewSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mSelectedBwnDate:[J

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mBwnDate:[J

    iget v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mSelectedEventViewAlbumBuckId:I

    iput v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mEventViewAlbumBuckId:I

    :goto_0
    iget v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mEventViewAlbumBuckId:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mSelectedBaseSet:Lcom/sec/android/gallery3d/data/MediaObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaObject;

    :goto_1
    return-void

    :cond_0
    iput-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mBwnDate:[J

    iput v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mEventViewAlbumBuckId:I

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaObject;

    goto :goto_1
.end method

.method private getExpandedBounds(Lcom/amap/api/maps2d/model/LatLngBounds;)Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 24

    if-eqz p1, :cond_2

    const-wide v8, 0x3fc3333333333333L    # 0.15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-wide/from16 v20, v0

    cmpg-double v17, v18, v20

    if-gez v17, :cond_0

    const/16 v16, 0x1

    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    move-wide/from16 v20, v0

    sub-double v6, v18, v20

    if-nez v16, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-wide/from16 v20, v0

    sub-double v4, v18, v20

    :goto_1
    mul-double v10, v6, v8

    mul-double v12, v4, v8

    new-instance v14, Lcom/amap/api/maps2d/model/LatLng;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    add-double v18, v18, v10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-wide/from16 v20, v0

    add-double v20, v20, v12

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v15, Lcom/amap/api/maps2d/model/LatLng;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    sub-double v18, v18, v10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-wide/from16 v20, v0

    sub-double v20, v20, v12

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v17, Lcom/amap/api/maps2d/model/LatLngBounds;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v14}, Lcom/amap/api/maps2d/model/LatLngBounds;-><init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V

    :goto_2
    return-object v17

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_1
    const-wide v18, 0x4066800000000000L    # 180.0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    const-wide v20, 0x4066800000000000L    # 180.0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    add-double v4, v18, v20

    goto/16 :goto_1

    :cond_2
    const/16 v17, 0x0

    goto :goto_2
.end method

.method private initMapViewDataAdapter(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 7

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mCurrentSetPath:Ljava/lang/String;

    iget v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mEventViewAlbumBuckId:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mBwnDate:[J

    move-object v5, p1

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaSet;

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mIsFakeloadingDone:Z

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I[JLcom/sec/android/gallery3d/data/MediaSet;Z)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mCurrentSetPath:Ljava/lang/String;

    iget v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mEventViewAlbumBuckId:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mBwnDate:[J

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mIsFakeloadingDone:Z

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I[JLcom/sec/android/gallery3d/data/MediaSet;Z)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    goto :goto_0
.end method

.method private initializeDataAdapter(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mCurrentSetPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mCurrentSetPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mCurrentSetPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mSelectedBaseSet:Lcom/sec/android/gallery3d/data/MediaObject;

    iput-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mCurrentSetPath:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_6

    const-string/jumbo v1, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mCurrentItemPath:Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string/jumbo v1, "KEY_MEDIA_SET_POSITION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_2
    iput v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mAlbumPosition:I

    if-eqz p1, :cond_8

    const-string/jumbo v1, "KEY_MEDIA_ITEM_LOCATION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mItemLatLng:[D

    if-eqz p1, :cond_1

    const-string/jumbo v1, "KEY_MEDIA_ITEM_BWN_DATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mSelectedBwnDate:[J

    if-eqz p1, :cond_9

    const-string/jumbo v1, "KEY_MAP_VIEW_ZOOM_LEVEL"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_4
    iput v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mZoolLevel:I

    if-eqz p1, :cond_2

    const-string/jumbo v1, "KEY_EVENT_VIEW_ALBUM_BUCKET_ID"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    :cond_2
    iput v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mSelectedEventViewAlbumBuckId:I

    if-eqz p1, :cond_3

    const-string/jumbo v1, "KEY_MAP_VIEW_SUPPORT_VIEW_SELECTED"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_3
    move v1, v5

    :goto_5
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mIsSupportViewSelected:Z

    if-eqz p1, :cond_b

    const-string/jumbo v1, "KEY_IS_FAKE_LOADING"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_6
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mIsFakeloadingDone:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->changeDataSetWhenModeChanged()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->initMapViewDataAdapter(Lcom/sec/android/gallery3d/data/MediaObject;)V

    :cond_4
    return-void

    :cond_5
    move-object v1, v2

    goto/16 :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_2

    :cond_8
    move-object v1, v2

    goto :goto_3

    :cond_9
    move v1, v4

    goto :goto_4

    :cond_a
    move v1, v3

    goto :goto_5

    :cond_b
    move v5, v3

    goto :goto_6
.end method

.method private onConfigChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    return-void
.end method

.method private setCameraPositon()V
    .locals 8

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mItemLatLng:[D

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mItemLatLng:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mItemLatLng:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-wide v4, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v4, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mZoolLevel:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/high16 v4, 0x40a00000    # 5.0f

    sput v4, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->ZOOM_RATIO:F

    :cond_1
    :goto_1
    new-instance v4, Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    invoke-direct {v4}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v4, v2}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->ZOOM_RATIO:F

    invoke-virtual {v4, v5}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newCameraPosition(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v4, v1}, Lcom/amap/api/maps2d/AMap;->moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->outOfChina(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v4, 0x40e00000    # 7.0f

    sput v4, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->ZOOM_RATIO:F

    goto :goto_1
.end method

.method private setUpMap()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/UiSettings;->setZoomControlsEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/UiSettings;->setCompassEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->setCameraPositon()V

    return-void
.end method

.method private setUpMapIfNeeded()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapFragment:Lcom/amap/api/maps2d/MapFragment;

    invoke-virtual {v1}, Lcom/amap/api/maps2d/MapFragment;->getMap()Lcom/amap/api/maps2d/AMap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->setUpMap()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MapViewStateChn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public changeViewMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mIsViewSelected:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mIsViewSelected:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->changeDataSetWhenModeChanged()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->initMapViewDataAdapter(Lcom/sec/android/gallery3d/data/MediaObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->addSourceContentListener()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMediaChangeObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->resume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMediaChangeObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    :cond_0
    return-void
.end method

.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getSAScreenId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "305"

    return-object v0
.end method

.method public isSupportViewSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mIsSupportViewSelected:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-ne p0, v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "MapViewState onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setActiveMapView(Z)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->initializeDataAdapter(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "map"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/MapFragment;

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapFragment:Lcom/amap/api/maps2d/MapFragment;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapFragment:Lcom/amap/api/maps2d/MapFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$2;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapFragment:Lcom/amap/api/maps2d/MapFragment;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapFragment:Lcom/amap/api/maps2d/MapFragment;

    const-string/jumbo v3, "map"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapFragment:Lcom/amap/api/maps2d/MapFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$3;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mHandler:Landroid/os/Handler;

    sget-boolean v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/MapViewStateDCHandler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/MapViewStateDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/touchevent/MapViewStateDCTouchEvent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/samsung/android/devicecog/gallery/touchevent/MapViewStateDCTouchEvent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    :cond_1
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "MapViewState onCreate End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "MapViewState onDestroy Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clearMap()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setActiveMapView(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapFragment:Lcom/amap/api/maps2d/MapFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    :cond_3
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "MapViewState onDestroy End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onDestroy()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "305"

    const-string/jumbo v1, "1080"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isUpButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "MapViewState onPause Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->removeSourceContentListener()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMediaChangeObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->getEnterDetailView()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapFragment:Lcom/amap/api/maps2d/MapFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->hideLocationThumbnail(ZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "MAP_VIEW"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->stopAnimation()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setSystemUiVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    :cond_5
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "MapViewState onPause End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    goto :goto_0
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "MapViewState onResume Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->setUpMapIfNeeded()V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->getEnterDetailView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->resetEnterDetailView()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapFragment:Lcom/amap/api/maps2d/MapFragment;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapFragment:Lcom/amap/api/maps2d/MapFragment;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapFragment:Lcom/amap/api/maps2d/MapFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->addSourceContentListener()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMediaChangeObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->resume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMapViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mCurrentItemPath:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mIsViewSelected:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->drawMarkers()V

    :cond_4
    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/MapViewBeam;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewBeam;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewBeam;->setBeamListener()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setSystemUiVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAllObject()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :cond_6
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onResume()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "MapViewState onResume End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->clear()V

    goto/16 :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    const-string/jumbo v3, "MapViewStateChn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Event update ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->doDCTouchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
