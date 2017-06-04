.class public Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;
.super Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;
.source "GalleryActivityNotificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$StaticHandler;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityNotification"


# instance fields
.field private mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;

.field private mMainHandler:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$StaticHandler;

.field private final mModelListener:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityModelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$1;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mModelListener:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityModelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->memberJoinCardOnClick(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->postCardOnClick(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->likeCardOnClick(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->commentCardOnClick(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;)Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$StaticHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mMainHandler:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$StaticHandler;

    return-object v0
.end method

.method private commentCardOnClick(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->showNewIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getCommentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryActivityInterface;->identifyStoryComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notify_status"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryActivityInterface;->updateCommentTableIntColumn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getPushNotificationId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->cancelQuickPanelNotification(I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->startDetailView(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;Z)V

    return-void
.end method

.method private likeCardOnClick(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->showNewIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getStoryId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getFileId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getCreationTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryActivityInterface;->identifyStoryLike(IIJ)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notify_status"

    invoke-static {v0, v1, v2, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryActivityInterface;->updateCommentTableIntColumn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getPushNotificationId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->cancelQuickPanelNotification(I)V

    invoke-direct {p0, p1, v6}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->startDetailView(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;Z)V

    return-void
.end method

.method private memberJoinCardOnClick(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->showNewIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getUgci()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getSenderNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryActivityInterface;->identifyJoin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notify_status"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryActivityInterface;->updateContactIntColumn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getPushNotificationId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->cancelQuickPanelNotification(I)V

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getStoryId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->startChannelPhotoViewState(I)V

    return-void
.end method

.method private postCardOnClick(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->showNewIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getFileId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryActivityInterface;->identifyNewPost(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notify_status"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryActivityInterface;->updateCommentTableIntColumn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getPushNotificationId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->cancelQuickPanelNotification(I)V

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getStoryId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->startChannelPhotoViewState(I)V

    return-void
.end method

.method private startChannelPhotoViewState(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$2;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startDetailView(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;Z)V
    .locals 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/channel/channelalbum/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getStoryId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "image"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->SHARE_EVENT_IMAGE_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getFileId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v4, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updateChannelItemForNotification()V

    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-class v5, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "show_like_view"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "story_id"

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getStoryId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "*/*"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "KEY_IS_FROM_GALLERY_NOTIFCATION_VIEW"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    sget-object v4, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->SHARE_EVENT_VIDEO_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method


# virtual methods
.method cancelQuickPanelNotification(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public create()V
    .locals 3

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->create()V

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mModelListener:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityModelListener;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;-><init>(Landroid/app/Activity;Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityModelListener;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$StaticHandler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$StaticHandler;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mMainHandler:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$StaticHandler;

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->destroy()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->destroy()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mMainHandler:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$StaticHandler;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$StaticHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public getBadgeCount()I
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mBadgeCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->getActivityEventBadgeCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mBadgeCount:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mBadgeCount:I

    goto :goto_0
.end method

.method getTab()Landroid/support/design/widget/TabLayout$Tab;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f12011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyStatus()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->getActivityEventBadgeCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "status"

    const/4 v2, 0x1

    invoke-static {v0, v3, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryActivityInterface;->updateActivityIntColumn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->SELF_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->setActivityEventBadgeCount(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->notifyStatus()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->pause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->onPause()V

    return-void
.end method

.method public resume()V
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->resume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->onResume()V

    return-void
.end method
