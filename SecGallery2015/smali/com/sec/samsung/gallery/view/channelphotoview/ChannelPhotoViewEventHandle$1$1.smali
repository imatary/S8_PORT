.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1$1;
.super Ljava/lang/Object;
.source "ChannelPhotoViewEventHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;->onCoverUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->access$000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionBarStyle()I

    move-result v0

    if-ne v1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->access$000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setActionbarStyle(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->access$000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshActionBarTheme(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->access$000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshStatusBarStyle(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->access$100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;->setAnimationType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->access$100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle$FadeAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
