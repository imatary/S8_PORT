.class public Lcom/sec/samsung/gallery/glview/GlAbsListView;
.super Lcom/sec/android/gallery3d/glcore/GlLayer;
.source "GlAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/GlAbsListView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final CMD_RESIZE_REQ:I = 0x6

.field public static final DEF_DISTANCE:F = 800.0f

.field private static final DEF_FOV:F = 30.0f

.field private static final TAG:Ljava/lang/String; = "GlAbsListView"


# instance fields
.field final mContext:Landroid/content/Context;

.field mGl:Ljavax/microedition/khronos/opengles/GL10;

.field mOnItemClickListener:Lcom/sec/samsung/gallery/glview/GlAbsListView$OnItemClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlLayer;-><init>()V

    const-string/jumbo v0, "GlAbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GlAbsListView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private doResize()V
    .locals 3

    const-string/jumbo v0, "GlAbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Resize not supported for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setDefaultDistance(FF)V
    .locals 6

    iput p1, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mFov:F

    iput p2, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mDistance:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mHeight:I

    int-to-float v2, v2

    div-float v0, v1, v2

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mDistance:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mFov:F

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mHeightSpace:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mHeightSpace:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mWidthSpace:F

    goto :goto_0
.end method


# virtual methods
.method getDistance()F
    .locals 1

    const/high16 v0, 0x44480000    # 800.0f

    return v0
.end method

.method protected onCommand(ILjava/lang/Object;III)V
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/GlAbsListView;->doResize()V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setMultiWindow()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlAbsListView;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlAbsListView;->resetLayout()V

    :cond_0
    return-void
.end method

.method resetLayout()V
    .locals 8

    const/4 v7, 0x0

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlAbsListView;->getDistance()F

    move-result v1

    const/16 v4, 0x10

    new-array v3, v4, [F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mHeight:I

    int-to-float v5, v5

    div-float v0, v4, v5

    invoke-direct {p0, v2, v1}, Lcom/sec/samsung/gallery/glview/GlAbsListView;->setDefaultDistance(FF)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v4, :cond_0

    const-string/jumbo v4, "GlAbsListView"

    const-string/jumbo v5, "resetLayout : gl root is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getGLContext()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    if-nez v4, :cond_1

    const-string/jumbo v4, "GlAbsListView"

    const-string/jumbo v5, "resetLayout : gl root context is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0xde1

    invoke-interface {v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x302

    const/16 v6, 0x303

    invoke-interface {v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1701

    invoke-interface {v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-static {v3, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x44fa0000    # 2000.0f

    invoke-static {v3, v2, v0, v4, v5}, Lcom/sec/android/gallery3d/glcore/TUtils;->glhPerspectivef2([FFFFF)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getGlConfig()Lcom/sec/android/gallery3d/glcore/GlConfig;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/glcore/GlConfig;->setProspectMatrix([F)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v4, v3, v7}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1700

    invoke-interface {v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/sec/samsung/gallery/glview/GlBaseAdapter;)V
    .locals 0

    return-void
.end method

.method public setOnItemClickListener(Lcom/sec/samsung/gallery/glview/GlAbsListView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/GlAbsListView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/GlAbsListView$OnItemClickListener;

    return-void
.end method
