.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;
.super Landroid/database/ContentObserver;
.source "ChannelCommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentContentObserver"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string/jumbo v0, "CommentsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange, selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    # invokes: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->updateCurrentTime()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->access$300(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;->load()V

    return-void
.end method

.method register()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->EVENT_COMMENT_TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method unregister()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
