.class public Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;
.super Ljava/lang/Object;
.source "ChannelCommentsDataLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;
    }
.end annotation


# static fields
.field private static final COMMENT_VIEW_PROJECTION:[Ljava/lang/String;

.field private static final INDEX_STORY_COMMENT_COMMIT_STATUS:I = 0x4

.field private static final INDEX_STORY_COMMENT_ID:I = 0x6

.field private static final INDEX_STORY_COMMENT_TEXT:I = 0x5

.field private static final INDEX_STORY_COMMENT_TIME:I = 0x2

.field private static final INDEX_STORY_PHONE_NUMBER:I = 0x0

.field private static final INDEX_STORY_SOCIAL_TYPE:I = 0x3

.field private static final INDEX_STORY_USER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CommentsDataLoader"


# instance fields
.field private final mArticleId:Ljava/lang/String;

.field private mCommentsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/channelcomments/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;

.field private final mFileId:I

.field private final mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private final mListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;

.field private final mStoryId:I

.field private mUniquePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

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

    const/4 v1, 0x5

    const-string/jumbo v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "comment_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->COMMENT_VIEW_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mStoryId:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mFileId:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mArticleId:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mUniquePath:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mCommentsList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->COMMENT_VIEW_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mStoryId:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mFileId:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;)Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mListener:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;

    return-object v0
.end method

.method private uploadComment(Ljava/lang/String;J)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mUniquePath:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "CommentsDataLoader"

    const-string/jumbo v2, "wrong unique path from previous view"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mFileId:I

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelItemFilePathFromFileId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mUniquePath:Ljava/lang/String;

    :cond_0
    const/16 v1, 0x9

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->ADD_COMMENT:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mStoryId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mFileId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mUniquePath:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p1, v0, v1

    const/16 v1, 0x8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "UPDATE_SOCIAL_INFO"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;)Z
    .locals 17

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v10, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mStoryId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mFileId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mArticleId:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->COMMENT_BY_ME:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v15}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createComment(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;I)I

    move-result v16

    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mCommentsList:Ljava/util/ArrayList;

    new-instance v5, Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mStoryId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mFileId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    sget-object v3, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->COMMENT_BY_ME:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v12

    const/4 v13, 0x2

    const/4 v15, 0x0

    move-object/from16 v14, p1

    invoke-direct/range {v5 .. v15}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;-><init>(IILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->uploadComment(Ljava/lang/String;J)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const-string/jumbo v2, "CommentsDataLoader"

    const-string/jumbo v3, "fail to create comment in cmh"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->load()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mCommentsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mStoryId:I

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mFileId:I

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->getCommentCount(Landroid/content/Context;II)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "CommentsDataLoader"

    const-string/jumbo v3, "cursor for comment count == null"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const-string/jumbo v2, "CommentsDataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mCommentsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getData(I)Lcom/sec/samsung/gallery/view/channelcomments/Comment;
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mCommentsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "CommentsDataLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wrong position, position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mCommentsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mCommentsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    goto :goto_0
.end method

.method public load()V
    .locals 2

    const-string/jumbo v0, "CommentsDataLoader"

    const-string/jumbo v1, "load start"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CommentsDataLoader"

    const-string/jumbo v1, "cancel data loading"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader$DataLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string/jumbo v0, "CommentsDataLoader"

    const-string/jumbo v1, "load end"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeData(I)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mCommentsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    :cond_0
    const-string/jumbo v3, "CommentsDataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Wrong position, position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mCommentsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mCommentsList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mStoryId:I

    iget v5, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mFileId:I

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->getTimeStamp()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createWhereForCommentWithTimeStamp(IIJ)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->updateCommentCommitStatus(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v3, "CommentsDataLoader"

    const-string/jumbo v4, "fail to update comment wait commit status"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x6

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    sget-object v3, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->DELETE_COMMENT:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    aput-object v3, v2, v8

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mStoryId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x3

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mFileId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v4, "UPDATE_SOCIAL_INFO"

    invoke-virtual {v3, v4, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public retryUploading(Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mStoryId:I

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mFileId:I

    invoke-static {v1, v2, p2, p3}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createWhereForCommentWithTimeStamp(IIJ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->updateCommentCommitStatus(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CommentsDataLoader"

    const-string/jumbo v1, "fail to update comment wait commit status"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->uploadComment(Ljava/lang/String;J)V

    return-void
.end method

.method public declared-synchronized updateContents(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/channelcomments/Comment;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mCommentsList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateData(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)I
    .locals 11

    const/4 v10, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mCommentsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mStoryId:I

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mFileId:I

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->getCommentText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->getTimeStamp()J

    move-result-wide v6

    invoke-static/range {v1 .. v7}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->updateLocalComment(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->getCommentText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->setCommentText(Ljava/lang/String;)V

    const/4 v1, 0x7

    new-array v8, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mContext:Landroid/content/Context;

    aput-object v2, v8, v1

    sget-object v1, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->EDIT_COMMENT:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    aput-object v1, v8, v10

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mStoryId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mFileId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x5

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->getCommentText()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "UPDATE_SOCIAL_INFO"

    invoke-virtual {v1, v2, v8}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v9

    :cond_0
    const-string/jumbo v1, "CommentsDataLoader"

    const-string/jumbo v2, "fail to update comment in cmh"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->load()V

    const/4 v9, -0x1

    goto :goto_0
.end method
