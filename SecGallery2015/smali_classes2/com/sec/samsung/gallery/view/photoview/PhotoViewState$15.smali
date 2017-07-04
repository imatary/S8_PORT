.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$15;
.super Ljava/lang/Object;
.source "PhotoViewState.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$15;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addItemToSelectionManager(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$15;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    return-object v0
.end method

.method public isMaxCountSelectedInPickerMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs onEventHandleItemClick([Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-object v0, p1, v2

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$15;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->onItemSelectForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)V

    return v3
.end method

.method public startDetailView(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$15;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iput p2, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItemIndex:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$15;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$5600(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "VIEW_MODE_SWITCH"

    const/16 v2, 0x201

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startPhotoSplitView(I)V
    .locals 0

    return-void
.end method
