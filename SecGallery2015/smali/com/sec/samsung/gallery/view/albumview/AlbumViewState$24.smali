.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$24;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startNoItemViewState(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$24;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$24;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$24;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->hideNewAlbumCancelDialog()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$12600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$24;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$12700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$24;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
