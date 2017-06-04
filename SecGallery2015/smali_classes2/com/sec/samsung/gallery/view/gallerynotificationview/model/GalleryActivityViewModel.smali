.class public Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;
.super Ljava/lang/Object;
.source "GalleryActivityViewModel.java"


# static fields
.field public static final ACTIVITY_VIEW_PROJECTION:[Ljava/lang/String;

.field private static final INDEX_STORY_ACTIVITY_ARTICLE_ID:I = 0x3

.field private static final INDEX_STORY_ACTIVITY_COMMENTED_USER_NAME:I = 0xa

.field private static final INDEX_STORY_ACTIVITY_COMMENT_ID:I = 0x4

.field private static final INDEX_STORY_ACTIVITY_COMMENT_IS_ADDED_NEW:I = 0x10

.field private static final INDEX_STORY_ACTIVITY_COMMENT_IS_LIKED:I = 0x11

.field private static final INDEX_STORY_ACTIVITY_FILE_ADDED_NEW:I = 0x12

.field private static final INDEX_STORY_ACTIVITY_FILE_ID:I = 0x2

.field private static final INDEX_STORY_ACTIVITY_JOINED_USER_NAME:I = 0xd

.field private static final INDEX_STORY_ACTIVITY_JOINED_USER_NUMBER:I = 0xe

.field private static final INDEX_STORY_ACTIVITY_LIKED_USER_NAME:I = 0xc

.field private static final INDEX_STORY_ACTIVITY_MEDIAADDED_USER_NAME:I = 0xb

.field private static final INDEX_STORY_ACTIVITY_MEMBER_JOINED:I = 0xf

.field private static final INDEX_STORY_ACTIVITY_MIME_TYPE:I = 0x13

.field private static final INDEX_STORY_ACTIVITY_STATUS:I = 0x6

.field private static final INDEX_STORY_ACTIVITY_STORY_ID:I = 0x1

.field private static final INDEX_STORY_ACTIVITY_TIME:I = 0x7

.field private static final INDEX_STORY_ACTIVITY_TITLE:I = 0x8

.field public static final INDEX_STORY_ACTIVITY_TYPE:I = 0x0

.field private static final INDEX_STORY_ACTIVITY_UGCI:I = 0x5

.field private static final INDEX_STORY_ACTIVITY_URI:I = 0x9

.field private static final TAG:Ljava/lang/String; = "NotificationActModel"


# instance fields
.field private final mActivityType:I

.field private mArticleId:I

.field private mCommentId:Ljava/lang/String;

.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCreationTime:J

.field private mDescription:Ljava/lang/String;

.field private mFileId:I

.field private mMimeType:Ljava/lang/String;

.field private mPushNotificationId:I

.field private mSenderName:Ljava/lang/String;

.field private mSenderNumber:Ljava/lang/String;

.field private mShowNewIcon:I

.field private mStoryId:I

.field private mStoryName:Ljava/lang/String;

.field private mUgci:Ljava/lang/String;

.field private mUriString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "story_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "fileid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "article_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "comment_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "ugci"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "uri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "commented_user_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "mediadded_user_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "liked_user_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "joined_user_name"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "joined_user_number"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "is_new_member"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "is_new_comment"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "is_liked"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "is_new_item"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->ACTIVITY_VIEW_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mContextRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mActivityType:I

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mActivityType:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "NotificationActModel"

    const-string/jumbo v1, "wrong activity type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getNewJoinInfo(Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getNewPostInfo(Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getNewCommentInfo(Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getNewLikeInfo(Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getNewCommentInfo(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mCommentId:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mUgci:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mStoryId:I

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mFileId:I

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mSenderName:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mCreationTime:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mStoryName:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mUriString:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mShowNewIcon:I

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mPushNotificationId:I

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method private getNewJoinInfo(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mUgci:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mStoryId:I

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mSenderName:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mSenderNumber:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mCreationTime:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mStoryName:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mShowNewIcon:I

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mPushNotificationId:I

    return-void
.end method

.method private getNewLikeInfo(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mUgci:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mStoryId:I

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mFileId:I

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mArticleId:I

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mSenderName:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mCreationTime:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mStoryName:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mUriString:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mShowNewIcon:I

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mPushNotificationId:I

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method private getNewPostInfo(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mUgci:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mStoryId:I

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mFileId:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mSenderName:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mCreationTime:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mStoryName:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mShowNewIcon:I

    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mPushNotificationId:I

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mUriString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivityType()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mActivityType:I

    return v0
.end method

.method public getArticleId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mArticleId:I

    return v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mCommentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mCreationTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const-string/jumbo v1, "NotificationActModel"

    const-string/jumbo v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mDescription:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mSenderName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mSenderName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "NotificationActModel"

    const-string/jumbo v2, "name = null or empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0496

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mSenderName:Ljava/lang/String;

    :cond_2
    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mActivityType:I

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "NotificationActModel"

    const-string/jumbo v2, "wrong activity type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mDescription:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0a0237

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mSenderName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f0a033b

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mSenderName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v1, 0x7f0a00aa

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mSenderName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    const v1, 0x7f0a0242

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mSenderName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getFileId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mFileId:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPushNotificationId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mPushNotificationId:I

    return v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mSenderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mSenderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStoryId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mStoryId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const-string/jumbo v1, "NotificationActModel"

    const-string/jumbo v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mStoryName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUgci()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mUgci:Ljava/lang/String;

    return-object v0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mUriString:Ljava/lang/String;

    return-object v0
.end method

.method public showCoverBitmap()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mActivityType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showNewIcon()Z
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->mShowNewIcon:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
