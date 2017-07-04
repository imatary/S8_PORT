.class Lcom/sec/samsung/gallery/view/eventview/EventViewState$5;
.super Ljava/lang/Object;
.source "EventViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/eventview/EventViewState;->onViewInitialize()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$5;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(II)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$5;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$5;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;I)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$5;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne p2, v3, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$5;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;->getHighlightVideoStatus()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x2

    if-ne p2, v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->hasLocation()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$5;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$1900(Lcom/sec/samsung/gallery/view/eventview/EventViewState;I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$5;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$2000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$5;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$2100(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "latest_update_event"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$5;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$2200(Lcom/sec/samsung/gallery/view/eventview/EventViewState;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$5;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$2300(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->removeSuggestionMark(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->setSuggestionEvent(I)V

    goto :goto_0
.end method
