.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
.source "GLSeekWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;
    }
.end annotation


# static fields
.field private static final STATE_ANIM_DOWN:I = 0x2

.field private static final STATE_ANIM_UP:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_UP:I = 0x2

.field private static final THUMB_ANIM_DURATION:I = 0x96

.field private static final THUMB_SCALE_FACTOR:F = 1.5f

.field private static final TOUCH_RECT_SIZE:I = 0x64

.field public static final TYPE_0_100:I = 0x0

.field public static final TYPE_0_7:I = 0x4

.field public static final TYPE_0_8:I = 0x3

.field public static final TYPE_45_45:I = 0x2

.field public static final TYPE_50_50:I = 0x1


# instance fields
.field private isTouchFullScreen:Z

.field private mAnimMatrix:[F

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mHeight:F

.field private mLeft:F

.field private mLineHeight:I

.field private mLineWidth:I

.field private mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

.field private mMoving:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mProgressBGColor:I

.field private mProgressDown:I

.field private mProgressSecondaryColor:I

.field private mProgressString:Ljava/lang/String;

.field private mProgressTexture:I

.field private mProgressUpdated:Z

.field private mSeekBarRect:Landroid/graphics/RectF;

.field private mSeekHeight:I

.field private mSeekTextOffset:I

.field private mSeekValue:F

.field private mTextColor:I

.field private mTextSize:I

.field private mThumbAnimStartTime:J

.field private mThumbLeft:F

.field private mThumbLoaded:Z

.field private mThumbMatrix:[F

.field private mThumbSize:I

.field private mThumbState:I

.field private mThumbTexture:I

.field private mThumbTop:F

.field private mTitleString:Ljava/lang/String;

.field private mTitleTexture:I

.field private mTitleUpdated:Z

.field private mTop:F

.field private mTouchRect:Landroid/graphics/RectF;

.field private mTouchX:F

.field private mType:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBufferId:I

.field private mVertexBufferSize:I

.field private mVertexBufferUpdated:Z

.field private mWidth:F

.field private outSideTouch:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Z)V
    .locals 4

    const/16 v1, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferId:I

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferUpdated:Z

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleTexture:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressTexture:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbTexture:I

    const/16 v0, 0x4b

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTextSize:I

    const v0, -0x50506

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTextColor:I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mAnimMatrix:[F

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleUpdated:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressUpdated:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbLoaded:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTouchRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekBarRect:Landroid/graphics/RectF;

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekValue:F

    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgress:I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbMatrix:[F

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->isTouchFullScreen:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mMoving:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->outSideTouch:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTextSize:I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekHeight:I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekTextOffset:I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineHeight:I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressBGColor:I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressSecondaryColor:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekHeight:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mAnimMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 v0, 0x140

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v0, 0x50

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferSize:I

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferUpdated:Z

    iput-boolean p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->isTouchFullScreen:Z

    return-void
.end method

.method private getTextBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, p1, v4, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private loadThumbTexture()V
    .locals 0

    return-void
.end method

.method private updateProgressTexture()V
    .locals 9

    const/16 v7, 0xde1

    const/4 v8, 0x0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressTexture:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressTexture:I

    :cond_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressString:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressString:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->getTextBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressTexture:I

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v7, v8, v6, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v7}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v2, v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLeft:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mWidth:F

    add-float/2addr v4, v5

    sub-float v0, v4, v2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTop:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekTextOffset:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float v1, v4, v3

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinatesForStrip(FFFFII)[F

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferUpdated:Z

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressUpdated:Z

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private updateTitleTexture()V
    .locals 9

    const/16 v7, 0xde1

    const/4 v8, 0x0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleTexture:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleTexture:I

    :cond_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleString:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleString:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->getTextBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleTexture:I

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v7, v8, v6, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v7}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v2, v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v3, v4

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLeft:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTop:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekTextOffset:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float v1, v4, v3

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinatesForStrip(FFFFII)[F

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferUpdated:Z

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleUpdated:Z

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    return-void
.end method

.method protected createBuffer()V
    .locals 0

    return-void
.end method

.method public declared-synchronized draw()V
    .locals 15

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v9

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v10

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleUpdated:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleTexture:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->updateTitleTexture()V

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressUpdated:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressTexture:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->updateProgressTexture()V

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbLoaded:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbTexture:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->loadThumbTexture()V

    :cond_5
    iget v2, v9, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v2, "a_Position"

    invoke-virtual {v9, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v2, "u_Matrix"

    invoke-virtual {v9, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v11

    const-string v2, "u_Color"

    invoke-virtual {v9, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v8

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    new-array v13, v2, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v13, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    const/4 v2, 0x0

    aget v2, v13, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferId:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferUpdated:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VBO Created for seekwidget, id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    :cond_6
    const v2, 0x8892

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferId:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferUpdated:Z

    if-eqz v2, :cond_7

    const-string v2, "passing vertex data down... seekwidget"

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const v2, 0x8892

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferSize:I

    mul-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v5, 0x88e4

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferUpdated:Z

    :cond_7
    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mAnimMatrix:[F

    const/4 v5, 0x0

    invoke-static {v11, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressSecondaryColor:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressSecondaryColor:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressSecondaryColor:I

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressSecondaryColor:I

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    invoke-static {v8, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v2, 0x5

    const/16 v3, 0xc

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressBGColor:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressBGColor:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressBGColor:I

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressBGColor:I

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    invoke-static {v8, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v2, 0x5

    const/16 v3, 0x10

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v2, v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v2, "a_Position"

    invoke-virtual {v10, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v2, "u_Matrix"

    invoke-virtual {v10, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v11

    const v2, 0x8892

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferId:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v2, "u_Sampler"

    invoke-virtual {v10, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v12

    const/4 v2, 0x0

    invoke-static {v12, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v2, "a_TextureCoordinate"

    invoke-virtual {v10, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const v2, 0x8892

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mAnimMatrix:[F

    const/4 v5, 0x0

    invoke-static {v11, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/16 v2, 0xde1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressTexture:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/16 v2, 0xde1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleTexture:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbMatrix:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbLeft:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbTop:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbAnimStartTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x43160000    # 150.0f

    div-float v7, v2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbAnimStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x96

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbState:I

    :cond_8
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbMatrix:[F

    const/4 v3, 0x0

    const/high16 v4, -0x41000000    # -0.5f

    mul-float/2addr v4, v7

    const/4 v5, 0x0

    aget v5, v13, v5

    mul-float/2addr v4, v5

    const/high16 v5, -0x41000000    # -0.5f

    mul-float/2addr v5, v7

    const/4 v6, 0x1

    aget v6, v13, v6

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbMatrix:[F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbMatrix:[F

    const/4 v5, 0x0

    invoke-static {v11, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_9
    :goto_0
    const/16 v2, 0xde1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbTexture:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_a
    :try_start_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbMatrix:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbLeft:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbTop:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbAnimStartTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x43160000    # 150.0f

    div-float v7, v2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbAnimStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x96

    cmp-long v2, v2, v4

    if-lez v2, :cond_b

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbState:I

    :cond_b
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbMatrix:[F

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, v7, v5

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v13, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v13, v6

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbMatrix:[F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v7

    mul-float/2addr v6, v14

    add-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbMatrix:[F

    const/4 v5, 0x0

    invoke-static {v11, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_c
    :try_start_2
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mMoving:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbMatrix:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbLeft:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbTop:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v13

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbMatrix:[F

    const/4 v3, 0x0

    const/high16 v4, -0x41000000    # -0.5f

    const/4 v5, 0x0

    aget v5, v13, v5

    mul-float/2addr v4, v5

    const/high16 v5, -0x41000000    # -0.5f

    const/4 v6, 0x1

    aget v6, v13, v6

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbMatrix:[F

    const/4 v3, 0x0

    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbMatrix:[F

    const/4 v5, 0x0

    invoke-static {v11, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public isMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mMoving:Z

    return v0
.end method

.method protected onLoad()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceChanged()V
    .locals 1

    const/4 v0, -0x1

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->onSurfaceChanged()V

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleTexture:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressTexture:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbTexture:I

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferId:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferUpdated:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x2

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->isTouchFullScreen:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mMoving:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTouchRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_2
    :goto_1
    return v3

    :pswitch_0
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTouchX:F

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mMoving:Z

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekValue:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressDown:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbAnimStartTime:J

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbState:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;->onSeekStart()V

    goto :goto_0

    :pswitch_1
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mMoving:Z

    if-nez v4, :cond_3

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mMoving:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;->onSeekStart()V

    :cond_3
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressDown:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTouchX:F

    sub-float v5, v1, v5

    mul-float/2addr v5, v7

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->updateProgress(FZ)V

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    invoke-interface {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;->onSeekEnd()V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbAnimStartTime:J

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbState:I

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mMoving:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekBarRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_e

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTouchX:F

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mMoving:Z

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLeft:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    sub-float v4, v1, v4

    mul-float/2addr v4, v7

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressDown:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressDown:I

    int-to-float v4, v4

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->updateProgress(FZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbAnimStartTime:J

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbState:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;->onSeekStart()V

    goto/16 :goto_1

    :cond_6
    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mMoving:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTouchRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_8
    :goto_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto/16 :goto_1

    :pswitch_3
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTouchX:F

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mMoving:Z

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekValue:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressDown:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbAnimStartTime:J

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbState:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;->onSeekStart()V

    goto :goto_2

    :pswitch_4
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mMoving:Z

    if-nez v4, :cond_9

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mMoving:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;->onSeekStart()V

    :cond_9
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->outSideTouch:Z

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTouchX:F

    sub-float v0, v1, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekValue:F

    mul-float v5, v0, v7

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->updateProgress(FZ)V

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTouchX:F

    goto :goto_2

    :cond_a
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressDown:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTouchX:F

    sub-float v5, v1, v5

    mul-float/2addr v5, v7

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->updateProgress(FZ)V

    goto :goto_2

    :pswitch_5
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    invoke-interface {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;->onSeekEnd()V

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbAnimStartTime:J

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbState:I

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mMoving:Z

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->outSideTouch:Z

    goto :goto_2

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_e

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTouchX:F

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mMoving:Z

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLeft:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    int-to-float v6, v6

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    sub-float v5, v1, v5

    mul-float/2addr v5, v7

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressDown:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekBarRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_d

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressDown:I

    int-to-float v5, v5

    invoke-virtual {p0, v5, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->updateProgress(FZ)V

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->outSideTouch:Z

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbAnimStartTime:J

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbState:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;->onSeekStart()V

    goto/16 :goto_1

    :cond_d
    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->outSideTouch:Z

    goto :goto_3

    :cond_e
    move v3, v4

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDimensions(FFF)V
    .locals 11

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v10, 0x1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLeft:F

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTop:F

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mWidth:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekHeight:I

    int-to-float v4, v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mHeight:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLeft:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float v0, v4, v5

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTop:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mHeight:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float v1, v4, v5

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mWidth:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    int-to-float v5, v5

    sub-float v2, v4, v5

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineHeight:I

    int-to-float v3, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineWidth:I

    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLeft:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTop:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLeft:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mWidth:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTop:F

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mHeight:F

    add-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mViewBound:Landroid/graphics/RectF;

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinatesForStrip(FFFFII)[F

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLeft:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTop:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLeft:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mWidth:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTop:F

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mHeight:F

    add-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekBarRect:Landroid/graphics/RectF;

    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressUpdated:Z

    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleUpdated:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbLoaded:Z

    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferUpdated:Z

    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSizeSet:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekValue:F

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->updateProgress(F)V

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    return-void
.end method

.method public setSize(IIII)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 3

    const/4 v2, 0x1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTextColor:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressUpdated:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleUpdated:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 3

    const/4 v2, 0x1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTextSize:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressUpdated:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleUpdated:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleString:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTitleUpdated:Z

    return-void
.end method

.method public setType(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mType:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgress:I

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public updateMatrix([F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mAnimMatrix:[F

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateProgress(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->updateProgress(FZ)V

    return-void
.end method

.method public updateProgress(FZ)V
    .locals 14

    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    const/high16 p1, 0x42c80000    # 100.0f

    :cond_1
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekValue:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    invoke-interface {v4, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;->onSmoothSeek(F)V

    :cond_2
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekValue:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgress:I

    if-eq v4, v8, :cond_3

    if-eqz p2, :cond_3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekValue:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgress:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgress:I

    invoke-interface {v4, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;->onProgressChanged(I)V

    :cond_3
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mType:I

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgress:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressString:Ljava/lang/String;

    :goto_0
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mType:I

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mType:I

    const/4 v8, 0x3

    if-eq v4, v8, :cond_4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mType:I

    const/4 v8, 0x4

    if-ne v4, v8, :cond_9

    :cond_4
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTop:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v4, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineHeight:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v1, v4, v8

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineHeight:I

    int-to-float v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLeft:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float v0, v4, v8

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    const/high16 v8, 0x42c80000    # 100.0f

    div-float v2, v4, v8

    add-float v4, v0, v2

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v10, v4, v8

    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressUpdated:Z

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v8, 0x40

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinatesForStrip(FFFFII)[F

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    int-to-float v7, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    int-to-float v6, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTop:F

    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v8, 0x20

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v9

    move v4, v10

    invoke-static/range {v4 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinatesForStrip(FFFFII)[F

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-enter p0

    :try_start_2
    iput v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbLeft:F

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbTop:F

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mVertexBufferUpdated:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTouchRect:Landroid/graphics/RectF;

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v6, v8

    add-float/2addr v8, v10

    const/high16 v9, 0x42480000    # 50.0f

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    add-float/2addr v9, v5

    const/high16 v11, 0x42480000    # 50.0f

    sub-float/2addr v9, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v6, v11

    add-float/2addr v11, v10

    const/high16 v12, 0x42480000    # 50.0f

    add-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v7, v12

    add-float/2addr v12, v5

    const/high16 v13, 0x42480000    # 50.0f

    add-float/2addr v12, v13

    invoke-virtual {v4, v8, v9, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void

    :cond_5
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mType:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgress:I

    add-int/lit8 v8, v8, -0x32

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressString:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mType:I

    const/4 v8, 0x3

    if-ne v4, v8, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgress:I

    mul-int/lit8 v8, v8, 0x8

    div-int/lit8 v8, v8, 0x64

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressString:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mType:I

    const/4 v8, 0x4

    if-ne v4, v8, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgress:I

    mul-int/lit8 v8, v8, 0x7

    div-int/lit8 v8, v8, 0x64

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressString:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mSeekValue:F

    const/high16 v9, 0x42480000    # 50.0f

    sub-float/2addr v8, v9

    const/high16 v9, 0x41c80000    # 25.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x42480000    # 50.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mProgressString:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mTop:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v4, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineHeight:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v1, v4, v8

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineHeight:I

    int-to-float v3, v4

    const/high16 v4, 0x42480000    # 50.0f

    cmpg-float v4, p1, v4

    if-gez v4, :cond_a

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineWidth:I

    int-to-float v4, v4

    const/high16 v8, 0x42480000    # 50.0f

    sub-float/2addr v8, p1

    mul-float/2addr v4, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float v2, v4, v8

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLeft:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v4, v8

    sub-float v0, v4, v2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v10, v0, v4

    goto/16 :goto_1

    :cond_a
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineWidth:I

    int-to-float v4, v4

    const/high16 v8, 0x42480000    # 50.0f

    sub-float v8, p1, v8

    mul-float/2addr v4, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float v2, v4, v8

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLeft:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v4, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mLineWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float v0, v4, v8

    add-float v4, v0, v2

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->mThumbSize:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v10, v4, v8

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4
.end method
