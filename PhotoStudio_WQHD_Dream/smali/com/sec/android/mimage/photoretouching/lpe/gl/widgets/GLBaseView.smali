.class public abstract Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
.super Ljava/lang/Object;
.source "GLBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnFocusListener;,
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnKeyListener;,
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnTouchListener;,
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;,
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;
    }
.end annotation


# static fields
.field public static final ID_NONE:I = -0x1

.field public static final IS_CLICKABLE:I = 0x10

.field public static final IS_DRAGGABLE:I = 0x20

.field public static final IS_LONG_CLICKABLE:I = 0x40

.field public static final IS_SCROLLABLE:I = 0x100

.field public static final IS_VISIBLE:I = 0x80

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_FOCUSED:I = 0x8

.field public static final STATE_PRESSED:I = 0x2

.field public static final STATE_SELECTED:I = 0x4


# instance fields
.field private isSmoothScaling:Z

.field private mAlpha:F

.field private mAnimMatrix:[F

.field private mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

.field protected mCombinedMatrix:[F

.field protected mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mCurrentScale:F

.field private mFlags:I

.field private mFromScale:F

.field protected mId:I

.field private mIsAnimating:Z

.field protected mIsLoaded:Z

.field protected mIsLoading:Z

.field private mIsParentAnimating:Z

.field private mNextFocusDownId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field protected mOnClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

.field private mOnLongClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;

.field private mParent:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;

.field private mScaleDuration:I

.field private mScaleStartTime:J

.field protected mSizeSet:Z

.field private mTag:Ljava/lang/Object;

.field private mToScale:F

.field protected mTransformationMatrix:[F

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;

.field protected mViewBound:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;FFFF)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v3, 0x10

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsLoading:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsLoaded:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mSizeSet:Z

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCombinedMatrix:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mTransformationMatrix:[F

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAlpha:F

    const/16 v0, 0x81

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFlags:I

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAnimMatrix:[F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusLeftId:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusRightId:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusUpId:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusDownId:I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsAnimating:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsParentAnimating:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->isSmoothScaling:Z

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCurrentScale:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mSizeSet:Z

    new-instance v0, Landroid/graphics/RectF;

    add-float v1, p2, p4

    add-float v2, p3, p5

    invoke-direct {v0, p2, p3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mViewBound:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->resetMatrix()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->createBuffer()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v3, 0x10

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsLoading:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsLoaded:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mSizeSet:Z

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCombinedMatrix:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mTransformationMatrix:[F

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAlpha:F

    const/16 v0, 0x81

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFlags:I

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAnimMatrix:[F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusLeftId:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusRightId:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusUpId:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusDownId:I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsAnimating:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsParentAnimating:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->isSmoothScaling:Z

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCurrentScale:F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mId:I

    return-void
.end method

.method private updateScaleMatrix()V
    .locals 11

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mTransformationMatrix:[F

    invoke-static {v2, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFromScale:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mToScale:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFromScale:F

    sub-float/2addr v3, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mScaleStartTime:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mScaleDuration:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCurrentScale:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFromScale:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mToScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCurrentScale:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mToScale:F

    cmpl-float v2, v2, v3

    if-gez v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFromScale:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mToScale:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCurrentScale:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mToScale:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mToScale:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCurrentScale:F

    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->isSmoothScaling:Z

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getWidth()F

    move-result v3

    div-float/2addr v3, v9

    add-float/2addr v2, v3

    mul-float/2addr v2, v9

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v0, v2, v8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getHeight()F

    move-result v3

    div-float/2addr v3, v9

    add-float/2addr v2, v3

    mul-float/2addr v2, v9

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v1, v8, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mTransformationMatrix:[F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCurrentScale:F

    sub-float v3, v8, v3

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCurrentScale:F

    sub-float v4, v8, v4

    mul-float/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v2, v10, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mTransformationMatrix:[F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCurrentScale:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCurrentScale:F

    invoke-static {v2, v10, v3, v4, v8}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public contains(FF)Z
    .locals 4

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mSizeSet:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getTop()F

    move-result v1

    cmpl-float v3, p1, v0

    if-lez v3, :cond_0

    cmpl-float v3, p2, v1

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getWidth()F

    move-result v3

    add-float/2addr v3, v0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getHeight()F

    move-result v3

    add-float/2addr v3, v1

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method protected createBuffer()V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getTop()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mViewBound:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mViewBound:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFII)[F

    move-result-object v6

    array-length v0, v6

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public disable(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFlags:I

    return-void
.end method

.method protected abstract draw()V
.end method

.method public enable(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFlags:I

    return-void
.end method

.method public declared-synchronized getAlpha()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAlpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAnimationMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mParent:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsParentAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mParent:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->getAnimationMatrix()[F

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAnimMatrix:[F

    goto :goto_0
.end method

.method public getBottom()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mViewBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mParent:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mParent:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->getBottom()F

    move-result v0

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoundRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mViewBound:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getChildAt(FF)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getCombinedMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCombinedMatrix:[F

    return-object v0
.end method

.method public final getHeight()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mViewBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mViewBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mId:I

    return v0
.end method

.method public getLayoutX()F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mViewBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public getLayoutY()F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mViewBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public getLeft()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mViewBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mParent:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mParent:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->getLeft()F

    move-result v0

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getNextFocusDownId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusDownId:I

    return v0
.end method

.method public final getNextFocusLeftId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusLeftId:I

    return v0
.end method

.method public final getNextFocusRightId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusRightId:I

    return v0
.end method

.method public final getNextFocusUpId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusUpId:I

    return v0
.end method

.method public getRight()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mViewBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mParent:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mParent:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->getRight()F

    move-result v0

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScrollMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mTransformationMatrix:[F

    return-object v0
.end method

.method public getStatus(I)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getTag()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mTag:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTop()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mViewBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mParent:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mParent:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->getTop()F

    move-result v0

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getWidth()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mViewBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mViewBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mParent:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mParent:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClickable()Z
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getStatus(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getStatus(I)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getStatus(I)Z

    move-result v0

    return v0
.end method

.method public isPressed()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getStatus(I)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getStatus(I)Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getStatus(I)Z

    move-result v0

    return v0
.end method

.method public load()Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsLoading:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAnimationEnd()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsAnimating:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAnimMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method protected onAnimationStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsAnimating:Z

    return-void
.end method

.method public onClick()V
    .locals 0

    return-void
.end method

.method public onDraw()V
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mSizeSet:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->isSmoothScaling:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->updateScaleMatrix()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsAnimating:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->onAnimationEnd()V

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsAnimating:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsParentAnimating:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->updateAnimMatrix()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCombinedMatrix:[F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAnimMatrix:[F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mTransformationMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->draw()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method protected abstract onLoad()Z
.end method

.method public onLongClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mOnLongClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mOnLongClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;

    invoke-interface {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;->onLongClick(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsLoaded:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public performClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mOnClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mOnClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

    invoke-interface {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;->onClick(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized resetMatrix()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCombinedMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mTransformationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAnimMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAlpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAnimation(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->cancelAnimation()V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->enable(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->disable(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->enable(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->disable(I)V

    goto :goto_0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mId:I

    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusDownId:I

    return-void
.end method

.method public setNextFocusDownView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusDownId:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusLeftId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusLeftId:I

    return-void
.end method

.method public setNextFocusLeftView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusLeftId:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusRightId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusRightId:I

    return-void
.end method

.method public setNextFocusRightView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusRightId:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusUpId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusUpId:I

    return-void
.end method

.method public setNextFocusUpView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mNextFocusUpId:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->enable(I)V

    :goto_0
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mOnClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnClickListener;

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->disable(I)V

    goto :goto_0
.end method

.method public setOnLongClickListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;)V
    .locals 1

    if-nez p1, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFlags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFlags:I

    :goto_0
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mOnLongClickListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView$OnLongClickListener;

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFlags:I

    goto :goto_0
.end method

.method public setParent(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mParent:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mSizeSet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->createBuffer()V

    :cond_0
    return-void
.end method

.method protected setParentAnim(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsParentAnimating:Z

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsParentAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAnimMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->enable(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->disable(I)V

    goto :goto_0
.end method

.method public setScrollMatrix([F)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mTransformationMatrix:[F

    return-void
.end method

.method public setScrollable(Z)V
    .locals 1

    const/16 v0, 0x100

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->enable(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->disable(I)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->enable(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->disable(I)V

    goto :goto_0
.end method

.method public setSize(IIII)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mSizeSet:Z

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mViewBound:Landroid/graphics/RectF;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLBasicView::setSize mViewBound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mViewBound:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->resetMatrix()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->createBuffer()V

    return-void
.end method

.method public declared-synchronized setTag(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mTag:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVisible(Z)V
    .locals 1

    const/16 v0, 0x80

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->enable(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->disable(I)V

    goto :goto_0
.end method

.method public smoothScaleTo(FFI)V
    .locals 2

    cmpl-float v0, p1, p2

    if-eqz v0, :cond_0

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mToScale:F

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mFromScale:F

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mScaleDuration:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->isSmoothScaling:Z

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCurrentScale:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mScaleStartTime:J

    :cond_0
    return-void
.end method

.method public smoothScaleTo(FI)V
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mCurrentScale:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->smoothScaleTo(FFI)V

    return-void
.end method

.method public startAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->startAnimation(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->onAnimationStart()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_0
    return-void
.end method

.method public updateAnimMatrix()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsAnimating:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->getAnimMatrix(Landroid/content/Context;)[F

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mAnimMatrix:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->mIsParentAnimating:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;->getAnimationMatrix()[F

    move-result-object v0

    goto :goto_0
.end method
