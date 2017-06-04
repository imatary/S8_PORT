.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter$1;
.super Ljava/lang/Object;
.source "ChannelLikeAdapter.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoadComplete()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeAdapter;->mUpdateHandler:Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$StaticHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelAbsAdapter$StaticHandler;->sendEmptyMessage(I)Z

    return-void
.end method
