.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25$1;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCompleted(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$12900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "REFRESH_SELECTION"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$13000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$13100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25$1;->this$1:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendBixbyResponseForSelectAll(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onProgress(II)V
    .locals 0

    return-void
.end method
