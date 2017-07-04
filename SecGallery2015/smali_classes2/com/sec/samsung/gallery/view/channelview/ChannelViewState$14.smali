.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$14;
.super Ljava/lang/Object;
.source "ChannelViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->onViewInitialize()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$14;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostSwitchState(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;IIII)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$14;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$10600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$14;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-virtual {v0, p4, p5}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->destroyCurrentViewInUIThread(II)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreSwitchState(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;IIII)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$14;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$10600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$14;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$14;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$10700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v2

    invoke-interface {v2, p4, p5}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->getNextStateInfo(II)Lcom/sec/samsung/gallery/drawer/StateInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$14;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-virtual {v1, p5, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->slideToNextViewState(ILcom/sec/samsung/gallery/drawer/StateInfo;)Z

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
