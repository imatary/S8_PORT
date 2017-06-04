.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$13;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$13;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverClick(IILjava/lang/Object;)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$13;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsCopyMoveMode:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$13;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$13;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->latestSelectedAlbumInfo(I)V
    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$5900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;I)V

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$13;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mAlbumEventHandle:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$5400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    move-result-object v1

    check-cast p3, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v1, p3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->onHoverClick(Lcom/sec/android/gallery3d/data/MediaObject;)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$13;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    check-cast p3, Lcom/sec/android/gallery3d/data/MediaItem;

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startDetailView(IILcom/sec/android/gallery3d/data/MediaItem;)V
    invoke-static {v1, p1, p2, p3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$10000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;IILcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_1
.end method
