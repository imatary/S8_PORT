.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;
.super Ljava/lang/Object;
.source "ChannelViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel()V
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getGenericMotionFocus()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$7700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateBorder(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$7800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateNotificationBorder()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setGenericMotionFocus(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$7900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->clearChildViewFocus(I)V

    return-void
.end method

.method public onGenericMotionEnter(I)V
    .locals 4

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getGenericMotionFocus()I

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$7100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateBorder(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$7200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getGenericMotionTitleFocus()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateTitleBorder(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$7300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getGenericMotionFocusTitleButton2()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateTitleButton2(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$7400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getGenericMotionFocusTitleButton1()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateTitleButton1(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$7500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateChannelViewHLPlayIconBorder()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setGenericMotionFocus(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setGenericMotionTitleFocus(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setGenericMotionFocusTitleButton2(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setGenericMotionFocusTitleButton1(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setGenericMotionFocusHLVideoIcon(I)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$7600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/Object;I)V

    goto/16 :goto_0
.end method
