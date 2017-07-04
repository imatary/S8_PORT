.class Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;
.super Ljava/lang/Object;
.source "MapMarkerThumbnailListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1700(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v3, v3, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1102(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-static {v2, v4}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1702(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Z)Z

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1802(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Z)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "KEY_MEDIA_SET_PATH"

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v3, v3, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "KEY_MEDIA_ITEM_PATH"

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget v4, v4, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->val$position:I

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "KEY_ITEM_POSITION"

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget v3, v3, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->val$position:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "KEY_IS_FROM_EVENT_MAP_VIEW"

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v3, v3, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;

    if-eqz v2, :cond_1

    const-string/jumbo v3, "KEY_LAT_LNG_BOUNDS"

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->getLatitudeLongitudeBounds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "KEY_BWN_DATE"

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->getBetweenDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "KEY_CHANNEL_ID"

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->getChannelId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-static {v2, v6}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1802(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Z)Z

    const-string/jumbo v2, "MapMarkerThmListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
