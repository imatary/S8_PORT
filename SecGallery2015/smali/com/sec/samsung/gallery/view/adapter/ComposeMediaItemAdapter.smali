.class public Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
.source "ComposeMediaItemAdapter.java"


# static fields
.field static final FEATURE_FACE_THUMBNAIL:Z

.field static final FEATURE_IS_TABLET:Z

.field private static final FEATURE_USE_DREAM_MAP_VIEW:Z

.field private static final FEATURE_USE_GRACE_ALBUM_GUI:Z

.field private static final FEATURE_USE_SECRET_BOX:Z

.field private static final MASS_LOCATION_CONCEPT:Z

.field private static final TAG:Ljava/lang/String; = "ComposeMediaItemAdapter"

.field static final USE_N_OS_DECOR:Z


# instance fields
.field private mAlbumLabelWidth:I

.field private final mDeleteIconMargin:I

.field protected mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

.field private final mDurationStrokeColor:I

.field private final mDurationTextColor:Ljava/lang/Integer;

.field private final mDurationTextPadding:Ljava/lang/Integer;

.field private final mDurationTextPaddingBottom:Ljava/lang/Integer;

.field private final mDurationTextSize:Ljava/lang/Integer;

.field private final mDurationmStrokeWidth:I

.field mHeaderImage:Landroid/graphics/Bitmap;

.field mHeaderItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mIconMarginLeft:I

.field private mLocationEasyModeTextSize:I

.field private mLocationIconHeight:I

.field private mLocationIconMargin:I

.field private mLocationIconWidth:I

.field private mLocationSideMargin:I

.field private mLocationTextBottomMargin:I

.field private mLocationTextColor:I

.field private mLocationTextMargin:I

.field private mLocationTextSize:I

.field private mLocationViewEasyModeHeight:I

.field private mLocationViewHeight:I

.field private mLocationViewLeftOffset:I

.field private mLocationViewTopMargin:I

.field private mLocationViewWidth:I

.field final mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mNewMarkItemModifiedTime:J

.field private final mPrivateIconMarginBottom:I

.field final mResourceMgr:Lcom/sec/android/gallery3d/util/ResourceManager;

.field final mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field final readyDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_IS_TABLET:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_FACE_THUMBNAIL:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_SECRET_BOX:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->USE_N_OS_DECOR:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_ALBUM_GUI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamMapViewUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_DREAM_MAP_VIEW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSLocation:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->MASS_LOCATION_CONCEPT:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mHeaderItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mNewMarkItemModifiedTime:J

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mHeaderImage:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0x4b4b4c

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->readyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResourceMgr:Lcom/sec/android/gallery3d/util/ResourceManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getNewAlbumSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    sget-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewVideoDurationFontSizeOver30()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationTextSize:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDurationTextPaddingOver30()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationTextPadding:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDurationTextPaddingOver30()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationTextPaddingBottom:Ljava/lang/Integer;

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewVideoDurationFontColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationTextColor:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f100217

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationStrokeColor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0386

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationmStrokeWidth:I

    sget-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_IS_TABLET:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b01d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mIconMarginLeft:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0280

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mPrivateIconMarginBottom:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b01c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDeleteIconMargin:I

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->initLocationAttributes()V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mEasyMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0285

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationTextSize:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b028a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationTextPadding:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0289

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationTextPaddingBottom:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewVideoDurationFontSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationTextSize:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewVideoDurationTextPadding()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationTextPadding:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewVideoDurationTextPaddingBottom()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationTextPaddingBottom:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1
.end method

