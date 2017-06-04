.class public Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuDelete;
.super Ljava/lang/Object;
.source "DCNlgMenuDelete.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mCount:I

.field private final mMediaType:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuDelete;->mCount:I

    iput p3, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuDelete;->mMediaType:I

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuDelete;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-void
.end method

.method private getNlgScreenParam()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuDelete;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v2, :cond_0

    const-string/jumbo v0, "AlbumCount"

    :goto_0
    return-object v0

    :cond_0
    instance-of v2, v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-eqz v2, :cond_1

    const-string/jumbo v0, "StoryCount"

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v2, :cond_2

    const-string/jumbo v0, "SelectOrderAndCount"

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuDelete;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_RECYCLEBIN:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_3

    const-string/jumbo v0, "ItemCount"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "ItemType"

    goto :goto_0
.end method

.method private handleRequestInfoForItemType(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V
    .locals 4

    iget v2, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuDelete;->mMediaType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "photosvideos"

    :goto_0
    iget v2, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuDelete;->mCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const-string/jumbo v2, "Items_count"

    iget v3, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuDelete;->mCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v1, "ItemsType"

    :goto_1
    const-string/jumbo v2, "Equal"

    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    return-void

    :pswitch_1
    const-string/jumbo v0, "photos"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "videos"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "photos"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "photo"

    :goto_2
    const-string/jumbo v1, "ItemType"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "video"

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 5

    const/4 v3, 0x1

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuDelete;->getNlgScreenParam()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    return-object v0

    :sswitch_0
    const-string/jumbo v4, "SelectOrderAndCount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "StoryCount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "AlbumCount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "ItemCount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "ItemType"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :pswitch_0
    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1

    :pswitch_1
    const-string/jumbo v2, "StoryCount"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "ItemCount"

    :cond_1
    iget v2, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuDelete;->mCount:I

    if-le v2, v3, :cond_2

    const-string/jumbo v2, "IsOne"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v2, "Items_count"

    iget v3, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuDelete;->mCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "IsOne"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuDelete;->handleRequestInfoForItemType(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x43ae10d6 -> :sswitch_0
        -0x31a66ac6 -> :sswitch_1
        -0x9ba0664 -> :sswitch_3
        0x42d56c00 -> :sswitch_2
        0x4a0a210d -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
