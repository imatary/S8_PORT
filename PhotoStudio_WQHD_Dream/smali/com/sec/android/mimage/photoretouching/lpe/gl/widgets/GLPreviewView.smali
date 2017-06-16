.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
.source "GLPreviewView.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper$OnScaleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;,
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;
    }
.end annotation


# static fields
.field private static final MAX_CLICK_DURATION:I = 0x12c

.field public static final NUM_ORIGINAL_SLICES:I = 0xa

.field public static NUM_ORI_HOR_SLICES:I = 0x0

.field public static NUM_ORI_VER_SLICES:I = 0x0

.field public static NUM_PRE_HOR_SLICES:I = 0x0

.field public static NUM_PRE_VER_SLICES:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PEDIT_GLPreviewView"


# instance fields
.field private isUpdateOri:Z

.field private mCurrState:I

.field public mCurrentLayer:I

.field private mEffectsReferenceTexture:I

.field private mImageHeight:I

.field private mImageWidth:I

.field private mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field private mLayerTextures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLeft:I

.field private mLongClicked:Z

.field private mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

.field private mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

.field private mPinchMatrix:[F

.field private mPinchZoom:Z

.field mProgress:F

.field private mProjectionMatrix:[F

.field private mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

.field private mSelectionToolOpened:Z

.field private mTop:I

.field private mTouchDownTime:J

.field private mViewHeight:I

.field private mViewRect:Landroid/graphics/Rect;

.field private mViewWidth:I

.field temp:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x3

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    const/4 v0, 0x4

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_VER_SLICES:I

    sput v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_PRE_HOR_SLICES:I

    sput v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_PRE_VER_SLICES:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;ILcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V
    .locals 3

    const/16 v2, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrentLayer:I

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->temp:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mProgress:F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mProjectionMatrix:[F

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerTextures:Landroid/util/SparseArray;

    const/16 v0, 0x100

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrState:I

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchMatrix:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchZoom:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionToolOpened:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLongClicked:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->isUpdateOri:Z

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->initPinch()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mEffectsReferenceTexture:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mEffectsReferenceTexture:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    return-object v0
.end method

.method private initPinch()V
    .locals 3

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchMatrix:[F

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;[FLcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper$OnScaleListener;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private updateOriginal()Z
    .locals 10

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return v6

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalBuffer()[I

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->checkValidOriginalData()Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v7

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v8

    mul-int v5, v7, v8

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalBuffer()[I

    move-result-object v7

    array-length v3, v7

    if-eq v5, v3, :cond_0

    const/16 v2, 0xa

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isOverGLTextureSize(I)Z

    move-result v7

    if-eqz v7, :cond_3

    sget v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    sget v8, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_VER_SLICES:I

    mul-int v2, v7, v8

    :cond_3
    const/4 v6, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    aget-object v4, v7, v1

    iget-boolean v7, v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mLoaded:Z

    if-nez v7, :cond_4

    const-string v7, "PEDIT_GLPreviewView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not loaded.. loading: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->onLoad()V

    const/4 v6, 0x0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateOriginalSlice()V
    .locals 8

    const/4 v7, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->USE_ORIGINAL_FOR_IDLE:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isOverGLTextureSize(I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->calNumberSlice(IIZ)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->releaseOriginalTextureItem()V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    :cond_3
    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_VER_SLICES:I

    mul-int/2addr v3, v4

    new-array v3, v3, [Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    const/4 v1, 0x0

    :goto_1
    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_VER_SLICES:I

    mul-int/2addr v3, v4

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;I)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->releaseOriginalTextureItem()V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    :cond_5
    new-array v3, v5, [Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;I)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_7

    aget-object v2, v4, v3

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->onOriginalUpdated()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->isUpdateOri:Z

    goto :goto_0
.end method

.method private updatePinch(Z)V
    .locals 10

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSizeSet:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->setImageDimensions(II)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v3

    const/4 v1, 0x0

    const/4 v5, 0x0

    move v2, v4

    move v0, v3

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->setViewDimensions(IILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->reset()V

    :cond_0
    return-void
.end method


# virtual methods
.method public calNumberSlice(IIZ)V
    .locals 5

    const/16 v3, 0xa

    if-eqz p3, :cond_3

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->MAX_TEXTURE_SIZE:I

    div-int v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->MAX_TEXTURE_SIZE:I

    div-int v2, p2, v2

    add-int/lit8 v0, v2, 0x1

    if-le v1, v0, :cond_1

    sput v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    div-int v2, v3, v1

    add-int/lit8 v2, v2, 0x1

    if-le v2, v0, :cond_0

    div-int v2, v3, v1

    add-int/lit8 v2, v2, 0x1

    :goto_0
    sput v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_VER_SLICES:I

    :goto_1
    const-string v2, "PEDIT_GLPreviewView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NUM_ORI_HOR_SLICES = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NUM_ORI_VER_SLICES = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_VER_SLICES:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_VER_SLICES:I

    div-int v2, v3, v0

    add-int/lit8 v2, v2, 0x1

    if-le v2, v1, :cond_2

    div-int v2, v3, v0

    add-int/lit8 v2, v2, 0x1

    :goto_3
    sput v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_3

    :cond_3
    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->MAX_TEXTURE_SIZE:I

    div-int v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->MAX_TEXTURE_SIZE:I

    div-int v2, p2, v2

    add-int/lit8 v0, v2, 0x1

    sput v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_PRE_HOR_SLICES:I

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_PRE_VER_SLICES:I

    const-string v2, "PEDIT_GLPreviewView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NUM_PRE_HOR_SLICES = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_PRE_HOR_SLICES:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NUM_PRE_VER_SLICES = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_PRE_VER_SLICES:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public cleanUp()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerTextures:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerTextures:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->destroy()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->cleanUp()V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerTextures:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->cleanUp()V

    :cond_3
    return-void
.end method

.method public clearSelectionBorder()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->clear()V

    :cond_0
    return-void
.end method

.method protected createBuffer()V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getTop()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getOrthoNormalizedCoordinates(FFFFII)[F

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    :goto_0
    array-length v0, v8

    if-ge v6, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v6, 0x1

    aget v1, v8, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v7, 0x1

    aget v1, v8, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    array-length v0, v8

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method protected draw()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerTextures:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrentLayer:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;

    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->mLoaded:Z

    if-nez v4, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->onLoad()V

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v4, "a_Position"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v1

    const-string v4, "a_TextureCoordinate"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    move/from16 v2, v22

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v4, "u_blending_color"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v11

    const/4 v4, 0x1

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->BACKGROUND_BLACK:[F

    const/4 v6, 0x0

    invoke-static {v11, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    const-string v4, "u_Sampler"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v21

    const/4 v4, 0x0

    move/from16 v0, v21

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v4, "u_Matrix"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->temp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mProjectionMatrix:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCombinedMatrix:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchZoom:Z

    if-eqz v4, :cond_6

    const/16 v4, 0x10

    new-array v2, v4, [F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchMatrix:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->temp:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v17

    invoke-static {v0, v4, v5, v2, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->update()V

    :goto_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static/range {v22 .. v22}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v4, 0xde1

    move-object/from16 v0, v16

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->textureId:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchZoom:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    :goto_1
    const/16 v4, 0xde1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static/range {v22 .. v22}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrState:I

    and-int/lit16 v4, v4, -0x100

    const/16 v5, 0x1000

    if-eq v4, v5, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrState:I

    and-int/lit16 v4, v4, -0x100

    const/16 v5, 0x800

    if-eq v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionToolOpened:Z

    if-eqz v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->draw()V

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->isUpdateOri:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLongClicked:Z

    if-nez v4, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->updateOriginalSlice()V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->isUpdateOri:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrState:I

    const/16 v5, 0x100

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLongClicked:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    if-eqz v4, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->updateOriginal()Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v4, "a_Position"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v1

    const-string v4, "a_TextureCoordinate"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const-string v4, "PEDIT_GLPreviewView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trying to draw original, mOriginalTextureItems size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v4, "u_blending_color"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v11

    const/4 v4, 0x1

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->BACKGROUND_BLACK:[F

    const/4 v6, 0x0

    invoke-static {v11, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    const-string v4, "u_Sampler"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v21

    const/4 v4, 0x0

    move/from16 v0, v21

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v4, "u_Matrix"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->temp:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mProjectionMatrix:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCombinedMatrix:[F

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 v4, 0x10

    new-array v2, v4, [F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchMatrix:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->temp:[F

    const/4 v9, 0x0

    move-object v4, v2

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v17

    invoke-static {v0, v4, v5, v2, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalBuffer()[I

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->checkValidOriginalData()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_5
    :goto_3
    return-void

    :cond_6
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->temp:[F

    const/4 v7, 0x0

    move/from16 v0, v17

    invoke-static {v0, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrState:I

    and-int/lit16 v4, v4, -0x100

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrState:I

    const/16 v5, 0x1000

    if-eq v4, v5, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mEffectsReferenceTexture:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v5, "alpha"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v10

    const/4 v4, 0x0

    invoke-static {v10, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/16 v4, 0xde1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mEffectsReferenceTexture:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/16 v4, 0xde1

    move-object/from16 v0, v16

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->textureId:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mProgress:F

    sub-float/2addr v4, v5

    invoke-static {v10, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v4, 0x0

    invoke-static {v10, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto/16 :goto_1

    :cond_8
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_9
    const/16 v18, 0xa

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isOverGLTextureSize(I)Z

    move-result v4

    if-eqz v4, :cond_a

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_HOR_SLICES:I

    sget v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->NUM_ORI_VER_SLICES:I

    mul-int v18, v4, v5

    :cond_a
    const/4 v14, 0x0

    :goto_4
    move/from16 v0, v18

    if-ge v14, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    aget-object v19, v4, v14

    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mLoaded:Z

    if-eqz v4, :cond_b

    const-string v4, "PEDIT_GLPreviewView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "draw originalItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->id:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mVertexBuffer:Ljava/nio/FloatBuffer;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->mVertexBuffer:Ljava/nio/FloatBuffer;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;)Ljava/nio/FloatBuffer;

    move-result-object v9

    move v4, v1

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v4, 0xde1

    move-object/from16 v0, v19

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->textureId:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    :cond_c
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    goto/16 :goto_3
.end method

.method public getCurrentTextureId()I
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerTextures:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrentLayer:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->mLoaded:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->onLoad()V

    :cond_0
    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->textureId:I

    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPointerType()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->getPointerIconType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method public getPreviewRect()Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getProjectionMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mProjectionMatrix:[F

    return-object v0
.end method

.method public getSelectionBorder()Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    return-object v0
.end method

.method public getSelectionBorder(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    return-object v0
.end method

.method public getVertexBuffer()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mVertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public initSizes()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    int-to-float v0, v1

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v1

    int-to-float v14, v1

    cmpl-float v1, v22, v14

    if-lez v1, :cond_0

    div-float v4, v22, v14

    :goto_0
    cmpl-float v1, v22, v14

    if-lez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mProjectionMatrix:[F

    const/4 v2, 0x0

    neg-float v3, v4

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v19

    const/16 v16, 0x0

    const/16 v21, 0x0

    move/from16 v17, v20

    move/from16 v13, v19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mImageWidth:I

    int-to-float v1, v1

    sub-int v2, v17, v16

    int-to-float v2, v2

    div-float v23, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mImageHeight:I

    int-to-float v1, v1

    sub-int v2, v13, v21

    int-to-float v2, v2

    div-float v15, v1, v2

    move/from16 v0, v23

    invoke-static {v0, v15}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mImageWidth:I

    int-to-float v1, v1

    div-float v1, v1, v18

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mImageHeight:I

    int-to-float v1, v1

    div-float v1, v1, v18

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewHeight:I

    sub-int v1, v17, v16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v16

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLeft:I

    sub-int v1, v13, v21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v21

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mTop:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setSize(IIII)V

    return-void

    :cond_0
    div-float v4, v14, v22

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mProjectionMatrix:[F

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    neg-float v9, v4

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move v10, v4

    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto/16 :goto_1
.end method

.method public isLongClicked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLongClicked:Z

    return v0
.end method

.method public loadReference()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onLoad()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick()V
    .locals 9

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLongClicked:Z

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getHistoryManager()Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-result-object v3

    const/4 v1, 0x0

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrState:I

    and-int/lit16 v4, v6, -0x100

    const/16 v6, 0x100

    if-ne v4, v6, :cond_3

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrentLayer:I

    invoke-virtual {v3, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->hasUndoHistory(I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrentLayer:I

    invoke-virtual {v3, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getUndoAllEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v6, v8}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->showPreviousText(Z)V

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "E106"

    invoke-static {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewHeight()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewId()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getIntArray(I)[I

    move-result-object v0

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrentLayer:I

    invoke-virtual {p0, v0, v5, v2, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto :goto_0

    :cond_3
    const/16 v6, 0x1000

    if-eq v4, v6, :cond_4

    const/16 v6, 0x800

    if-eq v4, v6, :cond_4

    const/16 v6, 0x2000

    if-ne v4, v6, :cond_2

    :cond_4
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrentLayer:I

    invoke-virtual {v3, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v1

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrState:I

    const/16 v7, 0x1001

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v6, v8}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->showPreviousText(Z)V

    goto :goto_1
.end method

.method public onLongClickUp()V
    .locals 7

    const/4 v6, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrState:I

    and-int/lit16 v1, v2, -0x100

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2, v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->showPreviousText(Z)V

    const/16 v2, 0x100

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrentLayer:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    :cond_1
    :goto_0
    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLongClicked:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void

    :cond_2
    const/16 v2, 0x800

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrentLayer:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->initSizes()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->updatePinch(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->onOrientationChanged()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->initSizes()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onOriginalDataUpdated()V
    .locals 2

    const-string v0, "PEDIT_GLPreviewView"

    const-string v1, "Original data is updated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->USE_ORIGINAL_FOR_IDLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->isUpdateOri:Z

    :cond_0
    return-void
.end method

.method public onScale(F)V
    .locals 0

    return-void
.end method

.method public onStateChange(II)V
    .locals 3

    const/4 v1, 0x1

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrState:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrState:I

    const/16 v2, 0x100

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchZoom:Z

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->updatePinch(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceChanged()V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->onSurfaceChanged()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerTextures:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerTextures:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;

    if-eqz v1, :cond_0

    new-array v4, v6, [I

    iget v5, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->textureId:I

    aput v5, v4, v3

    invoke-static {v6, v4, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v7, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->textureId:I

    iput-boolean v3, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->mLoaded:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mEffectsReferenceTexture:I

    if-eq v4, v7, :cond_2

    new-array v4, v6, [I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mEffectsReferenceTexture:I

    aput v5, v4, v3

    invoke-static {v6, v4, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mEffectsReferenceTexture:I

    :cond_2
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrState:I

    and-int/lit16 v4, v4, -0x100

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->loadReference()V

    :cond_3
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->USE_ORIGINAL_FOR_IDLE:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v1, v4, v3

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->onSurfaceChanged()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_5
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v4, 0x100

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrState:I

    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mTouchDownTime:J

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchZoom:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionToolOpened:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->hasSelection()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    invoke-virtual {v1, p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->onTouch(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :goto_1
    return v0

    :cond_2
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrState:I

    if-ne v1, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mTouchDownTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onPreviewClick()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onZoomByScroll(Landroid/view/MotionEvent;)Z
    .locals 7

    const v6, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v4, v0, v5

    if-lez v4, :cond_1

    mul-float v1, v6, v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    invoke-virtual {v4, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->setScaleWithAnimation(FFF)V

    const/4 v4, 0x1

    return v4

    :cond_1
    cmpg-float v4, v0, v5

    if-gez v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v5, v6, v0

    div-float/2addr v4, v5

    neg-float v1, v4

    goto :goto_0
.end method

.method public onZoomOut(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->showHistory()V

    return-void
.end method

.method public releaseOriginalTextureItem()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mOriginalTextureItems:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$OriginalTextureItem;->destroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeLayer(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerTextures:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->destroy()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerTextures:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public setEffectProgress(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEffectProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mProgress:F

    return-void
.end method

.method public setImageData([IIII)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerTextures:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;

    invoke-direct {v0, p0, p4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerTextures:Landroid/util/SparseArray;

    invoke-virtual {v1, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->setImageData([III)V

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrentLayer:I

    if-ne p4, v1, :cond_1

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mImageWidth:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mImageHeight:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->resetMatrix()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->initSizes()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->updatePinch(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public setLayer(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mLayerTextures:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mCurrentLayer:I

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mImageWidth:I

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView$TextureItem;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mImageHeight:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->resetMatrix()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->initSizes()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->updatePinch(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->setScaleWithAnimation(FFF)V

    return-void
.end method

.method public setSelectionToolOpen(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionToolOpened:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->reset()V

    :cond_0
    return-void
.end method
