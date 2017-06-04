.class Lcom/sec/android/gallery3d/glcore/LibGLRootView$2;
.super Ljava/lang/Object;
.source "LibGLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setLightsOutMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/LibGLRootView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$2;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iput-boolean p2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$2;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$2;->val$enabled:Z

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x100

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$2;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$2;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getSystemUiVisibility()I

    move-result v2

    or-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setSystemUiVisibility(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$2;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
