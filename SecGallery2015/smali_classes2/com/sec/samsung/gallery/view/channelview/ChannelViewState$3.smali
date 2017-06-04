.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$3;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;
.source "ChannelViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$3;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(II)V
    .locals 6

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v4

    invoke-static {p2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$3;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$3;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$3;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetList()Ljava/util/List;

    move-result-object v2

    move v1, v4

    :goto_0
    if-gt v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v5, v3, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v5, :cond_0

    check-cast v3, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updatePendingProperty()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$3;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$3;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$3;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$3;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->update(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$3;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->updateCountOnActionBar()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$5500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$3;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkMediaAvailability()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$5600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    return-void
.end method
