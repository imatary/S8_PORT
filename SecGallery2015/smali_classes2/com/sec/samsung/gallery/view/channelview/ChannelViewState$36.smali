.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$36;
.super Ljava/lang/Object;
.source "ChannelViewState.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$36;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$36;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$15400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$36;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$15500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$36;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$15600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$36;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$15700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$36;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$15800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$36;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$15802(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$36;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$15900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$36;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$15700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)V

    goto :goto_0
.end method
