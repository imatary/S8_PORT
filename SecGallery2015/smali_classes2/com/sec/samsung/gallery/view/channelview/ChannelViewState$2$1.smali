.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2$1;
.super Ljava/lang/Object;
.source "ChannelViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2$1;->this$1:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2$1;->this$1:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->exitSelectionMode()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    return-void
.end method
