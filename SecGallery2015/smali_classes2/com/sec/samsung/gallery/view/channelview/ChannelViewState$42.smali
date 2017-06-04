.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$42;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$42;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private drawHighlightVideoPlayIcon(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$42;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$18100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$42;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$18200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$42;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mAlbumIndex:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$11700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->updateHVPlayIcon(II)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v3, "ChannelViewState"

    const-string/jumbo v4, "HighlightVideo Noti Received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "com.samsung.gallery.notify"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$42;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$18000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "eventID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$42;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$42;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mAlbumIndex:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$11700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setHighLightVideoExistValue(Z)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$42;->drawHighlightVideoPlayIcon(I)V

    goto :goto_0
.end method
