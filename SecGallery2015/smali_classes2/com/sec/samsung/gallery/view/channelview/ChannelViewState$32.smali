.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$32;
.super Ljava/lang/Object;
.source "ChannelViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startDetailViewInUIThread(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

.field final synthetic val$albumIndex:I

.field final synthetic val$changeScreen:Z

.field final synthetic val$itemIndex:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$32;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$32;->val$albumIndex:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$32;->val$itemIndex:I

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$32;->val$changeScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$32;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$14000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$32;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$14100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$32;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$32;->val$albumIndex:I

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$32;->val$itemIndex:I

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$32;->val$changeScreen:Z

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startDetailView(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$14200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;IIZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$32;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$14300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    return-void
.end method
