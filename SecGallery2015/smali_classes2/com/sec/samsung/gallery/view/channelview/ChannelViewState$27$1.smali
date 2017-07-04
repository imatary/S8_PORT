.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27$1;
.super Ljava/lang/Thread;
.source "ChannelViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;

.field final synthetic val$channelID:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27$1;->this$1:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;

    iput p3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27$1;->val$channelID:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27$1;->this$1:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$12500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$12600()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27$1;->this$1:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$12800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27$1;->this$1:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$12700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27$1;->val$channelID:I

    const-string/jumbo v3, "notify_status"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27$1;->this$1:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$12800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27$1;->this$1:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$12900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27$1;->val$channelID:I

    const-string/jumbo v3, "is_visible"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    goto :goto_0
.end method
