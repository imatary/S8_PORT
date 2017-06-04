.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$29;
.super Ljava/lang/Object;
.source "ChannelViewState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->createSharedStoryDialog()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$29;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$29;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$29;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mAlbumIndex:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$11700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)I

    move-result v1

    const/4 v2, -0x1

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startChannelPhotoViewFromClick(II)Ljava/lang/Boolean;
    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;II)Ljava/lang/Boolean;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
