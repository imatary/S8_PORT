.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initBeam()V
    .locals 3

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseBeam:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2602(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;)Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;->setBeamListener()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;->registerSettingObserver()V

    goto :goto_0
.end method

.method private initHoverGestureDetector()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$SimpleOnGestureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->setListener(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$OnListScrollListner;)V

    return-void
.end method

.method private initWfd()V
    .locals 3

    const-string/jumbo v0, "DetailViewState"

    const-string/jumbo v1, "initWfd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseWfd:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    new-instance v1, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2802(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->registerReceiver()V

    :cond_0
    return-void
.end method

.method private updateOptionMenus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIgnoreInvalidateOptionsMenu(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method public onGLIdle()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->initBeam()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->initWfd()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->initHoverGestureDetector()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$8;->updateOptionMenus()V

    return-void
.end method
