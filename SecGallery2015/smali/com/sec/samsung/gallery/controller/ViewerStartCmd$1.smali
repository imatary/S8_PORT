.class Lcom/sec/samsung/gallery/controller/ViewerStartCmd$1;
.super Ljava/lang/Object;
.source "ViewerStartCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->startAlbumViewState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ViewerStartCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ViewerStartCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ViewerStartCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ViewerStartCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->access$000(Lcom/sec/samsung/gallery/controller/ViewerStartCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIgnoreInvalidateOptionsMenu(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ViewerStartCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->access$000(Lcom/sec/samsung/gallery/controller/ViewerStartCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ViewerStartCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->access$000(Lcom/sec/samsung/gallery/controller/ViewerStartCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
