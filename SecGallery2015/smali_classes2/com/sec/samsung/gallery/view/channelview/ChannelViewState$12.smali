.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$12;
.super Ljava/lang/Object;
.source "ChannelViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(II)Z
    .locals 4

    const/16 v3, 0x42

    const/16 v2, 0x17

    const/4 v0, 0x1

    const/16 v1, 0x43

    if-eq p1, v1, :cond_0

    const/16 v1, 0x70

    if-ne p1, v1, :cond_1

    :cond_0
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$10300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    :goto_0
    return v0

    :cond_1
    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    const/16 v1, 0x80

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$6800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$5600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x14

    if-eq p1, v1, :cond_4

    const/16 v1, 0x16

    if-ne p1, v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$10400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$10400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$10400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_0

    :cond_5
    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$10400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$10400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$12;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$10400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->callOnClick()Z

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method
