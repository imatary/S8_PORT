.class Lcom/sec/android/gallery3d/glcore/GlRootView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GlRootView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glcore/GlRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$ScaleListener;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/android/gallery3d/glcore/GlRootView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView$ScaleListener;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$ScaleListener;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->access$100(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$ScaleListener;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->access$100(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchScale(Landroid/view/ScaleGestureDetector;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    const-string/jumbo v0, "GlRootView"

    const-string/jumbo v1, "onScaleBegin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$ScaleListener;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->access$100(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$ScaleListener;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->access$100(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    const-string/jumbo v0, "GlRootView"

    const-string/jumbo v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$ScaleListener;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->access$100(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$ScaleListener;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->access$100(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchScaleEnd(Landroid/view/ScaleGestureDetector;)V

    :cond_0
    return-void
.end method
