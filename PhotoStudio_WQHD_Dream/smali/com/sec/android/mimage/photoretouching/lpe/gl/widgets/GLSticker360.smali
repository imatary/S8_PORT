.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;
.source "GLSticker360.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$BitmapReader;
    }
.end annotation


# static fields
.field public static MIN_SCALE_FACTOR_360:F = 0.0f

.field public static final SCROLL_OFFSET:I = 0x32

.field private static final TAG:Ljava/lang/String; = "PEDIT_GLSuperImpose"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFilePath:Ljava/lang/String;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mReadBitmap:Z

.field private mRotationX:F

.field private mRotationXStart:F

.field private mRotationY:F

.field private mRotationYStart:F

.field private mScaleEndTime:J

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaling:Z

.field private mViewAngle:F

.field private mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->MIN_SCALE_FACTOR_360:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;[IIILandroid/graphics/RectF;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;I)V
    .locals 6

    const/4 v0, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, p7, p5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Landroid/graphics/RectF;)V

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mReadBitmap:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScaling:Z

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->z:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScaleEndTime:J

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$2;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mPerspectiveEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->is360Sticker:Z

    iput-object p8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mPreviewBuffer:[I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mImageWidth:I

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mImageHeight:I

    iput p9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mStickerType:I

    iput-object p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationX:F

    const/high16 v2, 0x43870000    # 270.0f

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationY:F

    new-instance v2, Landroid/view/ScaleGestureDetector;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v2, v3, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    const-string v2, "nayab"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mViewer360 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    if-eqz v4, :cond_0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->z:F

    const/16 v0, 0xf0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->sTextureCoordinates:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->sTextureCoordinates:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->sTextureCoordinates:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->sTextureCoordinates:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->sTextureCoordinates:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->z:F

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->z:F

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mViewAngle:F

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScaling:Z

    return p1
.end method

.method static synthetic access$402(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScaleEndTime:J

    return-wide p1
.end method

.method private showProgressBar()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$3;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public drawNormal()V
    .locals 11

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mLoaded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->load()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mLoaded:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->z:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_VIEW_ANGLE:F

    :goto_0
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mViewAngle:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glScissor(IIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mViewer360:Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mPreviewTextureId:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationX:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationY:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->z:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mViewAngle:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mReadBitmap:Z

    if-eqz v9, :cond_4

    new-instance v9, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$1;

    invoke-direct {v9, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;)V

    :goto_1
    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->draw(IFFFFFFFLcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$BitmapReader;)V

    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mReadBitmap:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v1

    invoke-static {v10, v10, v0, v1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mSelected:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->drawNormalBorder()V

    :cond_2
    return-void

    :cond_3
    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_VIEW_ANGLE:F

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_VIEW_ANGLE:F

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_VIEW_ANGLE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->z:F

    const/4 v3, 0x0

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public drawPerspective()V
    .locals 0

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->showProgressBar()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mReadBitmap:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mBitmap:Landroid/graphics/Bitmap;

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getRotX()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationX:F

    return v0
.end method

.method public getRotY()F
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationY:F

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    return v0
.end method

.method public getZ()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->z:F

    return v0
.end method

.method public load()V
    .locals 18

    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v12, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0205cb

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0205c3

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v17

    const v2, -0x50506

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->applyTint(Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->blendBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureResizeNormal:I

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureResizeNormal:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/16 v2, 0xde1

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0205c8

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureRemoveNormal:I

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureRemoveNormal:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/16 v2, 0xde1

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0205c9

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureRemovePress:I

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureRemovePress:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/16 v2, 0xde1

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0205c4

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->blendBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureResizePressed:I

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureResizePressed:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/16 v2, 0xde1

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureRotateNormal:I

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureRotateNormal:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v13, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/16 v2, 0xde1

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureRotatePressed:I

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureRotatePressed:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v15, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/16 v2, 0xde1

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0205c5

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureCloseNormal:I

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureCloseNormal:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/16 v2, 0xde1

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0205c6

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureClosePressed:I

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTextureClosePressed:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/16 v2, 0xde1

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mPreviewTextureId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v16, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/4 v2, 0x0

    aget v2, v16, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mPreviewTextureId:I

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mPreviewTextureId:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v10

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v4, 0x46180400    # 9729.0f

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v2, 0xde1

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/16 v2, 0xde1

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/16 v2, 0xde1

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mLoaded:Z

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onExitClicked()V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTouchMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->removeItem(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->resetScroll()V

    :cond_1
    return-void
.end method

.method public onOrientationChange(Landroid/graphics/RectF;)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v0, v3, v4

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v1, v3, v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    move v2, v0

    move v0, v1

    sub-float v1, v5, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    :goto_0
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->updateNormalBuffer(Z)V

    return-void

    :cond_2
    move v2, v1

    move v1, v0

    sub-float v0, v5, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSelected()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;

    invoke-interface {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$SIListener;->onSelected(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mLoaded:Z

    return-void
.end method

.method public onTouchNormal(Landroid/view/MotionEvent;)Z
    .locals 18

    const-string v12, "nayab"

    const-string v13, "GLSticker 360 onTouchNormal"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mAngle:F

    neg-float v12, v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    sub-float/2addr v14, v15

    float-to-double v14, v14

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mAngle:F

    neg-float v14, v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    float-to-double v14, v14

    add-double/2addr v12, v14

    double-to-float v10, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mAngle:F

    neg-float v12, v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    sub-float/2addr v14, v15

    float-to-double v14, v14

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mAngle:F

    neg-float v14, v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    float-to-double v14, v14

    add-double/2addr v12, v14

    double-to-float v11, v12

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScaling:Z

    if-nez v12, :cond_18

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTouchMode:I

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    sub-float/2addr v12, v13

    cmpl-float v12, v10, v12

    if-lez v12, :cond_18

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeLarge:F

    add-float/2addr v12, v13

    cmpg-float v12, v10, v12

    if-gez v12, :cond_18

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeLarge:F

    sub-float/2addr v12, v13

    cmpl-float v12, v11, v12

    if-lez v12, :cond_18

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    add-float/2addr v12, v13

    cmpg-float v12, v11, v12

    if-gez v12, :cond_18

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mSelected:Z

    if-nez v12, :cond_1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mSelected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->onSelected()V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    const/4 v12, 0x1

    :goto_1
    return v12

    :pswitch_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    sub-float/2addr v12, v13

    cmpl-float v12, v10, v12

    if-lez v12, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    add-float/2addr v12, v13

    cmpg-float v12, v10, v12

    if-gez v12, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    sub-float/2addr v12, v13

    cmpl-float v12, v11, v12

    if-lez v12, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    add-float/2addr v12, v13

    cmpg-float v12, v11, v12

    if-gez v12, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    sub-float v12, v10, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->dx:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->dy:F

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTouchMode:I

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    sub-float/2addr v12, v13

    cmpl-float v12, v10, v12

    if-lez v12, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    add-float/2addr v12, v13

    cmpg-float v12, v10, v12

    if-gez v12, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    sub-float/2addr v12, v13

    cmpl-float v12, v11, v12

    if-lez v12, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    add-float/2addr v12, v13

    cmpg-float v12, v11, v12

    if-gez v12, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    sub-float v12, v10, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->dx:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->dy:F

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTouchMode:I

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    sub-float/2addr v12, v13

    cmpl-float v12, v10, v12

    if-lez v12, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    add-float/2addr v12, v13

    cmpg-float v12, v10, v12

    if-gez v12, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    sub-float/2addr v12, v13

    cmpl-float v12, v11, v12

    if-lez v12, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    add-float/2addr v12, v13

    cmpg-float v12, v11, v12

    if-gez v12, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    sub-float v12, v10, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->dx:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->dy:F

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTouchMode:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationX:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationXStart:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationY:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationYStart:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->touchDownX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->touchDownY:F

    const-string v12, "nayab"

    const-string v13, "Rotate is pressed"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    sub-float/2addr v12, v13

    cmpl-float v12, v10, v12

    if-lez v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    add-float/2addr v12, v13

    cmpg-float v12, v10, v12

    if-gez v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    sub-float/2addr v12, v13

    cmpl-float v12, v11, v12

    if-lez v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mIconSizeSmall:F

    add-float/2addr v12, v13

    cmpg-float v12, v11, v12

    if-gez v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    sub-float v12, v10, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->dx:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->dy:F

    const/4 v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTouchMode:I

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTouchMode:I

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    sub-float v12, v10, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->dx:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->dy:F

    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTouchMode:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->touchDownX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->touchDownY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->initCenterX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->initCenterY:F

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTouchMode:I

    packed-switch v12, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationYStart:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->touchDownX:F

    sub-float/2addr v13, v14

    const/high16 v14, 0x3e800000    # 0.25f

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationXStart:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->touchDownY:F

    sub-float/2addr v13, v14

    const/high16 v14, 0x3e800000    # 0.25f

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationX:F

    const/high16 v13, -0x3d4c0000    # -90.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_8

    const/high16 v12, -0x3d4c0000    # -90.0f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationX:F

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationY:F

    const/high16 v13, 0x43b40000    # 360.0f

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_9

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationY:F

    const/high16 v13, 0x43b40000    # 360.0f

    rem-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationY:F

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationX:F

    const/high16 v13, 0x42b40000    # 90.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_7

    const/high16 v12, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationX:F

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationY:F

    const/high16 v13, 0x43b40000    # 360.0f

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationY:F

    goto :goto_3

    :pswitch_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->dx:F

    sub-float v12, v10, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->tmpX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->dy:F

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->tmpY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->tmpX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->tmpY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    mul-float/2addr v12, v6

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    mul-float/2addr v12, v6

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v9, v12, v13

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float v2, v12, v13

    sget v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->MIN_SCALE_FACTOR_360:F

    cmpg-float v12, v9, v5

    if-ltz v12, :cond_a

    cmpg-float v12, v2, v5

    if-gez v12, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->isStickerInPreview()Z

    move-result v12

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    :cond_c
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->updateNormalBuffer(Z)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->dx:F

    sub-float v12, v10, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->tmpX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->dy:F

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->tmpY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->tmpX:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->tmpY:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    mul-float/2addr v12, v6

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    mul-float/2addr v12, v6

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v9, v12, v13

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float v2, v12, v13

    sget v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->MIN_SCALE_FACTOR_360:F

    cmpg-float v12, v9, v5

    if-ltz v12, :cond_d

    cmpg-float v12, v2, v5

    if-gez v12, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->isStickerInPreview()Z

    move-result v12

    if-nez v12, :cond_f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    :cond_f
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->updateNormalBuffer(Z)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScaling:Z

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->initCenterX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->touchDownX:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->initCenterY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->touchDownY:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x42480000    # 50.0f

    sub-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_14

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->leftScroll()V

    :goto_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    const/high16 v14, 0x42480000    # 50.0f

    add-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->rightScroll()V

    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x42480000    # 50.0f

    sub-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_16

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->topScroll()V

    :goto_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    const/high16 v14, 0x42480000    # 50.0f

    add-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->bottomScroll()V

    :goto_7
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScreenRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    :cond_13
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->updateNormalBuffer(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->resetLeftScroll()V

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->resetRightScroll()V

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->resetTopScroll()V

    goto/16 :goto_6

    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getViewer360()Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->resetBottomScroll()V

    goto/16 :goto_7

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->onExitClicked()V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTouchMode:I

    goto/16 :goto_0

    :pswitch_8
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTouchMode:I

    goto/16 :goto_0

    :cond_18
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mSelected:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScaling:Z

    if-nez v12, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScaleEndTime:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0xfa

    cmp-long v12, v12, v14

    if-gez v12, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationX:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationXStart:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationY:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mRotationYStart:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->touchDownX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->touchDownY:F

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_1a
    const/4 v12, 0x0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mFilePath:Ljava/lang/String;

    return-void
.end method
