.class Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$7;
.super Ljava/lang/Object;
.source "GallerySearchViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$7;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(II)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$7;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$8200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$7;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$8300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$7;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->selectMedia(I)V
    invoke-static {v0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$8400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$7;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$8500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$7;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$8600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;->setImeVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$7;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$8800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$7;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$8700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;->getOldSearchText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSearchText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$7;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$8900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const-string/jumbo v1, "SETX"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$7;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->startDetailViewInUIThread(IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$7;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v0, p2, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->startDetailViewInUIThread(IZ)V

    goto :goto_0
.end method
