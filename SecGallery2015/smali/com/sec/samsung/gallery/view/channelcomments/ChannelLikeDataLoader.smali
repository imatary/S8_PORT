.class public Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;
.super Ljava/lang/Object;
.source "ChannelLikeDataLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader$DataLoader;
    }
.end annotation


# static fields
.field private static final INDEX_STORY_COMMENT_COMMIT_STATUS:I = 0x4

.field private static final INDEX_STORY_COMMENT_TIME:I = 0x2

.field private static final INDEX_STORY_PHONE_NUMBER:I = 0x0

.field private static final INDEX_STORY_SOCIAL_TYPE:I = 0x3

.field private static final INDEX_STORY_USER:I = 0x1

.field private static final LIKE_VIEW_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader$DataLoader;

.field private final mFileId:I

.field private mLikeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/channelcomments/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;

.field private final mStoryId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "social_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "commit_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->LIKE_VIEW_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IILcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mStoryId:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mFileId:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mLikeList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->LIKE_VIEW_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mStoryId:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mFileId:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;)Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mLikeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getData(I)Lcom/sec/samsung/gallery/view/channelcomments/Comment;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mLikeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mLikeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    goto :goto_0
.end method

.method public load()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader$DataLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader$DataLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader$DataLoader;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader$DataLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader$DataLoader;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader$DataLoader;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader$DataLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader$DataLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public updateContents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/channelcomments/Comment;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelLikeDataLoader;->mLikeList:Ljava/util/ArrayList;

    return-void
.end method
