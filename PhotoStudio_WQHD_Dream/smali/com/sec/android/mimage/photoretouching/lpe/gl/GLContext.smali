.class public abstract Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
.super Landroid/opengl/GLSurfaceView;
.source "GLContext.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field protected mBackgroundColor:[F

.field private mContext:Landroid/content/Context;

.field protected mGLProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;

.field protected mScreenHeight:I

.field protected mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->mBackgroundColor:[F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->mBackgroundColor:[F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->setEGLContextClientVersion(I)V

    invoke-virtual {p0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->setRenderMode(I)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public abstract clickSound()V
.end method

.method public finish()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->onPause()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->mGLProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v0

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->mScreenWidth:I

    return v0
.end method

.method public requestRender()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLContext::requestRender = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->findCaller(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBackgroundColor(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->mBackgroundColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->mBackgroundColor:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->mBackgroundColor:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->mBackgroundColor:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method
