.class Lcom/sec/samsung/gallery/view/eventview/EventViewState$16;
.super Ljava/lang/Object;
.source "EventViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/eventview/EventViewState;->startPhotoView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$16;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$16;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$16;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mAlbumIndex:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$4400(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$16;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$2600(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    const-string/jumbo v2, "KEY_MEDIA_SET_PATH"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$16;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mCurrentTopSetPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$4500(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "KEY_MEDIA_SET_POSITION"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$16;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mAlbumIndex:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$4400(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "KEY_NO_SPLIT_MODE"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "KEY_VIEW_REDRAW"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$16;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$2600(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$16;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$4600(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    const-string/jumbo v3, "GEVA"

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$16;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getCount()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$16;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$4700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method
