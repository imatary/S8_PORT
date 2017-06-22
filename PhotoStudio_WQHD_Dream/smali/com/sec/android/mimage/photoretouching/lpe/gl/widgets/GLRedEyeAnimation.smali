.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;
.super Ljava/lang/Object;
.source "GLRedEyeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;
    }
.end annotation


# static fields
.field private static final STATE_DOWN:I = 0x3

.field private static final STATE_IDLE:I = 0x1

.field private static final STATE_UP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PEDIT_GLRedEyeAnimation"

.field private static final THUMB_ANIM_DURATION:I = 0x96

.field private static final THUMB_SCALE_FACTOR:F = 1.2f

.field private static THUMB_SIZE:I = 0x0

.field public static final TYPE_EYE_PRESENT:I = 0x2

.field public static final TYPE_NO_EYE_PRESENT:I = 0x1


# instance fields
.field private isLoaded:Z

.field private isTouch:Z

.field private mAnimationFrame:[Landroid/graphics/Bitmap;

.field private mAnimationType:I

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mErrorBitmap:Landroid/graphics/Bitmap;

.field private mEventTime:J

.field private mFloatBuffer:Ljava/nio/FloatBuffer;

.field private mId:[I

.field private mMatrix:[F

.field private mRedEyeThreadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mTextureItemError:I

.field private mThreadMatrix:[F

.field private tmp:[F

.field private vertexData:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x96

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->THUMB_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;)V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mEventTime:J

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->isLoaded:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->isTouch:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mTextureItemError:I

    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->vertexData:[F

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mMatrix:[F

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mThreadMatrix:[F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mRedEyeThreadList:Ljava/util/ArrayList;

    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mId:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationFrame:[Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->isLoaded:Z

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mState:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->loadBitmaps()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mThreadMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mRedEyeThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080382

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->THUMB_SIZE:I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 4
        0x7f020682
        0x7f020683
        0x7f020684
        0x7f020685
        0x7f020686
        0x7f020687
        0x7f020688
        0x7f020689
        0x7f02068a
        0x7f02068b
        0x7f02068c
        0x7f02068d
        0x7f02068e
        0x7f02068f
        0x7f020690
        0x7f020691
        0x7f020692
        0x7f020693
        0x7f020694
        0x7f020695
        0x7f020696
        0x7f020697
        0x7f020698
        0x7f020699
        0x7f02069a
        0x7f02069b
        0x7f02069c
        0x7f02069d
        0x7f02069e
        0x7f02069f
        0x7f02069f
    .end array-data
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->THUMB_SIZE:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mId:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)[Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationFrame:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mThreadMatrix:[F

    return-object v0
.end method

.method private loadBitmaps()V
    .locals 5

    const/16 v4, 0x96

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02041f

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mErrorBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationFrame:[Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mId:[I

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationFrame:[Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mId:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationFrame:[Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    invoke-static {v1, v4, v4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationFrame:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationFrame:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationFrame:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationFrame:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationFrame:[Landroid/graphics/Bitmap;

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mRedEyeThreadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public draw()V
    .locals 13

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mRedEyeThreadList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mRedEyeThreadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->draw()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->isTouch:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->isLoaded:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->load()V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v10

    iget v1, v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "a_Position"

    invoke-virtual {v10, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v1, "a_TextureCoordinate"

    invoke-virtual {v10, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v12

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    move v1, v12

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v12}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v1, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mTextureItemError:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v1, "u_Sampler"

    invoke-virtual {v10, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v11

    const/4 v1, 0x0

    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v1, "u_Matrix"

    invoke-virtual {v10, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v9

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mMatrix:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mEventTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43160000    # 150.0f

    div-float v8, v1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mEventTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x96

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mEventTime:J

    :cond_5
    :goto_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mMatrix:[F

    const/4 v4, 0x0

    invoke-static {v9, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mMatrix:[F

    const/4 v2, 0x0

    const v3, -0x41b33330    # -0.20000005f

    mul-float/2addr v3, v8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->tmp:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    mul-float/2addr v3, v4

    const v4, -0x41b33330    # -0.20000005f

    mul-float/2addr v4, v8

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->tmp:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mMatrix:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e4cccd0    # 0.20000005f

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e4cccd0    # 0.20000005f

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_2

    :cond_7
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mMatrix:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mEventTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43160000    # 150.0f

    div-float v8, v1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mEventTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x96

    cmp-long v1, v2, v4

    if-lez v1, :cond_8

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mState:I

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mMatrix:[F

    const/4 v2, 0x0

    const v3, 0x3e4cccd0    # 0.20000005f

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v8, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->tmp:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    mul-float/2addr v3, v4

    const v4, 0x3e4cccd0    # 0.20000005f

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, v8, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->tmp:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mMatrix:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e4cccd0    # 0.20000005f

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v8

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e4cccd0    # 0.20000005f

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v8

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_2
.end method

.method public init()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->isLoaded:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mState:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->loadBitmaps()V

    return-void
.end method

.method public declared-synchronized load()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "PEDIT_GLRedEyeAnimation"

    const-string v1, "NewRedEyeAnimation :: load"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mTextureItemError:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mTextureItemError:I

    aput v3, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mTextureItemError:I

    const/16 v0, 0xde1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mTextureItemError:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mErrorBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/16 v0, 0xde1

    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->isLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSurfaceChanged()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mTextureItemError:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->isLoaded:Z

    return-void
.end method

.method public runAnimation(III)V
    .locals 7

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;

    invoke-direct {v6, p0, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;II)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mRedEyeThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->start()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mEventTime:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mState:I

    int-to-float v0, p2

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->THUMB_SIZE:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->THUMB_SIZE:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p3, v1

    int-to-float v1, v1

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->THUMB_SIZE:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->THUMB_SIZE:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFII)[F

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->vertexData:[F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->vertexData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->vertexData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mFloatBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->isTouch:Z

    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->tmp:[F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto :goto_0
.end method

.method public setAnimationType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationType:I

    return-void
.end method
