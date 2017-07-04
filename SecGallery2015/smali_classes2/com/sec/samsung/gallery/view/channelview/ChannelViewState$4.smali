.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;
.super Ljava/lang/Object;
.source "ChannelViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isInitialActivityLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$5800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$5900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$6000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$5900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$5800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$6000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$6100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$6202(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$5802(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$5902(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$6200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    const/4 v1, 0x1

    invoke-static {v0, v2, v2, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$6300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;IIZ)V

    :cond_3
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setInitialActivityLaunch(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$6100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 0

    return-void
.end method
