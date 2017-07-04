.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$15;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$15;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterSelectionModeFromPenSelect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$15;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$15;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$15;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$15;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$7202(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$15;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$7300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    goto :goto_0
.end method

.method public isCheckAvailable()V
    .locals 0

    return-void
.end method

.method public onPenSelection(IIZ)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$15;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$15;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$15;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$15;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->selectAlbum(I)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public prePenSelectionCheck(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
