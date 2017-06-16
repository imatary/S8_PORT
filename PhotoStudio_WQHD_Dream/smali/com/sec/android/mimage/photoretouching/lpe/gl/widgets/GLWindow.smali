.class public abstract Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;
.source "GLWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow$WindowListener;
    }
.end annotation


# static fields
.field private static final BORDER_COLOR:I = -0x1000000

.field private static final BORDER_WIDTH:I = 0x3

.field private static final DEFAULT_MENU_COLOR:I = -0xffff01


# instance fields
.field private dx:F

.field private dy:F

.field private exitPressed:Z

.field private initialized:Z

.field private mActionBarHeight:I

.field private mBorderLineBuffer:Ljava/nio/FloatBuffer;

.field private mCurrWindowX:I

.field private mCurrWindowY:I

.field private mExitBtn:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

.field private mHighLight:Z

.field private mIsMoving:Z

.field private mLoaded:Z

.field private mMenuBG:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

.field private mMenuHeight:I

.field private mTitleBuffer:Ljava/nio/FloatBuffer;

.field private mTitleMargin:I

.field private mTitleStr:Landroid/graphics/Bitmap;

.field private mTitleTexture:I

.field private mWindowHeight:I

.field private mWindowListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow$WindowListener;

.field protected mWindowMatrix:[F

.field private mWindowWidth:I

.field private mWindowX:I

.field private mWindowY:I

.field protected textUpdated:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowMatrix:[F

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->textUpdated:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleMargin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleStr:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mLoaded:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleTexture:I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mHighLight:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->initialized:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->exitPressed:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mIsMoving:Z

    return-void
.end method

.method private getTextBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x42480000    # 50.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, p1, v4, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    int-to-float v5, v5

    invoke-virtual {v1, p1, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private updateBuffers()V
    .locals 11

    const/4 v10, 0x0

    const/16 v4, 0x38

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mBorderLineBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mBorderLineBuffer:Ljava/nio/FloatBuffer;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowX:I

    int-to-float v5, v5

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowY:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v5, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mBorderLineBuffer:Ljava/nio/FloatBuffer;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowX:I

    int-to-float v5, v5

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowY:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v5, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mBorderLineBuffer:Ljava/nio/FloatBuffer;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowX:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getWidth()F

    move-result v7

    add-float/2addr v5, v7

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowY:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v5, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mBorderLineBuffer:Ljava/nio/FloatBuffer;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowX:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getWidth()F

    move-result v7

    add-float/2addr v5, v7

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v5, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mBorderLineBuffer:Ljava/nio/FloatBuffer;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowX:I

    int-to-float v5, v5

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v5, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mBorderLineBuffer:Ljava/nio/FloatBuffer;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowX:I

    int-to-float v5, v5

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowY:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v5, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mBorderLineBuffer:Ljava/nio/FloatBuffer;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowX:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getWidth()F

    move-result v7

    add-float/2addr v5, v7

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowY:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v5, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mBorderLineBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleStr:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowX:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleMargin:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v0, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowY:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleMargin:I

    add-int/2addr v4, v5

    int-to-float v1, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleMargin:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleStr:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleStr:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFII)[F

    move-result-object v6

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->cleanUp()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->initialized:Z

    return-void
.end method

.method public final declared-synchronized draw()V
    .locals 17

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v14

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->onDraw()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->drawWindowBody()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mLoaded:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleTexture:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    :cond_3
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleTexture:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mLoaded:Z

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->textUpdated:Z

    if-eqz v2, :cond_5

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleTexture:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleStr:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/16 v2, 0xde1

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->textUpdated:Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mBorderLineBuffer:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v10

    iget v2, v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Landroid/opengl/GLES20;->glLineWidth(F)V

    const-string v2, "a_Position"

    invoke-virtual {v10, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v1

    const-string v2, "u_Color"

    invoke-virtual {v10, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v8

    const-string v2, "u_Matrix"

    invoke-virtual {v10, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v12

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mBorderLineBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mHighLight:Z

    if-eqz v2, :cond_7

    const v7, -0xffff01

    :goto_2
    shr-int/lit8 v2, v7, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    shr-int/lit8 v3, v7, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    and-int/lit16 v4, v7, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    shr-int/lit8 v5, v7, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    invoke-static {v8, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowMatrix:[F

    const/4 v5, 0x0

    invoke-static {v12, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleBuffer:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v13

    iget v2, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v2, "a_Position"

    invoke-virtual {v13, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v1

    const-string v2, "a_TextureCoordinate"

    invoke-virtual {v13, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v15

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v15}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v2, "u_Matrix"

    invoke-virtual {v13, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v11

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowMatrix:[F

    const/4 v5, 0x0

    invoke-static {v11, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleTexture:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_7
    const/high16 v7, -0x1000000

    goto/16 :goto_2
.end method

.method public abstract drawWindowBody()V
.end method

.method protected getBodyRect()Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getLeft()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getHeight()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getBottom()F
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mCurrWindowY:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getLeft()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mCurrWindowX:I

    int-to-float v0, v0

    return v0
.end method

.method protected getMenuBGValue()I
    .locals 1

    const v0, -0xffff01

    return v0
.end method

.method public getRight()F
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mCurrWindowX:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getTop()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mCurrWindowY:I

    int-to-float v0, v0

    return v0
.end method

.method public initChildren()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->removeAllViews()V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const v2, 0x10000005

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mExitBtn:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuBG:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->initSizes()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuBG:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setScrollable(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mExitBtn:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setScrollable(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuBG:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowMatrix:[F

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setScrollMatrix([F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mExitBtn:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowMatrix:[F

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setScrollMatrix([F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuBG:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mExitBtn:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method protected initSizes()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuBG:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mExitBtn:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setSize(IIII)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->updateBuffers()V

    return-void
.end method

.method public initWindow(IIII)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08048e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mActionBarHeight:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    sub-int v2, p2, v0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    add-int v4, p4, v0

    move-object v0, p0

    move v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->setSize(IIIIZ)V

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowX:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowY:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowWidth:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowHeight:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowX:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mCurrWindowX:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowY:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mCurrWindowY:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowMatrix:[F

    invoke-static {v0, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->initChildren()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->initialized:Z

    return-void
.end method

.method public isHighlighted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mHighLight:Z

    return v0
.end method

.method protected isMenuBGImage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mIsMoving:Z

    return v0
.end method

.method public moveTo(II)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mCurrWindowX:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mCurrWindowY:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowMatrix:[F

    invoke-static {v0, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowMatrix:[F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowX:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mCurrWindowX:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowY:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mCurrWindowY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v0, v5, v1, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getLeft()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getTop()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->onWindowMoved(IIII)V

    return-void
.end method

.method public abstract onExitClick()V
.end method

.method public abstract onOrientation(I)V
.end method

.method public onOrientationChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->initSizes()V

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->onOrientation(I)V

    return-void
.end method

.method protected abstract onTouch(Landroid/view/MotionEvent;)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mIsMoving:Z

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->exitPressed:Z

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->exitPressed:Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mExitBtn:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v3, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setPressed(Z)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    move v2, v3

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mIsMoving:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->exitPressed:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mExitBtn:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->exitPressed:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mExitBtn:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setPressed(Z)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuBG:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mIsMoving:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getLeft()F

    move-result v2

    sub-float v2, v0, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->dx:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getTop()F

    move-result v2

    sub-float v2, v1, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->dy:F

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->onTouch(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_1
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mIsMoving:Z

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mIsMoving:Z

    if-eqz v4, :cond_5

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mIsMoving:Z

    goto :goto_1

    :cond_5
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->exitPressed:Z

    if-eqz v4, :cond_7

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->exitPressed:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mExitBtn:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    invoke-virtual {v4, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setPressed(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow$WindowListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow$WindowListener;

    invoke-interface {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow$WindowListener;->onExitClick(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;)V

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->onExitClick()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->onTouch(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mIsMoving:Z

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->dx:F

    sub-float v4, v0, v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mCurrWindowX:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mActionBarHeight:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->dy:F

    sub-float v5, v1, v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mCurrWindowY:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowMatrix:[F

    invoke-static {v4, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowMatrix:[F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowX:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mCurrWindowX:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowY:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mCurrWindowY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v8

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v4, v2, v5, v6, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getLeft()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getTop()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getWidth()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getHeight()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mMenuHeight:I

    sub-int/2addr v6, v7

    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->onWindowMoved(IIII)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto/16 :goto_1

    :cond_8
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->exitPressed:Z

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->onTouch(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract onWindowMoved(IIII)V
.end method

.method public setHighlight(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mHighLight:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public setTile(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getTextBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleStr:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->updateBuffers()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->textUpdated:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->getTextBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mTitleStr:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->updateBuffers()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->textUpdated:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public setWindowListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow$WindowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->mWindowListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow$WindowListener;

    return-void
.end method
