.class Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$8;
.super Ljava/lang/Object;
.source "GallerySearchViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(II)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v3, 0x43

    if-eq p1, v3, :cond_0

    const/16 v3, 0x70

    if-ne p1, v3, :cond_1

    :cond_0
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->showDeleteDialog()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$9000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    :goto_0
    return v1

    :cond_1
    const/16 v3, 0x42

    if-eq p1, v3, :cond_2

    const/16 v3, 0x17

    if-ne p1, v3, :cond_4

    :cond_2
    const/16 v3, 0x80

    if-ne p2, v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$9100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v3, v4, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$9200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->enterSelectionMode()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$9300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->updateCountOnActionBar()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$9400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method
