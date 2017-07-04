.class public Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;
.super Ljava/lang/Object;
.source "MapMarkerOptionsChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;,
        Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MapMarkerOptionsChooser"


# instance fields
.field private final USE_FEATURE_MAP_DREAM_UI:Z

.field private final clusterPaintMedium:Landroid/graphics/Paint;

.field private final contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundHeight:F

.field private mBackgroundWidth:F

.field private mDefaultMarkerBitmapWidth:F

.field private mDefaultStartXWhite:F

.field private final mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

.field private mEndYWhite:F

.field private mLocationTouchedIconPin:Landroid/graphics/Bitmap;

.field private mMarkerBitmapHeight:F

.field private mMarkerPresentiveBitmap:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;

.field private final mResource:Landroid/content/res/Resources;

.field private mStrokeWidth:F

.field private mTimeDescCompare:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;

.field private final mUseGraceMapViewUI:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceMapViewUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mUseGraceMapViewUI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamMapViewUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->USE_FEATURE_MAP_DREAM_UI:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mLocationTouchedIconPin:Landroid/graphics/Bitmap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    const v1, 0x7f10014b

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b0199

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    invoke-direct {v0, p1}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->initializeMarkerDimensions()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;)Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mTimeDescCompare:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->contextRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private getClusterBitmapForNewUI(Landroid/content/Context;Landroid/content/res/Resources;ILcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Landroid/graphics/Bitmap;
    .locals 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->USE_FEATURE_MAP_DREAM_UI:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    const v21, 0x7f0b06b4

    :goto_0
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string/jumbo v21, "%d"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->size()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const-string/jumbo v22, "3"

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v21

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v11, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    const/4 v11, 0x0

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mDefaultMarkerBitmapWidth:F

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v11, v22

    add-float v14, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mDefaultStartXWhite:F

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v11, v22

    sub-float v19, v21, v22

    float-to-int v0, v14

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mMarkerBitmapHeight:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v21 .. v23}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mMarkerBitmapHeight:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mBackgroundHeight:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mBackgroundWidth:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mBackgroundHeight:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mMarkerBitmapHeight:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mBackgroundHeight:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v10, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0b06b2

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0b06af

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mMarkerPresentiveBitmap:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {p4 .. p4}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getMapItemsInCluster()Ljava/util/ArrayList;

    move-result-object v22

    float-to-int v0, v7

    move/from16 v23, v0

    float-to-int v0, v6

    move/from16 v24, v0

    invoke-static/range {v21 .. v24}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;->access$400(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;Ljava/util/ArrayList;II)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0b06b0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0b06b1

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mMarkerBitmapHeight:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mBackgroundHeight:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v20, v21, v22

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0e002f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    int-to-float v0, v12

    move/from16 v21, v0

    add-float v21, v21, v7

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v22, v22, v6

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setBounds(IIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->USE_FEATURE_MAP_DREAM_UI:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mEndYWhite:F

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v9, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const v22, 0x7f10014e

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v21, Landroid/graphics/RectF;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mEndYWhite:F

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v14, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    add-float v21, v14, v19

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mEndYWhite:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v13

    :cond_2
    const v21, 0x7f0b03ee

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mEndYWhite:F

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v9, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v21, Landroid/graphics/RectF;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mEndYWhite:F

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v14, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mEndYWhite:F

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mStrokeWidth:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v9, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const v22, 0x7f10014e

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v21, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mStrokeWidth:F

    move/from16 v22, v0

    add-float v22, v22, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mStrokeWidth:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mStrokeWidth:F

    move/from16 v24, v0

    sub-float v24, v14, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mEndYWhite:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mStrokeWidth:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-direct/range {v21 .. v25}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private getClusterBitmapForOldUI(Landroid/content/Context;ILcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Landroid/graphics/Bitmap;
    .locals 34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0b0198

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x3f800000    # 1.0f

    const/high16 v31, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v32, v0

    const v33, 0x7f0a0509

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v32

    mul-float v31, v31, v32

    sub-float v30, v30, v31

    div-float v29, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v29

    move/from16 v0, v29

    int-to-float v6, v0

    new-instance v22, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v29, p1

    check-cast v29, Landroid/app/Activity;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget v29, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v30, 0x17

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0a0508

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    mul-float v29, v29, v6

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v29

    move/from16 v0, v29

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/16 v29, 0x0

    const/16 v30, 0x0

    float-to-int v0, v6

    move/from16 v31, v0

    float-to-int v0, v5

    move/from16 v32, v0

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    float-to-int v0, v6

    move/from16 v29, v0

    float-to-int v0, v5

    move/from16 v30, v0

    sget-object v31, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v29 .. v31}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v12, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    const v29, 0x7f020246

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    :cond_0
    :goto_1
    if-nez v7, :cond_4

    const/4 v7, 0x0

    :cond_1
    :goto_2
    return-object v7

    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    :cond_3
    const v29, 0x7f020247

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mLocationTouchedIconPin:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_4
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v29, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v29 .. v29}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v29

    if-eqz v29, :cond_5

    const v29, 0x7f020247

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    new-instance v15, Landroid/graphics/PorterDuffColorFilter;

    const v29, 0x7f100111

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v29

    sget-object v30, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v15, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mLocationTouchedIconPin:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->clusterPaintMedium:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0a0509

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0a04f8

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0e0015

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0b0198

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0b0197

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getMapItemsInCluster()Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mTimeDescCompare:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;

    move-object/from16 v30, v0

    invoke-static/range {v29 .. v30}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getMapItemsInCluster()Ljava/util/ArrayList;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mMarkerPresentiveBitmap:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;

    move-object/from16 v29, v0

    invoke-virtual/range {p3 .. p3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getMapItemsInCluster()Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v27

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;->access$400(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;Ljava/util/ArrayList;II)Landroid/graphics/Bitmap;

    move-result-object v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0e0016

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v28

    sget v29, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v30, 0x17

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    sub-int v29, v29, v27

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    int-to-float v0, v9

    move/from16 v30, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v23

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_6
    :goto_4
    const v29, 0x7f020247

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    const v29, 0x7f100144

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    :goto_5
    invoke-virtual/range {p3 .. p3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->size()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-string/jumbo v29, "%d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->size()I

    move-result v29

    const/16 v30, 0xa

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0a050b

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    :goto_6
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v25

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v31, v0

    const v32, 0x7f0e0017

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v23

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :catch_0
    move-exception v14

    const-string/jumbo v29, "MapMarkerOptionsChooser"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "IllegalArgumentException : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v8

    int-to-float v0, v9

    move/from16 v30, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v23

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_8
    const v29, 0x7f100143

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0a050a

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    goto/16 :goto_6
.end method

.method private getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v6, -0xbdbdbe

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2, v12, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float v11, p2

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v1, -0xbdbdbe

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v10, v11, v11, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    int-to-float v2, v7

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v3, v12

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v12

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v2, v7

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v3, v12

    int-to-float v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p1, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v8
.end method

.method private initializeMarkerDimensions()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mUseGraceMapViewUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b06b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mMarkerBitmapHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b06ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mBackgroundWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b06ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mBackgroundHeight:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->USE_FEATURE_MAP_DREAM_UI:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0b06ac

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mEndYWhite:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b06aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mStrokeWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b06b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mDefaultMarkerBitmapWidth:F

    iget v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mDefaultMarkerBitmapWidth:F

    iget v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mEndYWhite:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mDefaultStartXWhite:F

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0b06ab

    goto :goto_0
.end method


# virtual methods
.method public choose(Lcom/amap/api/maps2d/model/MarkerOptions;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mMarkerPresentiveBitmap:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;

    if-nez v3, :cond_0

    new-instance v3, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;

    invoke-direct {v3, p0, v4}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$1;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mMarkerPresentiveBitmap:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mTimeDescCompare:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;

    if-nez v3, :cond_1

    new-instance v3, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$1;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mTimeDescCompare:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mUseGraceMapViewUI:Z

    if-eqz v3, :cond_3

    const v3, 0x7f020208

    invoke-virtual {p0, v0, v2, v3, p2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->getClusterBitmap(Landroid/content/Context;Landroid/content/res/Resources;ILcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v4}, Lcom/amap/api/maps2d/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps2d/model/MarkerOptions;

    :cond_2
    return-void

    :cond_3
    const v3, 0x7f020246

    invoke-virtual {p0, v0, v2, v3, p2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->getClusterBitmap(Landroid/content/Context;Landroid/content/res/Resources;ILcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public choose(Lcom/google/android/gms/maps/model/MarkerOptions;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mMarkerPresentiveBitmap:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;

    if-nez v3, :cond_0

    new-instance v3, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;

    invoke-direct {v3, p0, v4}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$1;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mMarkerPresentiveBitmap:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mTimeDescCompare:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;

    if-nez v3, :cond_1

    new-instance v3, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$1;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mTimeDescCompare:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mUseGraceMapViewUI:Z

    if-eqz v3, :cond_3

    const v3, 0x7f020208

    invoke-virtual {p0, v0, v2, v3, p2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->getClusterBitmap(Landroid/content/Context;Landroid/content/res/Resources;ILcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    :cond_2
    return-void

    :cond_3
    const v3, 0x7f020246

    invoke-virtual {p0, v0, v2, v3, p2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->getClusterBitmap(Landroid/content/Context;Landroid/content/res/Resources;ILcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public getClusterBitmap(Landroid/content/Context;Landroid/content/res/Resources;ILcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->mUseGraceMapViewUI:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->getClusterBitmapForNewUI(Landroid/content/Context;Landroid/content/res/Resources;ILcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->getClusterBitmapForOldUI(Landroid/content/Context;ILcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