.method private addGIFMarkView(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    sget-boolean v5, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->USE_N_OS_DECOR:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v6, 0x7f02010a

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f100024

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewGifMarkHeight()I

    move-result v3

    const v5, 0x7f0a0876

    invoke-direct {p0, v5, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getLabelTextView(II)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v4

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewGifMarkMargin()I

    move-result v1

    invoke-virtual {v2, v1, v7, v7, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewGifMarkSidePadding()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/16 v5, 0xc

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    invoke-virtual {p1, v2, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    goto :goto_0
.end method

.method private drawAlbumLabelBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0
.end method

.method private drawDecorViewAlbum(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Z)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 52

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispSelectCnt:Z

    move/from16 v46, v0

    if-eqz v46, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSetSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v39

    :goto_0
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    move/from16 v46, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    move/from16 v47, v0

    and-int v19, v46, v47

    const/16 v21, 0x0

    const/16 v20, 0x0

    invoke-static/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/LogicalBucketList;->isLogicalAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v46

    if-eqz v46, :cond_0

    const/16 v20, 0x1

    :cond_0
    if-nez p4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLatestAlbumInfo(Landroid/content/Context;)I

    move-result v46

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_4

    const/16 v21, 0x1

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v22

    sget-boolean v46, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v46, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getPlayTypeIconRsrc(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v33

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getContentTypeIconRsrc(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Z)I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const-string/jumbo v47, "latest_update_item"

    const-wide/16 v48, -0x1

    invoke-static/range {v46 .. v49}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadLongKey(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v24

    const-string/jumbo v47, "ComposeMediaItemAdapter"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "drawDecorViewAlbum isNewMark "

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v48, " : "

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v48, " mNewMarkItemModifiedTime == latestModifiedTime "

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mNewMarkItemModifiedTime:J

    move-wide/from16 v50, v0

    cmp-long v46, v50, v24

    if-nez v46, :cond_6

    const/16 v46, 0x1

    :goto_3
    move-object/from16 v0, v48

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v46, "ComposeMediaItemAdapter"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "drawDecorViewAlbum mNewMarkItemModifiedTimek "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mNewMarkItemModifiedTime:J

    move-wide/from16 v48, v0

    invoke-virtual/range {v47 .. v49}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " latestModifiedTime "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mNewMarkItemModifiedTime:J

    move-wide/from16 v46, v0

    cmp-long v46, v46, v24

    if-nez v46, :cond_2

    const/16 v21, 0x0

    :cond_2
    if-nez v39, :cond_7

    if-nez v19, :cond_7

    if-nez v21, :cond_7

    if-nez v33, :cond_7

    if-nez v32, :cond_7

    if-nez v22, :cond_7

    const/16 v46, 0x0

    :goto_4
    return-object v46

    :cond_3
    const/16 v39, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getPlayTypeIconRsrc(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v33

    goto/16 :goto_2

    :cond_6
    const/16 v46, 0x0

    goto :goto_3

    :cond_7
    if-nez v13, :cond_8

    new-instance v13, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-direct {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_8
    const/16 v46, 0x3

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v31

    check-cast v31, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v33, :cond_14

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v46

    if-nez v46, :cond_14

    if-nez v31, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_9

    sget-boolean v46, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v46, :cond_13

    sget-boolean v46, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->USE_N_OS_DECOR:Z

    if-eqz v46, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailSplitAlbumPlayIconPaddingOver30()I

    move-result v29

    :goto_5
    new-instance v31, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v46, 0x1

    const/16 v47, 0x3

    move-object/from16 v0, v31

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v46

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v47

    move-object/from16 v0, v31

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v29

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v46, 0x3

    move-object/from16 v0, v31

    move/from16 v1, v46

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_9
    :goto_6
    const/16 v46, 0x4

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v32, :cond_22

    sget-boolean v46, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v46, :cond_16

    const v46, 0x7f020107

    move/from16 v0, v32

    move/from16 v1, v46

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v46, v0

    const v47, 0x7f020107

    invoke-virtual/range {v46 .. v47}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    :goto_7
    if-eqz v14, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewIconLeftPadding()I

    move-result v23

    if-nez v7, :cond_1b

    new-instance v7, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-direct {v7, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v46, 0x1

    const/16 v47, 0x3

    move/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    sget-boolean v46, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_IS_TABLET:Z

    if-eqz v46, :cond_19

    const v46, 0x7f020107

    move/from16 v0, v32

    move/from16 v1, v46

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v46, v0

    const v47, 0x7f0b03c4

    invoke-virtual/range {v46 .. v47}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v46, v0

    const v47, 0x7f0b03c2

    invoke-virtual/range {v46 .. v47}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v45

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    :goto_8
    sget-boolean v46, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v46, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconPaddingOver30()I

    move-result v29

    const/16 v46, 0x0

    const/16 v47, 0x0

    move/from16 v0, v29

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v29

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    :goto_9
    const/16 v46, 0x4

    move/from16 v0, v46

    invoke-virtual {v13, v7, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_a
    const/16 v46, 0x13

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/glcore/GlImageView;

    const v46, 0x7f020106

    move/from16 v0, v32

    move/from16 v1, v46

    if-ne v0, v1, :cond_20

    sget-boolean v46, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v46, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v46, v0

    const v47, 0x7f02010c

    invoke-virtual/range {v46 .. v47}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    :goto_b
    if-nez v6, :cond_1f

    if-eqz v14, :cond_a

    new-instance v6, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-direct {v6, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v46, 0x1

    const/16 v47, 0x3

    move/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    sget-boolean v46, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_IS_TABLET:Z

    if-eqz v46, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v46, v0

    const v47, 0x7f0b03c3

    invoke-virtual/range {v46 .. v47}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v42

    move/from16 v0, v42

    move/from16 v1, v42

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    :goto_c
    sget-boolean v46, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v46, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconPaddingOver30()I

    move-result v29

    :goto_d
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v46

    const/16 v47, 0x0

    const/16 v48, 0x0

    move/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v29

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v46, 0x13

    move/from16 v0, v46

    invoke-virtual {v13, v6, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_a
    :goto_e
    sget-boolean v46, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-nez v46, :cond_d

    const/16 v46, 0x7

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v37

    check-cast v37, Lcom/sec/android/gallery3d/glcore/GlImageView;

    const/16 v46, 0x1a

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v38

    check-cast v38, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewAlbumSelectCountFontColor()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewAlbumSelectCountFontSize()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewAlbumSelectCountBoxHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewAlbumSelectCountTopPaddingPixel()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewAlbumSelectCountRightPaddingPixel()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewAlbumSelectCountTextMarginRightPixel()I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewAlbumSelectCountTextMarginLeftPixel()I

    move-result v35

    if-lez v39, :cond_27

    if-nez v20, :cond_27

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v28

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v46, "ar"

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_b

    const-string/jumbo v46, "fa"

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_23

    :cond_b
    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    :goto_f
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-int v0, v0

    move/from16 v43, v0

    add-int v46, v35, v43

    add-int v11, v46, v36

    if-nez v37, :cond_26

    sget-boolean v46, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v46, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v46, v0

    const v47, 0x7f020202

    invoke-virtual/range {v46 .. v47}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    :goto_10
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, v40

    move/from16 v1, v46

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setTextBold()V

    invoke-virtual/range {v41 .. v41}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v15

    const-string/jumbo v46, "vi"

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_c

    const-string/jumbo v46, "th"

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_c

    const-string/jumbo v46, "km"

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_c

    const-string/jumbo v46, "lo"

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_25

    :cond_c
    const/16 v44, 0x0

    :goto_11
    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v46

    move/from16 v2, v44

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setTextSize(F)V

    const/16 v46, 0x2

    const/16 v47, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    new-instance v37, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v10, v9, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v46, 0x3

    const/16 v47, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v11, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/16 v46, 0x7

    move-object/from16 v0, v37

    move/from16 v1, v46

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/16 v46, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_d
    :goto_12
    const/16 v46, 0x6

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v27

    check-cast v27, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-gtz v39, :cond_2b

    if-eqz v21, :cond_2b

    if-nez v27, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->addNewMarkView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_e
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const-string/jumbo v47, "is_new_item_present"

    const/16 v48, 0x1

    invoke-static/range {v46 .. v48}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v46

    move/from16 v0, v21

    move/from16 v1, v46

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const-string/jumbo v47, "is_new_item_present"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_f
    const/16 v46, 0xa

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v34

    check-cast v34, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v22, :cond_2e

    invoke-static/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/LogicalBucketList;->isLogicalAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v46

    if-nez v46, :cond_2e

    if-nez v34, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v46, v0

    const v47, 0x7f0201d1

    invoke-virtual/range {v46 .. v47}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_10

    new-instance v34, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v46, 0x1

    const/16 v47, 0x3

    move-object/from16 v0, v34

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    sget-boolean v46, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v46, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconPaddingOver30()I

    move-result v46

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconPaddingOver30()I

    move-result v49

    move-object/from16 v0, v34

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconWidthOver30()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconHeightOver30()I

    move-result v47

    move-object/from16 v0, v34

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    :goto_14
    const/16 v46, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setFitMode(I)V

    const/16 v46, 0xa

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_10
    :goto_15
    const/16 v46, 0x9

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v19, :cond_2f

    if-nez v12, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v46, v0

    const v47, 0x7f020357

    invoke-virtual/range {v46 .. v47}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    new-instance v12, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-direct {v12, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v46, 0x2

    const/16 v47, 0x2

    move/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v12, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/16 v46, 0x9

    move/from16 v0, v46

    invoke-virtual {v13, v12, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_11
    :goto_16
    move-object/from16 v46, v13

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconPaddingOver30()I

    move-result v29

    goto/16 :goto_5

    :cond_13
    new-instance v31, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v46, 0x2

    const/16 v47, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v46

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v47

    move-object/from16 v0, v31

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/16 v46, 0x3

    move-object/from16 v0, v31

    move/from16 v1, v46

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    goto/16 :goto_6

    :cond_14
    if-eqz v31, :cond_9

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_6

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto/16 :goto_7

    :cond_16
    const v46, 0x7f020106

    move/from16 v0, v32

    move/from16 v1, v46

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v46, v0

    const v47, 0x7f020105

    invoke-virtual/range {v46 .. v47}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto/16 :goto_7

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto/16 :goto_7

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v46, v0

    const v47, 0x7f0b03c3

    invoke-virtual/range {v46 .. v47}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v42

    move/from16 v0, v42

    move/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_8

    :cond_19
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v46

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_8

    :cond_1a
    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewCameraIconMarginBottom()I

    move-result v48

    move/from16 v0, v23

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    goto/16 :goto_9

    :cond_1b
    invoke-virtual {v7, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v46, v0

    const v47, 0x7f02010b

    invoke-virtual/range {v46 .. v47}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto/16 :goto_b

    :cond_1d
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v46

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_c

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewCameraIconMarginBottom()I

    move-result v29

    goto/16 :goto_d

    :cond_1f
    invoke-virtual {v6, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e

    :cond_20
    if-eqz v6, :cond_a

    invoke-virtual {v13, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_e

    :cond_21
    if-eqz v7, :cond_a

    invoke-virtual {v13, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_e

    :cond_22
    if-eqz v7, :cond_a

    invoke-virtual {v13, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_e

    :cond_23
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v40

    goto/16 :goto_f

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v46, v0

    const v47, 0x7f020200

    invoke-virtual/range {v46 .. v47}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto/16 :goto_10

    :cond_25
    int-to-float v0, v8

    move/from16 v46, v0

    iget v0, v15, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v47, v0

    iget v0, v15, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v48, v0

    sub-float v47, v47, v48

    sub-float v46, v46, v47

    const/high16 v47, 0x40000000    # 2.0f

    div-float v46, v46, v47

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->round(F)I

    move-result v44

    goto/16 :goto_11

    :cond_26
    move-object/from16 v0, v37

    invoke-virtual {v0, v11, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/16 v46, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v41

    check-cast v41, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-eqz v41, :cond_d

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_27
    if-eqz v20, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectLogicalCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v46

    if-lez v46, :cond_29

    if-nez v38, :cond_28

    new-instance v38, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v46, v0

    const v47, 0x7f020202

    invoke-virtual/range {v46 .. v47}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v10, v9, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v46, 0x3

    const/16 v47, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    div-int/lit8 v46, v8, 0x2

    div-int/lit8 v47, v8, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/16 v46, 0x1a

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    goto/16 :goto_12

    :cond_28
    div-int/lit8 v46, v8, 0x2

    div-int/lit8 v47, v8, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_12

    :cond_29
    if-nez v37, :cond_2a

    if-eqz v38, :cond_d

    :cond_2a
    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_12

    :cond_2b
    if-eqz v27, :cond_e

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_13

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v46, v0

    const v47, 0x7f0b0281

    invoke-virtual/range {v46 .. v47}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v46

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v49, v0

    const v50, 0x7f0b0280

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v49

    move-object/from16 v0, v34

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    sget-boolean v46, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_IS_TABLET:Z

    if-eqz v46, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v46, v0

    const v47, 0x7f0b03c3

    invoke-virtual/range {v46 .. v47}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v42

    move-object/from16 v0, v34

    move/from16 v1, v42

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_14

    :cond_2d
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v46

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v47

    move-object/from16 v0, v34

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_14

    :cond_2e
    if-eqz v34, :cond_10

    move-object/from16 v0, v34

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_15

    :cond_2f
    if-eqz v12, :cond_11

    invoke-virtual {v13, v12}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_16
.end method

.method private drawLocationLabelBorder(Lcom/sec/android/gallery3d/glcore/GlView;Z)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 13

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_9

    if-nez p1, :cond_2

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    if-nez v0, :cond_1

    if-nez v6, :cond_3

    const/4 v7, 0x0

    :goto_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v10, 0x7f0202ee

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-boolean v9, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->USE_N_OS_DECOR:Z

    if-eqz v9, :cond_0

    instance-of v9, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v9, :cond_0

    move-object v9, v1

    check-cast v9, Landroid/graphics/drawable/GradientDrawable;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0395

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0b0396

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget-boolean v9, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0b038f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_2
    sget-boolean v9, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0b038c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_3
    sget-boolean v9, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0b038a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_4
    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mEasyMode:Z

    if-eqz v9, :cond_7

    move v8, v4

    :goto_5
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x3

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    add-int v9, v7, v5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlView;->getHeight()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    sget-boolean v9, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v9, :cond_8

    add-int v9, v3, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    :goto_6
    const/16 v9, 0xd

    invoke-virtual {p1, v0, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    :goto_7
    return-object p1

    :cond_2
    const/16 v9, 0xd

    invoke-virtual {p1, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    const/16 v9, 0x10

    invoke-virtual {p1, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/glcore/GlTextView;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v7

    goto/16 :goto_1

    :cond_4
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0b038e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_2

    :cond_5
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0b038b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_3

    :cond_6
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0b0389

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_4

    :cond_7
    add-int v9, v4, v3

    add-int/2addr v9, v2

    div-int/lit8 v10, v5, 0x2

    sub-int v8, v9, v10

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v10, v8, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    goto :goto_6

    :cond_9
    if-eqz p1, :cond_1

    const/16 v9, 0xd

    invoke-virtual {p1, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_7
.end method

.method private drawTitleBorder(Lcom/sec/android/gallery3d/glcore/GlView;ZI)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 10

    const v9, 0x7f0b0396

    const/4 v2, 0x0

    const/16 v8, 0xd

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_7

    if-nez p1, :cond_2

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    if-nez v0, :cond_5

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlView;->getWidth()I

    move-result v4

    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v6, 0x7f0202ee

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_0

    instance-of v5, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_0

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0395

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    if-nez v3, :cond_4

    :goto_2
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setScaleRatio(F)V

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    add-int v5, v4, v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlView;->getHeight()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {p1, v0, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    :goto_3
    return-object p1

    :cond_2
    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {p1, p3}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlTextView;

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v4

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    move v4, v2

    :goto_4
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlView;->getHeight()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v5, v4, v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlView;->getHeight()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v4

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_1

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_3
.end method

.method private getContentTypeIconRsrc(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Z)I
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/LocalAlbum;

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/UnionAlbum;

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;

    if-eqz v2, :cond_8

    :cond_0
    if-nez p3, :cond_8

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->isCameraAlbum()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v2

    sget v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->GEAR_BUCKET_ID:I

    if-ne v2, v3, :cond_6

    :cond_1
    sget-boolean v2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardCameraPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v1, 0x7f020107

    :cond_2
    :goto_0
    return v1

    :cond_3
    const v1, 0x7f020108

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardCameraPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v1, 0x7f020106

    :goto_1
    goto :goto_0

    :cond_5
    const v1, 0x7f020105

    goto :goto_1

    :cond_6
    invoke-static {v0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v2, :cond_7

    const v1, 0x7f02010c

    :goto_2
    goto :goto_0

    :cond_7
    const v1, 0x7f02010b

    goto :goto_2

    :cond_8
    instance-of v2, p1, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;

    if-nez v2, :cond_9

    instance-of v2, p1, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum;

    if-nez v2, :cond_9

    instance-of v2, p2, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-nez v2, :cond_9

    instance-of v2, p2, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    if-eqz v2, :cond_2

    :cond_9
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseBaidu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_a

    const v1, 0x7f020100

    goto :goto_0

    :cond_a
    const v1, 0x7f020101

    goto :goto_0
.end method

.method private getLabelTextView(II)Lcom/sec/android/gallery3d/glcore/GlTextView;
    .locals 10

    const/4 v8, 0x2

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewMarkFontSize()I

    move-result v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f100221

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    int-to-float v7, v3

    invoke-static {v6, v7, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v7

    sget-boolean v6, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->USE_N_OS_DECOR:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->useTabletGUI()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v6

    :goto_0
    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v4, v8, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    const/4 v5, 0x0

    sget-boolean v6, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->sIsTallCategoryLanguage:Z

    if-nez v6, :cond_0

    int-to-float v6, p2

    iget v7, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v8, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    :cond_0
    sget v6, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->BOLD_FONT_START_END_PADDING:I

    invoke-virtual {v4, v6, v5, v9, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v6

    sget v7, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->BOLD_FONT_START_END_PADDING:I

    add-int/2addr v6, v7

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    return-object v4

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoBoldFont()Landroid/graphics/Typeface;

    move-result-object v6

    goto :goto_0
.end method

.method private getLocationDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    sget-boolean v1, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_DREAM_MAP_VIEW:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v2, 0x7f0201f1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v1, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v2, 0x7f0201f2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v2, 0x7f0201f0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getPlayIconWidth(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewPlayIconWidthOver30()I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewFastSlowIconWidthOver30()I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewFastSlowIconWidthOver30()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0201e7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initLocationAttributes()V
    .locals 3

    sget-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0393

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationTextSize:I

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0398

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationEasyModeTextSize:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseSocialStoryView:Z

    if-eqz v0, :cond_1

    const v0, 0x7f100114

    :goto_1
    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationTextColor:I

    sget-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b038f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0391

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationTextMargin:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0390

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationTextBottomMargin:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0388

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationIconHeight:I

    sget-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b038c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationIconWidth:I

    sget-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b038a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_4
    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationIconMargin:I

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mEasyMode:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    mul-int/lit8 v0, v0, 0x2

    :goto_5
    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationViewWidth:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationViewEasyModeHeight:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b03c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationViewHeight:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b03be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationViewTopMargin:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b073f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationViewLeftOffset:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0392

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationTextSize:I

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f100113

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b038e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b038b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0389

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_4

    :cond_5
    iget v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationIconWidth:I

    iget v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationIconMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_5
.end method

.method private isVideoType(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addNewMarkView(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    sget-boolean v5, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_ALBUM_GUI:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v6, 0x7f02010a

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f100024

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewNewLabelTopPadding()I

    move-result v5

    mul-int/lit8 v3, v5, 0x2

    const v5, 0x7f0a02c3

    invoke-direct {p0, v5, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getLabelTextView(II)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v4

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v5, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_ALBUM_GUI:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewNewLabelPaddingOver30()I

    move-result v1

    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewMarkTopMargin()I

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewMarkRightMargin()I

    move-result v6

    invoke-virtual {v2, v7, v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v5

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/4 v5, 0x6

    invoke-virtual {p1, v2, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/16 v5, 0xc

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v6, 0x7f020109

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewNewLabelPadding()I

    move-result v1

    goto :goto_1
.end method

.method drawAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)V
    .locals 16

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0b08e2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0b0396

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0b0397

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    check-cast v14, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v14, v14, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseSocialStoryView:Z

    if-eqz v14, :cond_3

    const v14, 0x7f100226

    :goto_1
    invoke-static {v15, v14}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    mul-int/lit8 v14, v5, 0x2

    sub-int v3, v13, v14

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mEasyMode:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0b0398

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f100225

    invoke-static {v14, v15}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    :cond_0
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/glcore/GlTextView;

    int-to-float v14, v10

    invoke-static {v14}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v7

    sget-boolean v14, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->USE_N_OS_DECOR:Z

    if-eqz v14, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setTextViewPaint(Landroid/text/TextPaint;)V

    const/4 v14, 0x0

    int-to-float v15, v3

    invoke-static {v1, v14, v15, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v4

    if-nez v11, :cond_4

    int-to-float v14, v10

    invoke-static {v4, v14, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setTextViewPaint(Landroid/text/TextPaint;)V

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_2
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-virtual {v14}, Landroid/text/TextPaint;->descent()F

    move-result v14

    float-to-int v2, v14

    const/4 v14, 0x1

    const/4 v15, 0x2

    invoke-virtual {v11, v14, v15}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    const/4 v14, 0x0

    invoke-virtual {v11, v14, v2, v9, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v12

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v13

    add-int v14, v13, v5

    add-int/2addr v14, v9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mAlbumLabelWidth:I

    invoke-virtual {v11, v13, v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    return-void

    :cond_2
    const-string/jumbo v1, ""

    goto/16 :goto_0

    :cond_3
    const v14, 0x7f100224

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v14

    int-to-float v15, v10

    invoke-virtual {v14, v15}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v11, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setTextViewPaint(Landroid/text/TextPaint;)V

    goto :goto_2
.end method

.method drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;ZZ)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 10

    const/high16 v9, 0x3f000000    # 0.5f

    const/16 v8, 0x69

    const/16 v7, 0xd

    const/4 v6, 0x2

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    if-nez p1, :cond_3

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    if-nez v0, :cond_1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsFolderModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v3, 0x7f020061

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    :goto_1
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setScaleRatio(F)V

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v0, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    :goto_2
    if-eqz p3, :cond_8

    if-nez p1, :cond_7

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_3
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v3, 0x7f020148

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setScaleRatio(F)V

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v0, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_2
    :goto_4
    return-object p1

    :cond_3
    invoke-virtual {p1, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v3, 0x7f02005f

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b047e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100112

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto/16 :goto_1

    :cond_5
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto/16 :goto_1

    :cond_6
    if-eqz p1, :cond_1

    invoke-virtual {p1, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto/16 :goto_3

    :cond_8
    if-eqz p1, :cond_2

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_4
.end method

.method drawCheckBox(Lcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v2, p2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v2, 0x7f020113

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v2, 0x7f020112

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public drawCloudIcon(Lcom/sec/android/gallery3d/glcore/GlView;II)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 11

    const/16 v9, 0x18

    const/4 v10, 0x0

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mAlbumMode:Z

    if-eqz v8, :cond_0

    move-object v1, p1

    :goto_0
    return-object v1

    :cond_0
    if-ltz p2, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt p2, v8, :cond_2

    :cond_1
    const-string/jumbo v8, "ComposeMediaItemAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "drawCloudIcon failed : pos = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v8, p2

    if-eqz v0, :cond_3

    iget v8, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-lt p3, v8, :cond_4

    :cond_3
    const-string/jumbo v8, "ComposeMediaItemAdapter"

    const-string/jumbo v9, "drawCloudIcon failed : position is over index or album is null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    goto :goto_0

    :cond_4
    iget-object v8, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v2, v8, p3

    instance-of v8, v2, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    if-eqz v8, :cond_8

    move-object v8, v2

    check-cast v8, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloudExistedItem()Z

    move-result v8

    if-eqz v8, :cond_a

    if-nez p1, :cond_5

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p1}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    :cond_5
    const/4 v3, 0x0

    monitor-enter p1

    const/16 v8, 0x18

    :try_start_0
    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v5, :cond_6

    const/4 v3, 0x1

    new-instance v5, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x18

    invoke-virtual {p1, v5, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_8

    const/4 v6, 0x0

    move-object v8, v2

    check-cast v8, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloudOnlyItem()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v9, 0x7f0201e5

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_7
    :goto_1
    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewCloudIconMargin()I

    move-result v7

    invoke-virtual {v5, v10, v7, v10, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewCloudIconSize()I

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewCloudIconSize()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    :cond_8
    :goto_2
    move-object v1, p1

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    :cond_9
    check-cast v2, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isLocalCloudItem()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v9, 0x7f0201e4

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    :cond_a
    if-eqz p1, :cond_8

    invoke-virtual {p1, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v4, :cond_8

    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_2
.end method

.method public drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 36

    sget-boolean v32, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_SECRET_BOX:Z

    if-eqz v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2

    const/16 v18, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v14, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSelectionSet:Z

    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/LocalVideo;

    move/from16 v32, v0

    if-nez v32, :cond_0

    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;

    move/from16 v32, v0

    if-nez v32, :cond_0

    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionVideo;

    move/from16 v32, v0

    if-eqz v32, :cond_3

    :cond_0
    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    move/from16 v32, v0

    if-eqz v32, :cond_4

    move-object/from16 v32, p2

    check-cast v32, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    invoke-interface/range {v32 .. v32}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->isCloudUploading()Z

    move-result v32

    if-eqz v32, :cond_4

    const/16 v17, 0x1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, "gif"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_5

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mIconMarginLeft:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getPlayTypeIconRsrc(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v24

    if-nez v24, :cond_6

    if-nez v18, :cond_6

    if-nez v14, :cond_6

    if-nez v16, :cond_6

    if-nez v17, :cond_6

    if-nez v15, :cond_6

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setNeedDecorDraw(Z)V

    const/4 v5, 0x0

    :cond_1
    :goto_4
    return-object v5

    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    goto :goto_1

    :cond_4
    const/16 v17, 0x0

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    goto :goto_3

    :cond_6
    new-instance v5, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-direct {v5, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    const/16 v32, 0x3

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v23

    check-cast v23, Lcom/sec/android/gallery3d/glcore/GlImageView;

    const/16 v32, 0xf

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-eqz v24, :cond_10

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v32

    if-nez v32, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mCurItemWidthForPlayIcon:I

    move/from16 v32, v0

    if-lez v32, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mIsValidForPlayIcon:Z

    move/from16 v32, v0

    if-nez v32, :cond_8

    :cond_7
    const/16 v32, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setNeedDecorDraw(Z)V

    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    if-nez v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    if-eqz v22, :cond_9

    new-instance v23, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v32, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v32, :cond_d

    const/16 v32, 0x1

    const/16 v33, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewPlayIconPaddingStartOver30()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewPlayIconPaddingBottomOver30()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getPlayIconWidth(I)I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewPlayIconHeightOver30()I

    move-result v12

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    :goto_5
    const/16 v32, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_9
    if-eqz v16, :cond_a

    if-nez v10, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDuration()I

    move-result v9

    if-nez v9, :cond_f

    const-string/jumbo v32, ""

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationTextSize:Ljava/lang/Integer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationTextColor:Ljava/lang/Integer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v35

    invoke-static/range {v32 .. v35}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v10

    sget-boolean v32, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    move/from16 v0, v32

    invoke-virtual {v10, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setUseCenterAlign(Z)V

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v32

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationTextSize:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationStrokeColor:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationmStrokeWidth:I

    move/from16 v34, v0

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v10, v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setStrokePaint(III)V

    const/16 v32, 0x3

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v10, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationTextPadding:Ljava/lang/Integer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDurationTextPaddingBottom:Ljava/lang/Integer;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    const/16 v32, 0xf

    move/from16 v0, v32

    invoke-virtual {v5, v10, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_a
    :goto_7
    const/16 v32, 0xa

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v28

    check-cast v28, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v18, :cond_15

    if-nez v28, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v32, v0

    const v33, 0x7f0201d1

    invoke-virtual/range {v32 .. v33}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    new-instance v28, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v32, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v32, :cond_13

    const/16 v32, 0x3

    const/16 v33, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mPrivateIconMarginBottom:I

    move/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    :goto_8
    sget-boolean v32, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_IS_TABLET:Z

    if-eqz v32, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v32, v0

    const v33, 0x7f0b03c3

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    :goto_9
    const/16 v32, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setFitMode(I)V

    const/16 v32, 0xa

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_b
    :goto_a
    const/16 v32, 0xb

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v14, :cond_17

    if-nez v8, :cond_c

    new-instance v8, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-direct {v8, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mEasyMode:Z

    move/from16 v32, v0

    if-eqz v32, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v32, v0

    const v33, 0x7f0200c0

    invoke-virtual/range {v32 .. v33}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v32

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v8, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    :goto_b
    const/16 v32, 0x3

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v8, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDeleteIconMargin:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDeleteIconMargin:I

    move/from16 v34, v0

    const/16 v35, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v32, 0xb

    move/from16 v0, v32

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_c
    :goto_c
    const/16 v32, 0x19

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v25

    check-cast v25, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v17, :cond_18

    if-nez v25, :cond_1

    new-instance v25, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v32, v0

    const v33, 0x7f0201e6

    invoke-virtual/range {v32 .. v33}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewCloudIconMargin()I

    move-result v30

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v32

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v33

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/16 v32, 0x3

    const/16 v33, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/16 v32, 0x19

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    goto/16 :goto_4

    :cond_d
    const/16 v32, 0x2

    const/16 v33, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    sget v32, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->sDefaultPlayIconWidth:I

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumTimeViewVHGap()[I

    move-result-object v32

    const/16 v33, 0x0

    aget v32, v32, v33

    sget v33, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->DEFALUT_ITEM_COL_FOR_PLAYICON:I

    add-int/lit8 v33, v33, 0x1

    mul-int v11, v32, v33

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayShortSideSize()I

    move-result v32

    sub-int v32, v32, v11

    sget v33, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->DEFALUT_ITEM_COL_FOR_PLAYICON:I

    div-int v32, v32, v33

    sput v32, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->sDefaultPlayIconWidth:I

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewPlayIconSize()I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mCurItemWidthForPlayIcon:I

    move/from16 v33, v0

    mul-int v32, v32, v33

    sget v33, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->sDefaultPlayIconWidth:I

    div-int v19, v32, v33

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    div-int/lit16 v0, v9, 0x3e8

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/sec/android/gallery3d/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_6

    :cond_10
    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->addGIFMarkView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    goto/16 :goto_7

    :cond_11
    if-eqz v23, :cond_12

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_12
    if-eqz v10, :cond_a

    invoke-virtual {v5, v10}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_7

    :cond_13
    const/16 v32, 0x1

    const/16 v33, 0x3

    move-object/from16 v0, v28

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mPrivateIconMarginBottom:I

    move/from16 v34, v0

    move-object/from16 v0, v28

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    goto/16 :goto_8

    :cond_14
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v32

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v33

    move-object/from16 v0, v28

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_9

    :cond_15
    if-eqz v28, :cond_b

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_a

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v32, v0

    const v33, 0x7f020217

    invoke-virtual/range {v32 .. v33}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v32

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v8, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_b

    :cond_17
    if-eqz v8, :cond_c

    invoke-virtual {v5, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_c

    :cond_18
    if-eqz v25, :cond_1

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_4
.end method

.method drawLocationLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)V
    .locals 22

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaSet;->getLocation()Ljava/lang/String;

    move-result-object v5

    :goto_0
    sget-boolean v18, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->MASS_LOCATION_CONCEPT:Z

    if-eqz v18, :cond_7

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaSet;->getAddrValues()[[D

    move-result-object v18

    if-eqz v18, :cond_7

    const/4 v7, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    check-cast v18, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mAlbumLabelWidth:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mEasyMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationEasyModeTextSize:I

    move/from16 v17, v0

    :goto_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationTextColor:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    check-cast v18, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dimLocationObj(Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z

    move-result v18

    if-eqz v18, :cond_0

    const v18, 0x66ffffff

    and-int v9, v9, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationViewLeftOffset:I

    move/from16 v18, v0

    sub-int v6, v6, v18

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mEasyMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v18, v0

    sub-int v18, v6, v18

    add-int/lit8 v6, v18, -0x2

    :goto_3
    if-nez v5, :cond_1

    const-string/jumbo v5, ""

    :cond_1
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v15

    sget-boolean v18, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->USE_N_OS_DECOR:Z

    if-eqz v18, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2
    const/16 v18, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v16

    check-cast v16, Lcom/sec/android/gallery3d/glcore/GlTextView;

    const/16 v18, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getLocationDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/16 v18, 0x3

    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    if-nez v16, :cond_d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    if-eqz v7, :cond_4

    :cond_3
    const/16 v18, 0x0

    int-to-float v0, v6

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v5, v0, v1, v15}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    sget-boolean v18, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->USE_N_OS_DECOR:Z

    if-eqz v18, :cond_a

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v18

    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v8, v0, v9, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v16

    const/16 v18, 0x10

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mEasyMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    const/16 v18, 0x3

    const/16 v19, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    :cond_4
    :goto_5
    if-nez v7, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_18

    if-eqz v16, :cond_18

    :cond_5
    if-eqz v16, :cond_16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v12

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationViewWidth:I

    move/from16 v18, v0

    add-int v19, v12, v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mEasyMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationViewEasyModeHeight:I

    move/from16 v18, v0

    :goto_7
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationTextBottomMargin:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    :goto_8
    return-void

    :cond_6
    const-string/jumbo v5, ""

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationTextSize:I

    move/from16 v17, v0

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationIconWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationIconMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationTextMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int/lit8 v18, v18, 0x2

    sub-int v6, v6, v18

    goto/16 :goto_3

    :cond_a
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v18

    goto/16 :goto_4

    :cond_b
    if-nez v11, :cond_c

    new-instance v11, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_c
    if-eqz v10, :cond_4

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v18

    invoke-virtual {v10, v9, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v18, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/16 v18, 0x3

    const/16 v19, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationIconWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationIconMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationTextMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    const/16 v18, 0x3

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationIconWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationIconHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_5

    :cond_d
    const/4 v14, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/text/TextPaint;->getColor()I

    move-result v18

    move/from16 v0, v18

    if-eq v9, v0, :cond_e

    const/4 v14, 0x1

    :cond_e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_f

    if-eqz v7, :cond_15

    :cond_f
    const/16 v18, 0x0

    int-to-float v0, v6

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v5, v0, v1, v15}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v8

    if-eqz v14, :cond_10

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/text/TextPaint;->setColor(I)V

    :cond_10
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setTextSize(F)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mEasyMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    const/16 v18, 0x3

    const/16 v19, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    if-eqz v14, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/glcore/GlTextView;->invalidate()V

    goto/16 :goto_5

    :cond_11
    if-nez v11, :cond_13

    new-instance v11, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    if-eqz v10, :cond_12

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v18

    invoke-virtual {v10, v9, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v18, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/16 v18, 0x3

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationIconWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationIconHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    :cond_12
    :goto_9
    const/16 v18, 0x3

    const/16 v19, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationIconWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationIconMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationTextMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    const/16 v18, 0x3

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    goto/16 :goto_5

    :cond_13
    if-eqz v14, :cond_14

    if-eqz v10, :cond_14

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v18

    invoke-virtual {v10, v9, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    const/16 v18, 0x3

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationSideMargin:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    goto/16 :goto_9

    :cond_15
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    if-eqz v11, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_5

    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationViewHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mLocationViewTopMargin:I

    move/from16 v20, v0

    sub-int v18, v18, v20

    goto/16 :goto_7

    :cond_18
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_8
.end method

.method drawSelectedCountView(Lcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget-object v6, p2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9, v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSetSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    if-nez p1, :cond_2

    new-instance v5, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    sget-boolean v9, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_IS_TABLET:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v10, 0x7f020201

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    invoke-virtual {v5, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v11, v11, v11, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    :goto_1
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewAlbumSelectCountFontColor()I

    move-result v3

    const/16 v4, 0x1c

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v8, :cond_3

    int-to-float v9, v4

    invoke-static {v7, v9, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v8

    invoke-virtual {v8, v12, v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v5, v8, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_2
    return-object v5

    :cond_0
    sget-boolean v9, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v10, 0x7f020202

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_3
    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v10, 0x7f020200

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    :cond_2
    move-object v5, p1

    check-cast v5, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_1

    :cond_3
    invoke-virtual {v8, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected drawThumbStroke(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 5

    const/16 v4, 0x12

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v3, 0x7f0200a2

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-object p1
.end method

.method drawThumbnailImage(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 3

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->readyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p2, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p2, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p2, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p2, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p2, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->readyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public forceReload()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->forceReload()V

    return-void
.end method

.method public getAlbumIndexFromFilePath(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAlbumIndexFromFilePath(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAlbumIndexFromMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAlbumIndexFromMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    return v0
.end method

.method public getAllCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAllCount()I

    move-result v0

    return v0
.end method

.method public getAllItem(IZ)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllItemCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAllItemCount(I)I

    move-result v0

    return v0
.end method

.method public getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseSmartClustering:Z

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCodeForMediaItemFromSmallItemList(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    const-string/jumbo v2, "ComposeMediaItemAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fail to find code from AlbumInfo. retry:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCount()I

    move-result v0

    return v0
.end method

.method public getCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCount(I)I

    move-result v0

    return v0
.end method

.method public getCropRect(IILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)V
    .locals 18

    const/4 v5, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p3

    iput-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iput-boolean v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iput-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iput-boolean v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mReorderEnable:Z

    if-ltz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v13, v13, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    move/from16 v0, p1

    if-lt v0, v13, :cond_2

    :cond_1
    const-string/jumbo v13, "ComposeMediaItemAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getCropRect pos = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", size = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v15, v15, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v13, v13, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v1, v13, p1

    if-eqz v1, :cond_3

    iget v13, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    move/from16 v0, p2

    if-lt v0, v13, :cond_5

    :cond_3
    if-nez v1, :cond_4

    const-string/jumbo v13, "ComposeMediaItemAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getCropRect album is null = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string/jumbo v13, "ComposeMediaItemAdapter"

    invoke-virtual {v6}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string/jumbo v13, "ComposeMediaItemAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getCropRect position is over index  = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v13, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v11, v13, p2

    if-nez v11, :cond_6

    const-string/jumbo v13, "ComposeMediaItemAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getCropRect mediaItem is null = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", sub = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v13

    move-object/from16 v0, p3

    iput v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    iget-object v13, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    aget-object v9, v13, p2

    if-nez v9, :cond_8

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x4

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v14

    if-ne v13, v14, :cond_9

    const/4 v13, 0x2

    move-object/from16 v0, p3

    iput v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    :goto_2
    if-nez v2, :cond_c

    move-object/from16 v0, p3

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    if-nez v13, :cond_c

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->isValid()Z

    move-result v10

    :cond_7
    const-string/jumbo v13, "ComposeMediaItemAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getCropRect bitmap is null : index = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " | "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", path = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", state = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iput-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iput-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_8
    iget-object v2, v9, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_9
    const/4 v13, 0x1

    move-object/from16 v0, p3

    iput v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    goto :goto_2

    :cond_a
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->needCloudOnlyThumb()Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x3

    move-object/from16 v0, p3

    iput v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    goto :goto_2

    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p3

    iput v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    goto :goto_2

    :cond_c
    move-object/from16 v0, p3

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    if-nez v13, :cond_13

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v0, p3

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    if-eqz v13, :cond_f

    const/4 v5, 0x0

    :cond_d
    :goto_3
    if-nez v5, :cond_e

    int-to-float v13, v12

    int-to-float v14, v8

    move-object/from16 v0, p3

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    move/from16 v17, v0

    invoke-static/range {v13 .. v17}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCenterCropRect(FFFFI)Landroid/graphics/Rect;

    move-result-object v5

    :cond_e
    move-object/from16 v0, p3

    iput-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_f
    sget-boolean v13, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_FACE_THUMBNAIL:Z

    if-eqz v13, :cond_d

    instance-of v13, v11, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v13, :cond_10

    instance-of v13, v11, Lcom/sec/android/gallery3d/data/UnionImage;

    if-nez v13, :cond_10

    instance-of v13, v11, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v13, :cond_d

    :cond_10
    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v13

    if-nez v13, :cond_d

    instance-of v13, v11, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v13, :cond_11

    check-cast v11, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/LocalImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v7

    :goto_4
    if-eqz v7, :cond_d

    move-object/from16 v0, p3

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    invoke-static {v12, v8, v7, v13}, Lcom/sec/samsung/gallery/util/FaceUtil;->calcFaceCropRect(IILandroid/graphics/RectF;I)Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_3

    :cond_11
    instance-of v13, v11, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v13, :cond_12

    check-cast v11, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/UnionImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v7

    goto :goto_4

    :cond_12
    check-cast v11, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v7

    goto :goto_4

    :cond_13
    const/4 v13, 0x3

    move-object/from16 v0, p3

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    if-ne v13, v14, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResourceMgr:Lcom/sec/android/gallery3d/util/ResourceManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v15

    neg-int v15, v15

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/gallery3d/util/ResourceManager;->getCloudOnlyThumbnailSize(Landroid/content/Context;I)I

    move-result v4

    int-to-float v13, v4

    int-to-float v14, v4

    move-object/from16 v0, p3

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    move/from16 v17, v0

    invoke-static/range {v13 .. v17}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCenterCropRect(FFFFI)Landroid/graphics/Rect;

    move-result-object v13

    move-object/from16 v0, p3

    iput-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iput-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResourceMgr:Lcom/sec/android/gallery3d/util/ResourceManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumnailSize(Landroid/content/Context;I)I

    move-result v3

    int-to-float v13, v3

    int-to-float v14, v3

    move-object/from16 v0, p3

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    move/from16 v17, v0

    invoke-static/range {v13 .. v17}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCenterCropRect(FFFFI)Landroid/graphics/Rect;

    move-result-object v13

    move-object/from16 v0, p3

    iput-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iput-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method public getCurrentState(II)I
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz p1, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt p1, v5, :cond_2

    :cond_0
    const-string/jumbo v5, "ComposeMediaItemAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSelectState pos = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", size = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v7

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v5, p1

    if-eqz v0, :cond_1

    if-gez p2, :cond_6

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGroupSelect:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v5, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v5, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSetSelectedCount(Ljava/util/ArrayList;)I

    move-result v1

    :goto_1
    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-lt v1, v5, :cond_4

    move v4, v6

    :goto_2
    if-eqz v4, :cond_5

    move v5, v6

    :goto_3
    move v7, v5

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v8, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v5, v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSetSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v1

    goto :goto_1

    :cond_4
    move v4, v7

    goto :goto_2

    :cond_5
    move v5, v7

    goto :goto_3

    :cond_6
    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    array-length v5, v5

    if-lt p2, v5, :cond_7

    const-string/jumbo v5, "ComposeMediaItemAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSelectState subPos = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", length = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    array-length v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v2, v5, p2

    if-nez v2, :cond_8

    const-string/jumbo v5, "ComposeMediaItemAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSelectState mediaItem is null = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", sub = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v3, v6

    :goto_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v7, 0x2

    :cond_9
    or-int/2addr v3, v7

    move v7, v3

    goto/16 :goto_0

    :cond_a
    move v3, v7

    goto :goto_4
.end method

.method public getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemImage(II)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getImage(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSetHasLatLng(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getAddrValues()[[D

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMediaSetLocation(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getLocation()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaSetName(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getPlayTypeIconRsrc(Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 4

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-wide/16 v2, 0x200

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->isVideoType(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableSlowFastMotion:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v2, :cond_2

    const v1, 0x7f0201ea

    :goto_1
    goto :goto_0

    :cond_2
    const v1, 0x7f0201f7

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableSlowFastMotion:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v2, :cond_4

    const v1, 0x7f0201e7

    :goto_2
    goto :goto_0

    :cond_4
    const v1, 0x7f0201f5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableHyperMotion:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v2, :cond_6

    const v1, 0x7f0201e9

    :goto_3
    goto :goto_0

    :cond_6
    const v1, 0x7f0201f6

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFlipPhoto:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-boolean v2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v2, :cond_8

    const v1, 0x7f0201e8

    :goto_4
    goto :goto_0

    :cond_8
    const v1, 0x7f0201f9

    goto :goto_4

    :cond_9
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_a

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v2

    sget v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->WECHATSIGHT_ALBUM_BUCKET_ID:I

    if-eq v2, v3, :cond_a

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v2

    sget v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_WECHATSIGHT_ALBUM_BUCKET_ID:I

    if-ne v2, v3, :cond_b

    :cond_a
    const v1, 0x7f020168

    goto/16 :goto_0

    :cond_b
    const-wide/32 v2, 0x8000000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->Support360Contents:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-boolean v2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v2, :cond_c

    const v1, 0x7f0201e2

    :goto_5
    goto/16 :goto_0

    :cond_c
    const v1, 0x7f0201f8

    goto :goto_5

    :cond_d
    sget-boolean v2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v2, :cond_e

    const v1, 0x7f0201eb

    :goto_6
    goto/16 :goto_0

    :cond_e
    const v1, 0x7f0201f3

    goto :goto_6

    :cond_f
    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v2, :cond_10

    const v1, 0x7f0201e3

    :goto_7
    goto/16 :goto_0

    :cond_10
    const v1, 0x7f0201f4

    goto :goto_7
.end method

.method getPlayTypeIconRsrc(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaSet;)I
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getPlayTypeIconRsrc(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method public getScreenNailImage()Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getSelectableAlbumCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getSelectableAlbumCount()I

    move-result v0

    return v0
.end method

.method getShowGroupId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getShowGroupId()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method public getView(IILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlLayer;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 7

    const/4 v6, -0x5

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt p1, v5, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v5, p1

    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-eqz v5, :cond_0

    if-gez p2, :cond_7

    const/16 v5, -0xa

    if-ne p2, v5, :cond_2

    invoke-virtual {p0, p3, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->drawCheckBox(Lcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    :goto_1
    instance-of v5, p5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_0

    if-ne p2, v6, :cond_6

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    check-cast p5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    invoke-direct {p0, v2, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->drawLocationLabelBorder(Lcom/sec/android/gallery3d/glcore/GlView;Z)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0

    :cond_2
    const/4 v5, -0x4

    if-ne p2, v5, :cond_3

    invoke-virtual {p0, p3, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->drawSelectedCountView(Lcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    goto :goto_1

    :cond_3
    if-ne p2, v6, :cond_4

    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->drawAlbumLabelBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->drawLocationLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)V

    const/16 v4, 0x10

    goto :goto_1

    :cond_4
    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->drawAlbumLabelBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->drawAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)V

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    check-cast p5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v5

    invoke-direct {p0, v2, v5, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->drawTitleBorder(Lcom/sec/android/gallery3d/glcore/GlView;ZI)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0

    :cond_7
    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-ge p2, v5, :cond_0

    if-nez p3, :cond_8

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_3
    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v3, v5, p2

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    aget-object v1, v5, p2

    invoke-virtual {p0, v2, v1, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->drawThumbnailImage(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :cond_8
    move-object v2, p3

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_3
.end method

.method public getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Z)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;ZZ)Z

    move-result v0

    return v0
.end method

.method public getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;ZZ)Z
    .locals 23

    const/16 v19, 0x0

    if-nez p4, :cond_0

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    const/4 v9, 0x0

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    move-object/from16 v0, p4

    iput-boolean v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    const/4 v9, 0x0

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v9, 0x0

    move-object/from16 v0, p4

    iput-boolean v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mReorderEnable:Z

    const/4 v9, 0x0

    move-object/from16 v0, p4

    iput v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    const-wide/16 v10, 0x0

    move-object/from16 v0, p4

    iput-wide v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDateTakenInMs:J

    if-eqz p3, :cond_2

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v9, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->getItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v9

    move-object/from16 v0, p4

    iput v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v9

    move-object/from16 v0, p4

    iput v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v10

    move-object/from16 v0, p4

    iput-wide v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDateTakenInMs:J

    :goto_1
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x4

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v10

    if-ne v9, v10, :cond_b

    const/4 v9, 0x2

    move-object/from16 v0, p4

    iput v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v9

    move-object/from16 v0, p4

    iput-boolean v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    const/4 v9, 0x0

    move-object/from16 v0, p4

    iput-boolean v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDisabled:Z

    if-nez v13, :cond_e

    move-object/from16 v0, p4

    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    if-nez v9, :cond_e

    const/4 v9, 0x0

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_2
    if-ltz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    move/from16 v0, p1

    if-lt v0, v9, :cond_4

    :cond_3
    const-string/jumbo v9, "ComposeMediaItemAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "GetViewInfo pos = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v12, v9, p1

    if-eqz v12, :cond_5

    iget v9, v12, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    move/from16 v0, p2

    if-lt v0, v9, :cond_7

    :cond_5
    if-nez v12, :cond_6

    const-string/jumbo v9, "ComposeMediaItemAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "GetViewInfo album is null = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v9, "ComposeMediaItemAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "GetViewInfo position is over index  = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v12, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    iget-object v9, v12, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v9, :cond_8

    iget-object v9, v12, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v19, v9, p2

    :cond_8
    if-nez v19, :cond_9

    const-string/jumbo v9, "ComposeMediaItemAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "GetViewInfo mediaItem is null = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", sub = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v9

    move-object/from16 v0, p4

    iput v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v9

    move-object/from16 v0, p4

    iput v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v10

    move-object/from16 v0, p4

    iput-wide v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDateTakenInMs:J

    iget-object v0, v12, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v20, v0

    iget-object v9, v12, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    aget-object v18, v9, p2

    if-nez v18, :cond_a

    const/4 v13, 0x0

    :goto_4
    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_b
    const/4 v9, 0x1

    move-object/from16 v0, p4

    iput v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    goto/16 :goto_2

    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->needCloudOnlyThumb()Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x3

    move-object/from16 v0, p4

    iput v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    goto/16 :goto_2

    :cond_d
    const/4 v9, 0x0

    move-object/from16 v0, p4

    iput v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mAlbumMode:Z

    if-eqz v9, :cond_14

    const/4 v9, 0x0

    move-object/from16 v0, p4

    iput-boolean v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    const/4 v9, 0x0

    move-object/from16 v0, p4

    iput-boolean v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    :goto_5
    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mAlbumMode:Z

    if-eqz v9, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->drawDecorViewAlbum(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Z)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v9

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    :cond_f
    :goto_6
    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz p6, :cond_1a

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    const/4 v9, 0x1

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v10, v1, v9}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;ZZ)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v9

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p4

    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    if-nez v9, :cond_21

    const/16 v16, 0x0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object/from16 v0, p4

    iget-boolean v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    if-nez v9, :cond_11

    sget-boolean v9, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_FACE_THUMBNAIL:Z

    if-eqz v9, :cond_11

    move-object/from16 v0, v19

    instance-of v9, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v9, :cond_10

    move-object/from16 v0, v19

    instance-of v9, v0, Lcom/sec/android/gallery3d/data/UnionImage;

    if-nez v9, :cond_10

    move-object/from16 v0, v19

    instance-of v9, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v9, :cond_11

    :cond_10
    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v9

    if-nez v9, :cond_11

    const/4 v8, 0x0

    move-object/from16 v0, v19

    instance-of v9, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v9, :cond_1c

    move-object/from16 v0, v19

    instance-of v9, v0, Lcom/sec/android/gallery3d/data/LocalSearchImage;

    if-eqz v9, :cond_1b

    move-object/from16 v9, v19

    check-cast v9, Lcom/sec/android/gallery3d/data/LocalSearchImage;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/LocalSearchImage;->getFaceRect()Landroid/graphics/RectF;

    move-result-object v9

    invoke-static {v9, v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFaceRectOfObject(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v16

    :goto_8
    move-object/from16 v0, v20

    instance-of v9, v0, Lcom/sec/android/gallery3d/data/EventAlbumSet;

    if-eqz v9, :cond_20

    move-object/from16 v0, p4

    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    move-object/from16 v0, p4

    iget v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    move-object/from16 v0, p4

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    invoke-static/range {v6 .. v11}, Lcom/sec/samsung/gallery/util/FaceUtil;->calcFaceCropRect(IILandroid/graphics/RectF;FFI)Landroid/graphics/Rect;

    move-result-object v16

    :cond_11
    :goto_9
    if-nez v16, :cond_12

    int-to-float v9, v6

    int-to-float v10, v7

    move-object/from16 v0, p4

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    move/from16 v21, v0

    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v9, v10, v11, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCenterCropRect(FFFFI)Landroid/graphics/Rect;

    move-result-object v16

    :cond_12
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    :goto_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v9

    if-eqz v9, :cond_23

    :cond_13
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAvailableDrm(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v9

    if-nez v9, :cond_23

    const/4 v9, 0x1

    :goto_b
    move-object/from16 v0, p4

    iput-boolean v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDisableForDrm:Z

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-boolean v9, v9, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSelectionSet:Z

    if-nez v9, :cond_15

    const/4 v9, 0x1

    :goto_c
    move-object/from16 v0, p4

    iput-boolean v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-boolean v9, v9, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSelectionSet:Z

    if-nez v9, :cond_16

    const/4 v9, 0x1

    :goto_d
    move-object/from16 v0, p4

    iput-boolean v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    goto/16 :goto_5

    :cond_15
    const/4 v9, 0x0

    goto :goto_c

    :cond_16
    const/4 v9, 0x0

    goto :goto_d

    :cond_17
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-nez v9, :cond_f

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mEasyMode:Z

    if-eqz v9, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v9

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    goto/16 :goto_6

    :cond_18
    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v9, :cond_19

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    goto/16 :goto_6

    :cond_19
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->isNeedDecorDraw()Z

    move-result v9

    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v9

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    goto/16 :goto_6

    :cond_1a
    const/4 v9, 0x0

    goto/16 :goto_7

    :cond_1b
    move-object/from16 v9, v19

    check-cast v9, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/LocalImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v8

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v0, v19

    instance-of v9, v0, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v9, :cond_1f

    move-object/from16 v0, v19

    instance-of v9, v0, Lcom/sec/android/gallery3d/data/UnionLocalSearchImage;

    if-eqz v9, :cond_1d

    move-object/from16 v9, v19

    check-cast v9, Lcom/sec/android/gallery3d/data/UnionLocalSearchImage;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/UnionLocalSearchImage;->getFaceRect()Landroid/graphics/RectF;

    move-result-object v9

    invoke-static {v9, v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFaceRectOfObject(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v16

    goto/16 :goto_8

    :cond_1d
    move-object/from16 v0, v19

    instance-of v9, v0, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;

    if-eqz v9, :cond_1e

    move-object/from16 v9, v19

    check-cast v9, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;->getFaceRect()Landroid/graphics/RectF;

    move-result-object v9

    invoke-static {v9, v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFaceRectOfObject(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v16

    goto/16 :goto_8

    :cond_1e
    move-object/from16 v9, v19

    check-cast v9, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/UnionImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v8

    goto/16 :goto_8

    :cond_1f
    move-object/from16 v9, v19

    check-cast v9, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v8

    goto/16 :goto_8

    :cond_20
    if-eqz v8, :cond_11

    move-object/from16 v0, p4

    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    move-object/from16 v0, p4

    iget v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    move-object/from16 v0, p4

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    invoke-static/range {v6 .. v11}, Lcom/sec/samsung/gallery/util/FaceUtil;->calcFaceCropRect(IILandroid/graphics/RectF;FFI)Landroid/graphics/Rect;

    move-result-object v16

    goto/16 :goto_9

    :cond_21
    const/4 v9, 0x3

    move-object/from16 v0, p4

    iget v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    if-ne v9, v10, :cond_22

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResourceMgr:Lcom/sec/android/gallery3d/util/ResourceManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v11

    neg-int v11, v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/gallery3d/util/ResourceManager;->getCloudOnlyThumbnailSize(Landroid/content/Context;I)I

    move-result v15

    int-to-float v9, v15

    int-to-float v10, v15

    move-object/from16 v0, p4

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    move/from16 v21, v0

    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v9, v10, v11, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCenterCropRect(FFFFI)Landroid/graphics/Rect;

    move-result-object v9

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_a

    :cond_22
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mResourceMgr:Lcom/sec/android/gallery3d/util/ResourceManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumnailSize(Landroid/content/Context;I)I

    move-result v14

    int-to-float v9, v14

    int-to-float v10, v14

    move-object/from16 v0, p4

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    move/from16 v21, v0

    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v9, v10, v11, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCenterCropRect(FFFFI)Landroid/graphics/Rect;

    move-result-object v9

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_a

    :cond_23
    const/4 v9, 0x0

    goto/16 :goto_b
.end method

.method public hasLocalMediaSet()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v4, v5, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/LocalAlbum;

    if-nez v5, :cond_0

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-nez v5, :cond_0

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/UnionAlbum;

    if-nez v5, :cond_0

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-nez v5, :cond_0

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;

    if-eqz v5, :cond_2

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isBurstShot(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->isShowAllGroup()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getShowGroupId()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isBurstShot(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method isShowAllGroup()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->isShowAllGroup()Z

    move-result v0

    return v0
.end method

.method public refreshAlbumSet()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseSmartClustering:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->refreshAlbumSet()V

    :cond_0
    return-void
.end method

.method public requestScreenNailUrgent(II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->requestScreenNail(IIZ)Z

    move-result v0

    return v0
.end method

.method public requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->requestScreenNail(Lcom/sec/android/gallery3d/data/MediaItem;IZ)Z

    move-result v0

    return v0
.end method

.method public requestThumbnailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->requestThumbnail(Lcom/sec/android/gallery3d/data/MediaItem;IZ)Z

    move-result v0

    return v0
.end method

.method public setHeaderItem(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p2, 0x0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mHeaderImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mHeaderImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mHeaderImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mHeaderImage:Landroid/graphics/Bitmap;

    :cond_2
    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mHeaderItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mHeaderImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setInitThumbType(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    int-to-byte v1, p1

    iput-byte v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLevel:B

    return-void
.end method

.method public setItemWidthForPlayIcon(IZ)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mCurItemWidthForPlayIcon:I

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mIsValidForPlayIcon:Z

    return-void
.end method

.method public setNewMarkModifiedTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mNewMarkItemModifiedTime:J

    return-void
.end method

.method public setScreenNailImage(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;I)V
    .locals 8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->recycle()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p2, 0x0

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    new-instance v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object v2, p1

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IIILandroid/graphics/Bitmap;)V

    iput-object v0, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    return-void
.end method

.method public setSelectionSource(Lcom/sec/android/gallery3d/ui/SelectionManager;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setSelectionSource(Lcom/sec/android/gallery3d/ui/SelectionManager;)V

    return-void
.end method

.method public setSource(Lcom/sec/android/gallery3d/data/MediaSet;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;Z)Z

    move-result v0

    return v0
.end method

.method setTextViewPaint(Landroid/text/TextPaint;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->USE_N_OS_DECOR:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->FEATURE_IS_TABLET:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method public setThumbReslevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setThumbReslevel(I)V

    return-void
.end method

.method public setThumbSizeType(B)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iput-byte p1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mRetThmType:B

    return-void
.end method
