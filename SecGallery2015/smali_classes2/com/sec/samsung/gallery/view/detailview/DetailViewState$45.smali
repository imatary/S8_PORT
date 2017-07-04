.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$45;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->startMoreInfo()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$45;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$45;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$32000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$45;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$32100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$45;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$32200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$45;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$32300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$45;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$45;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$45;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$32400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$45;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v5

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreinfoBlurBackground:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$45;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$32500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    invoke-direct {v3, v4, v5, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;ZLandroid/graphics/Bitmap;)V

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$45;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$45;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$32600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->setVisionCloudUtils(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$45;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->initView()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$45;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->initActionBar()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
