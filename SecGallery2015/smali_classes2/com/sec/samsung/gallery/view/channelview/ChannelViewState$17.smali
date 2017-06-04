.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$17;
.super Ljava/lang/Object;
.source "ChannelViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$17;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$17;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startNotificationViewMode()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$11000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    return-void
.end method
