.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$12;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$12;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(II)Z
    .locals 8

    const/16 v7, 0x80

    const/16 v6, 0x42

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$12;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$12;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v4, v5, :cond_2

    if-ne p1, v6, :cond_2

    if-eq p2, v7, :cond_0

    :cond_2
    const/16 v4, 0x43

    if-eq p1, v4, :cond_3

    const/16 v4, 0x70

    if-ne p1, v4, :cond_6

    :cond_3
    if-nez p2, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$12;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v4, v5, :cond_4

    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$12;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$9900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    move v3, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$12;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    goto :goto_0

    :cond_6
    if-eq p1, v6, :cond_7

    const/16 v4, 0x17

    if-ne p1, v4, :cond_0

    :cond_7
    if-ne p2, v7, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$12;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v4, v5, :cond_8

    move v1, v2

    :goto_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$12;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$12;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v3, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$7202(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Z)Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$12;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$7300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$12;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    move v3, v2

    goto :goto_0

    :cond_8
    move v1, v3

    goto :goto_2
.end method
