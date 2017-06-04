.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$34;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$34;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addItemToSelectionManager(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$34;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->addToSelectionManager(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V
    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$18200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method public getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$34;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    move-result-object v0

    return-object v0
.end method

.method public isMaxCountSelectedInPickerMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs onEventHandleItemClick([Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startDetailView(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$34;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startDetailViewInUIThread(II)V
    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$10700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;II)V

    return-void
.end method

.method public startPhotoSplitView(I)V
    .locals 0

    return-void
.end method
