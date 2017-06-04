.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;
.super Landroid/os/AsyncTask;
.source "ChannelCommentsDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;)V

    return-void
.end method

.method private createCommentItem(Landroid/database/Cursor;)Lcom/sec/samsung/gallery/view/channelcomments/Comment;
    .locals 12

    new-instance v1, Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mStoryId:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->access$300(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;)I

    move-result v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mFileId:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->access$400(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;)I

    move-result v3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;-><init>(IILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private reloadComments()Ljava/lang/Boolean;
    .locals 6

    const-string/jumbo v2, "CommentsDataLoader"

    const-string/jumbo v3, "start data loading thread"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->access$100(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;)Landroid/content/Context;

    move-result-object v2

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->COMMENT_VIEW_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->access$200()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mStoryId:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->access$300(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mFileId:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->access$400(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->getCommentList(Landroid/content/Context;[Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "CommentsDataLoader"

    const-string/jumbo v3, "no comments"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;->createCommentItem(Landroid/database/Cursor;)Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_1
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->updateContents(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->access$500(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;)Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;->onDataLoadComplete()V

    const-string/jumbo v2, "CommentsDataLoader"

    const-string/jumbo v3, "finish data loading thread"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;->reloadComments()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
