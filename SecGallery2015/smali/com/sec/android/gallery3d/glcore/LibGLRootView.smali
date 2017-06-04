.class public Lcom/sec/android/gallery3d/glcore/LibGLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "LibGLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/sec/android/gallery3d/ui/GLRoot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;,
        Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_FLING:I = 0x3eb

.field public static final ACTION_GENERIC_ENTER:I = 0x3e8

.field public static final ACTION_GENERIC_EXIT:I = 0x3e9

.field public static final ACTION_GENERIC_MOVE:I = 0x3ea

.field private static final DEBUG_DRAWING_STAT:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final DEBUG_PROFILE:Z = false

.field private static final DEBUG_PROFILE_SLOW_ONLY:Z = false

.field private static final FLAG_INITIALIZED:I = 0x1

.field static final FLAG_NEED_LAYOUT:I = 0x2

.field private static final ROOTVIEW_TYPE_ORIGIN:I = 0x1

.field public static final ROOTVIEW_TYPE_SMART_VIEW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LibGLRootView"


# instance fields
.field private mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;

.field final mAllTextures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sec/android/gallery3d/glrenderer/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/anim/CanvasAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

.field private final mCompensationMatrix:Landroid/graphics/Matrix;

.field mContentView:Lcom/sec/android/gallery3d/ui/GLView;

.field mContext:Landroid/content/Context;

.field mCurTime:J

.field private mDisplayRotation:I

.field mFlags:I

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mFreeze:Z

.field private final mFreezeCondition:Ljava/util/concurrent/locks/Condition;

.field mGL:Ljavax/microedition/khronos/opengles/GL11;

.field public final mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

.field public mHeight:I

.field final mIdleListeners:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/sec/android/gallery3d/ui/GLRoot$OnGLIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field final mIdleRunner:Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;

.field mInDownState:Z

.field private mInvalidateColor:I

.field private mLastDrawFinishTime:J

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public volatile mRenderRequested:Z

.field private final mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

.field private final mRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/anim/Animation;",
            ">;"
        }
    .end annotation
.end field

.field volatile mSkipRendering:Z

.field mType:I

.field private mUpdateBackscreenListener:Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;

