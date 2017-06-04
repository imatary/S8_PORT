.class Lcom/sec/samsung/gallery/view/filterview/FilterViewState$4;
.super Ljava/lang/Object;
.source "FilterViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$4;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(II)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$4;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # getter for: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$000(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$4;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # invokes: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->selectAlbum(I)V
    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$1600(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;I)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$4;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # getter for: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$800(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$4;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # invokes: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startPhotoView(I)V
    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$1700(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;I)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$4;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # getter for: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$1800(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$4;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    const/4 v2, 0x0

    # invokes: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startDetailViewInUIThread(IIZ)V
    invoke-static {v1, p1, v2, v3}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$1500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;IIZ)V

    goto :goto_0
.end method
