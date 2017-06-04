.class public Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;
.super Ljava/lang/Object;
.source "GalleryNotificationViewModel.java"


# static fields
.field private static final DEFAULT_SEEDS_ITEM_COUNT:I = 0x1

.field private static final PERSON_SEEDS_ITEM_COUNT:I = 0x4


# instance fields
.field private final mAlbum:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/gallery3d/data/ChannelAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCoverBitmap:Landroid/graphics/Bitmap;

.field private mDescription:Ljava/lang/String;

.field private final mEventId:I

.field private final mEventType:I

.field private mIsCompleteCoverCreation:Z

.field private mNeedToContactUpdate:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/ChannelAlbum;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mCoverBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getBucketId()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mEventId:I

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelType()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mEventType:I

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mTitle:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mContext:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mNeedToContactUpdate:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mIsCompleteCoverCreation:Z

    return-void
.end method

.method private getSeedItemsCountForCover()I
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mEventType:I

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->PERSON:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mEventType:I

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->PERSON_GROUP:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mEventType:I

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->PERSON_ME:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkCompleteCoverCreation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mIsCompleteCoverCreation:Z

    return v0
.end method

.method public getChannelAlbum()Lcom/sec/android/gallery3d/data/ChannelAlbum;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    goto :goto_0
.end method

.method public getChannelCreationTime()J
    .locals 5

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getCreationTime()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getChannelPath()Lcom/sec/android/gallery3d/data/Path;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method public getCoverItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 11

    const/4 v4, 0x0

    const v10, 0x7f0a034a

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mDescription:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mEventType:I

    sget-object v6, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v6

    if-eq v5, v6, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mDescription:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_0

    iget v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mEventType:I

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_2

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMasterName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v10, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mDescription:Ljava/lang/String;

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mDescription:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->STORY:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-static {}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->values()[Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mEventType:I

    array-length v5, v3

    if-ge v4, v5, :cond_3

    iget v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mEventType:I

    aget-object v2, v3, v4

    :cond_3
    sget-object v4, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel$1;->$SwitchMap$com$sec$samsung$gallery$access$cmh$CMHInterface$STORY_TYPES:[I

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const v4, 0x7f0a02c9

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    const v4, 0x7f0a02c8

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v4, 0x7f0a02c7

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v4, 0x7f0a02cd

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMasterName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v10, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    const v4, 0x7f0a02ce

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    const-string/jumbo v4, "View a story featuring your pictures of this group"

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    const v4, 0x7f0a02cc

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_7
    const v4, 0x7f0a02cb

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_8
    const v4, 0x7f0a02ca

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mDescription:Ljava/lang/String;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getEventId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mEventId:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mEventType:I

    return v0
.end method

.method public getFaceGroupId()I
    .locals 3

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getFaceGroupId()I

    move-result v1

    goto :goto_0
.end method

.method public getHiddenCoverPath()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getHiddenCoverPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-nez v0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getSeedItemsCountForCover()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getTotalMediaItemCount()I

    move-result v2

    if-ge v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getTotalMediaItemCount()I

    move-result v1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public getMasterPhoto()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMasterPhoto()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getSavedCoverBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mCoverBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mEventType:I

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0a0433

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mTitle:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTotalItemCount()I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getTotalMediaItemCount()I

    move-result v1

    goto :goto_0
.end method

.method public isNewAlbum()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isNewChannel()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public needToContactUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mNeedToContactUpdate:Z

    return v0
.end method

.method public setCompleteCoverCreation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mIsCompleteCoverCreation:Z

    return-void
.end method

.method public setCoverBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mCoverBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public updateContactInfo()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mAlbum:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updateContactInformation()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->mNeedToContactUpdate:Z

    goto :goto_0
.end method