.field private mUsePostOnAnimation:Z

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFrameCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFrameCountingStart:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mInvalidateColor:I

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFlags:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderRequested:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mSkipRendering:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;-><init>(Lcom/sec/android/gallery3d/glcore/LibGLRootView;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mIdleRunner:Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mInDownState:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mAllTextures:Ljava/util/WeakHashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mUsePostOnAnimation:Z

    new-instance v0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView$1;-><init>(Lcom/sec/android/gallery3d/glcore/LibGLRootView;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mType:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFlags:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setEGLContextClientVersion(I)V

    sget-boolean v0, Lcom/sec/android/gallery3d/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setEGLConfigChooser(IIIIII)V

    :goto_0
    invoke-virtual {p0, p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    sget-boolean v0, Lcom/sec/android/gallery3d/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setEGLConfigChooser(IIIIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/glcore/LibGLRootView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->superRequestRender()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/glcore/LibGLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private getDisplayRotation(Landroid/content/Context;)I
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v1, v2

    :goto_0
    return v1

    :pswitch_0
    move v1, v2

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private layoutContentPane()V
    .locals 4

    const/4 v3, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFlags:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getDisplayRotation(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mDisplayRotation:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/sec/android/gallery3d/ui/GLView;->layout(IIII)V

    :cond_0
    return-void
.end method

.method private outputFps()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFrameCountingStart:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iput-wide v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFrameCountingStart:J

    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFrameCount:I

    return-void

    :cond_1
    iget-wide v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFrameCountingStart:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-string/jumbo v2, "LibGLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFrameCount:I

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFrameCountingStart:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFrameCountingStart:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFrameCount:I

    goto :goto_0
.end method

.method private processAnimation()Z
    .locals 10

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mAnimations:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/anim/Animation;

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-wide v8, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCurTime:J

    invoke-virtual {v1, v8, v9}, Lcom/sec/android/gallery3d/anim/Animation;->setStartTime(J)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    :goto_2
    if-ltz v4, :cond_3

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/anim/Animation;

    iget-wide v8, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCurTime:J

    invoke-virtual {v1, v8, v9}, Lcom/sec/android/gallery3d/anim/Animation;->calculate(J)Z

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/anim/Animation;->isActive()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    or-int/2addr v3, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    return v3
.end method

.method private rotateCanvas(I)V
    .locals 8

    const/4 v7, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getHeight()I

    move-result v2

    div-int/lit8 v0, v3, 0x2

    div-int/lit8 v1, v2, 0x2

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-interface {v4, v5, v6}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    int-to-float v5, p1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v4, v5, v7, v7, v6}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    rem-int/lit16 v4, p1, 0xb4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    neg-int v5, v1

    int-to-float v5, v5

    neg-int v6, v0

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    neg-int v5, v0

    int-to-float v5, v5

    neg-int v6, v1

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0
.end method

.method private superRequestRender()V
    .locals 0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method


# virtual methods
.method public addOnGLIdleListener(Lcom/sec/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mIdleRunner:Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->enable()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method clearGLIdleListener()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mInDownState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_3
    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->unfreeze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    throw v0
.end method

.method public freeze()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFreeze:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/glcore/LibGLRootView;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mAccessibliityNodeProvider:Lcom/sec/samsung/gallery/view/accessibility/LibGLAccessibilityNodeProvider;

    return-object v0
.end method

.method public getAllTextures()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sec/android/gallery3d/glrenderer/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mAllTextures:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public getBgColor()[F
    .locals 4

    const v0, 0x3f7ae148    # 0.98f

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    return-object v1
.end method

.method public getCompensationMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getContentPane()Lcom/sec/android/gallery3d/ui/GLView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mDisplayRotation:I

    return v0
.end method

.method public getType()I
    .locals 3

    const-string/jumbo v0, "LibGLRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GLRootView Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mType:I

    return v0
.end method

.method public lockRenderThread()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->unfreeze()V

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->update()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFreeze:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    if-nez v5, :cond_0

    new-instance v5, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;

    invoke-direct {v5, v1, p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;-><init>(Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/LibGLRootView;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    iget v8, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mWidth:I

    iget v9, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mHeight:I

    invoke-interface {v5, v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->setSize(II)V

    :cond_0
    const/16 v5, 0x4100

    invoke-interface {v1, v5}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCurTime:J

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->processAnimation()Z

    move-result v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->deleteRecycledResources()V

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->resetUploadLimit()V

    iput-boolean v10, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderRequested:Z

    iget v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->layoutContentPane()V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    const/4 v8, -0x1

    invoke-interface {v5, v8}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    invoke-direct {p0, v10}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->rotateCanvas(I)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    iget-object v8, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    invoke-virtual {v5, v8}, Lcom/sec/android/gallery3d/ui/GLView;->render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    :cond_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v6

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/gallery3d/anim/CanvasAnimation;->setStartTime(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->uploadLimitReached()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->requestRender()V

    :cond_5
    iget-object v8, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v8

    :try_start_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mIdleRunner:Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->enable()V

    :cond_6
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_7

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->uploadLimitReached()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->requestRender()V

    :cond_8
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v5, "LibGLRootView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/ui/GLView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/ui/GLView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->requestLayoutContentPane()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->unfreeze()V

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5

    const/4 v1, 0x1

    const-string/jumbo v2, "LibGLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSurfaceChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", gl10: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", rootView type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mUsePostOnAnimation:Z

    const/4 v2, -0x4

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->setRenderThread()V

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v1, p2, p3}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->setSize(II)V

    :cond_0
    iput p2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mWidth:I

    iput p3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mHeight:I

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4

    const-string/jumbo v1, "LibGLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSurfaceCreated = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", rootView type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0xb50

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    const/16 v1, 0xb60

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlState;->resetCommonAttributes()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LibGLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GLObject has changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", rootView type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    new-instance v1, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;

    invoke-direct {v1, v0, p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;-><init>(Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/LibGLRootView;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->invalidateAllTextures()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setRenderMode(I)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public registerLaunchedAnimation(Lcom/sec/android/gallery3d/anim/CanvasAnimation;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAnimation(Lcom/sec/android/gallery3d/anim/Animation;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRunningAnimations:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestLayoutContentPane()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_2
    :try_start_2
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFlags:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->requestRender()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public requestRender()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderRequested:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderRequested:Z

    sget-boolean v0, Lcom/sec/android/gallery3d/common/ApiHelper;->HAS_POST_ON_ANIMATION:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mUsePostOnAnimation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public setContentPane(Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mInDownState:Z

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v2, v8}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v7, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mInDownState:Z

    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/GLView;->detachFromRoot()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->yieldAllTextures()V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->clearGLIdleListener()V

    :cond_3
    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/sec/android/gallery3d/ui/GLView;->attachToRoot(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->requestLayoutContentPane()V

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v4, 0x3e9

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContentView:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v2, v8}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1
.end method

.method public setLightsOutMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/LibGLRootView$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView$2;-><init>(Lcom/sec/android/gallery3d/glcore/LibGLRootView;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPostOnAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mUsePostOnAnimation:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mType:I

    return-void
.end method

.method public setUpdateBackscreenListener(Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mUpdateBackscreenListener:Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->unfreeze()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mUpdateBackscreenListener:Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mUpdateBackscreenListener:Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;->updateInPauseState()V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->unfreeze()V

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mUpdateBackscreenListener:Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mUpdateBackscreenListener:Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;->updateInPauseState()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->unfreeze()V

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public unfreeze()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFreeze:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public unlockRenderThread()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
