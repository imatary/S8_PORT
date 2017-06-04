.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$35;
.super Ljava/lang/Object;
.source "ChannelViewState.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->initializeCreateEventButtonView()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$35;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x42

    if-eq p2, v2, :cond_0

    const/16 v2, 0x17

    if-ne p2, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$35;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$10300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->callOnClick()Z

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v2, 0x13

    if-eq p2, v2, :cond_3

    const/16 v2, 0x15

    if-ne p2, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$35;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$10300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearFocus()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$35;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$10300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$35;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$15100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$35;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$15200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->dispatchKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    const/16 v2, 0x16

    if-eq p2, v2, :cond_1

    const/16 v2, 0x14

    if-eq p2, v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method
