.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$37;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$37;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$37;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setCreateEventVisibleMode(Z)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$15600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$37;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleNewEventAlbum(I)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$15400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;I)V

    return-void
.end method
