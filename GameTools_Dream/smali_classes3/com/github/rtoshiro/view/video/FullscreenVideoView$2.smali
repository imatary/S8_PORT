.class Lcom/github/rtoshiro/view/video/FullscreenVideoView$2;
.super Ljava/lang/Object;
.source "FullscreenVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rtoshiro/view/video/FullscreenVideoView;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/rtoshiro/view/video/FullscreenVideoView;


# direct methods
.method constructor <init>(Lcom/github/rtoshiro/view/video/FullscreenVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$2;->a:Lcom/github/rtoshiro/view/video/FullscreenVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$2;->a:Lcom/github/rtoshiro/view/video/FullscreenVideoView;

    iget v0, v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->A:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$2;->a:Lcom/github/rtoshiro/view/video/FullscreenVideoView;

    iget v0, v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->z:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$2;->a:Lcom/github/rtoshiro/view/video/FullscreenVideoView;

    iget-object v0, v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->n:Landroid/view/SurfaceView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$2;->a:Lcom/github/rtoshiro/view/video/FullscreenVideoView;

    invoke-virtual {v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$2;->a:Lcom/github/rtoshiro/view/video/FullscreenVideoView;

    iget v1, v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->z:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$2;->a:Lcom/github/rtoshiro/view/video/FullscreenVideoView;

    iget v2, v2, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->A:I

    int-to-float v2, v2

    div-float v2, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v0, v3

    int-to-float v4, v1

    div-float/2addr v0, v4

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    int-to-float v0, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    move v2, v3

    :goto_1
    iget-object v4, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$2;->a:Lcom/github/rtoshiro/view/video/FullscreenVideoView;

    iget-object v4, v4, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->n:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$2;->a:Lcom/github/rtoshiro/view/video/FullscreenVideoView;

    iget-object v0, v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->n:Landroid/view/SurfaceView;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v0, "FullscreenVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resizing: initialMovieWidth: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$2;->a:Lcom/github/rtoshiro/view/video/FullscreenVideoView;

    iget v4, v4, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->z:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " - initialMovieHeight: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$2;->a:Lcom/github/rtoshiro/view/video/FullscreenVideoView;

    iget v4, v4, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->A:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FullscreenVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resizing: screenWidth: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - screenHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    int-to-float v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move v2, v0

    move v0, v1

    goto :goto_1
.end method
