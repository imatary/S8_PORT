.class Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$6;
.super Ljava/lang/Object;
.source "StartGalleryViewCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startDefaultMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->getLatestActivityState(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-eq v0, v2, :cond_0

    const-class v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIgnoreInvalidateOptionsMenu(Z)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-static {}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$000()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$200()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x3

    const-class v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-ne v0, v2, :cond_4

    const/4 v1, 0x0

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->moveTab(I)V

    :cond_3
    return-void

    :cond_4
    const-class v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-ne v0, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const-class v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-ne v0, v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0
.end method
