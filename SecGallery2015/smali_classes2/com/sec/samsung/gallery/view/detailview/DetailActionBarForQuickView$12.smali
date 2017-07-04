.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$12;
.super Ljava/lang/Object;
.source "DetailActionBarForQuickView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionWeChatSightAlbum()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v0, "/local/shotmodewechatset"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "KEY_IS_SIGHT_MODE"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "KEY_IS_SIGHT_MODE_FROM_DETAIL"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->access$1200(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setHasQuickViewHistory(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setFromCamera(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->access$1400(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUpButtonVisible(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->access$1500(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
