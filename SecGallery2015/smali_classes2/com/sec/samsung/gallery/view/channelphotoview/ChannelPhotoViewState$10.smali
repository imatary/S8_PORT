.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$10;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->onViewInitialize()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$10;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(II)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$10;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$10;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$10;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectItem(II)V
    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$9200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;II)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$10;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectAlbum(I)V
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$9300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$10;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshActionBarTheme(I)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$10;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v1

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startDetailViewInUIThread(IIZ)V
    invoke-static {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$7100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IIZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$10;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const/4 v1, 0x0

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startDetailViewInUIThread(IIZ)V
    invoke-static {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$7100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IIZ)V

    goto :goto_0
.end method
