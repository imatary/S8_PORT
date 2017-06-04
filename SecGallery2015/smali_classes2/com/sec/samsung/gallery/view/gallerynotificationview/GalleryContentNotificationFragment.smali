.class public Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;
.super Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;
.source "GalleryContentNotificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;,
        Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DataLoaderConfig;
    }
.end annotation


# static fields
.field public static final ACCEPT_BUTTON_INDEX:I = 0x2

.field public static final DELETE_BUTTON_INDEX:I = 0x0

.field private static final FEATURE_SUPPORT_COLLAGE_AGIF_PREVIEW:Z

.field public static final MSG_DELETE_EVENT:I = 0x2

.field private static final MSG_NEED_TO_FINISH_STATE:I = 0x0

.field public static final MSG_REFRESH:I = 0x1

.field public static final MSG_SHARE_EVENT_UPDATE:I = 0x7

.field public static final MSG_START_AGIF:I = 0x5

.field public static final MSG_START_COLLAGE:I = 0x4

.field public static final MSG_START_PHOTOVIEW:I = 0x3

.field public static final MSG_START_VIDEO_COLLAGE:I = 0x6

.field private static final PREVIEW_URI_POSTFIX:Ljava/lang/String; = "/uri/file%3A%2F%2F"

.field public static final REJECT_BUTTON_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContentNotification"


# instance fields
.field private mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

.field private mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

.field private mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;

.field private mEventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

.field private final mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

.field private mRequestPhotoEditorAlbumIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportCollageAgifPreview:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->FEATURE_SUPPORT_COLLAGE_AGIF_PREVIEW:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mRequestPhotoEditorAlbumIndex:I

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$2;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    return-void
.end method

.method private acceptSharedEvent(ILjava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string/jumbo v0, "ContentNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "acceptSharedEvent : storyID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "max_channel_number"

    const/16 v3, 0xc8

    invoke-static {v0, v1, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getSharedChannelCount(Landroid/content/Context;)I

    move-result v0

    if-lt v0, v8, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0017

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ContentNotification"

    const-string/jumbo v1, "Accept > isEventSharingAuth : false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0a017f

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mEventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, p2, v3}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->startSharingEvent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a0340

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    move v6, v4

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->handleMsgRefreshSet()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->getCoverBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->startSharedEventView(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->handleMsgDeleteEvent(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;Ljava/lang/Integer;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->handleMsgStartPhotoView(Ljava/lang/Integer;I)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->FEATURE_SUPPORT_COLLAGE_AGIF_PREVIEW:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->handleMsgDetailPreview(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->startPhotoRetouching(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->handleShareEventUpdate(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private closeProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    :cond_0
    return-void
.end method

.method private getAlbumIndexFromEventId(I)I
    .locals 5

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v4

    if-eq v4, p1, :cond_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method private getCoverBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, p1

    goto :goto_0
.end method

.method private getHandlingIndexForDC(Ljava/lang/String;I)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->getCardList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    return v2

    :sswitch_0
    const-string/jumbo v3, "Accept"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "Decline"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "DeleteNotification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2, v0, v5}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->getHandlingIndexForShareEvent(ILjava/util/ArrayList;Z)I

    move-result v2

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p2, v0, v4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->getHandlingIndexForShareEvent(ILjava/util/ArrayList;Z)I

    move-result v2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x40d9052a -> :sswitch_1
        0x4655f656 -> :sswitch_2
        0x748ca128 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getHandlingIndexForShareEvent(ILjava/util/ArrayList;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;",
            ">;Z)I"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isLatest(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getEventType()I

    move-result v2

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v5

    if-ne v2, v5, :cond_0

    move v2, v3

    :goto_1
    if-ne p3, v2, :cond_1

    move v2, v0

    :goto_2
    return v2

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, -0x1

    :goto_3
    if-ltz v0, :cond_5

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getEventType()I

    move-result v2

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v5

    if-ne v2, v5, :cond_3

    move v2, v3

    :goto_4
    if-ne p3, v2, :cond_4

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    const/4 v2, -0x1

    goto :goto_2
.end method

.method private getIndexWithOrdinal(Ljava/lang/String;I)I
    .locals 10

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v8

    if-nez v8, :cond_2

    :cond_0
    const/4 v3, -0x2

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v7

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v6

    sub-int v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    if-le p2, v8, :cond_3

    const/4 v3, -0x3

    goto :goto_0

    :cond_3
    const/4 v3, -0x2

    const-string/jumbo v8, "DeleteNotification"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->getCardList()Ljava/util/ArrayList;

    move-result-object v0

    move v2, v7

    :goto_1
    if-gt v2, v6, :cond_1

    if-eqz v4, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getEventType()I

    move-result v8

    sget-object v9, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v9

    if-ne v8, v9, :cond_5

    :cond_4
    if-nez v4, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getEventType()I

    move-result v8

    sget-object v9, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v9

    if-ne v8, v9, :cond_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    :cond_6
    if-ne v1, p2, :cond_7

    move v3, v2

    goto :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private handleEvent(Ljava/lang/String;I)V
    .locals 4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v3, "Accept"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "Decline"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "DeleteNotification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->processOperationForEvent(II)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    invoke-virtual {v0, v2, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->processOperationForEvent(II)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    invoke-virtual {v0, v1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->processOperationForEvent(II)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x40d9052a -> :sswitch_1
        0x4655f656 -> :sswitch_2
        0x748ca128 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleMsgDeleteEvent(I)V
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->deleteChannel(Landroid/content/Context;Ljava/util/ArrayList;)V

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$Status;->USER_DELETED:Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$Status;

    invoke-direct {p0, v0, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->updateAutoItemStatus(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$Status;)V

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->updateActionBarTitle()V

    :cond_0
    return-void
.end method

.method private handleMsgDetailPreview(Landroid/os/Message;)V
    .locals 6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    move-object v1, v4

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    if-eqz v4, :cond_0

    instance-of v4, v2, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setNewChannel(Z)V

    :cond_2
    move-object v4, v2

    check-cast v4, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getHiddenCoverPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mParentView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$Status;->USER_VIEWED:Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$Status;

    invoke-direct {p0, v2, v4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->updateAutoItemStatus(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$Status;)V

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v4, v2, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->startDetailPreview(ILcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleMsgRefreshSet()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->refreshDataSet()V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->updateActionBarTitle()V

    :cond_0
    return-void
.end method

.method private handleMsgStartPhotoView(Ljava/lang/Integer;I)V
    .locals 2

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->startPhotoView(IZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleNlgResponseForDC(Ljava/lang/String;Z)V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v1, "Notification"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string/jumbo v1, "OrderType"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz p2, :cond_1

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    :goto_1
    invoke-static {v2, p1, v1, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_0
    const-string/jumbo v1, "NewContent"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    goto :goto_1
.end method

.method private handleShareEventAccept(I)V
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-nez v0, :cond_0

    const-string/jumbo v3, "ContentNotification"

    const-string/jumbo v4, "handleShareEventAccept : channelAlbum is null"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getBucketId()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->acceptSharedEvent(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private handleShareEventReject(I)V
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getBucketId()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->removeSharedEvent(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->cancelQuickPanelNotification(I)V

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->updateActionBarTitle()V

    goto :goto_0
.end method

.method private handleShareEventUpdate(Landroid/os/Message;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string/jumbo v2, "007"

    const-string/jumbo v3, "1095"

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->handleShareEventReject(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "007"

    const-string/jumbo v3, "1096"

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->handleShareEventAccept(I)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sec.android.gallery3d.eventshare.STATE_NOTIFIY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private removeSharedEvent(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ContentNotification"

    const-string/jumbo v1, "Reject > isEventSharingAuth : true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0a0018

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mEventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->deleteMember(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendNotificationForAGIF()V
    .locals 3

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartGifEditCmd$AGifCmdType;->START_AGIF_MAKER_FOR_EVENT_NOTIFICATION:Lcom/sec/samsung/gallery/controller/StartGifEditCmd$AGifCmdType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "START_GIF_MAKER"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private sendNotificationForCollage()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER_FOR_EVENT_NOTIFICATION:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "START_COLLAGE_APP"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startDetailPreview(ILcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "mime-type"

    const-string/jumbo v3, "image/jpg"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const-string/jumbo v3, "collage_layout_type"

    move-object v2, p2

    check-cast v2, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getFaceGroupId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo v2, "KEY_GALLERY_NOTIFICATION_PREVIEW_SET_PATH"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "story_type"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getChannelType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "KEY_IS_STORY_ID"

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "KEY_IS_FROM_GALLERY_NOTIFCATION_VIEW"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/uri/file%3A%2F%2F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private startPhotoRetouching(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mRequestPhotoEditorAlbumIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v3, "ContentNotification"

    const-string/jumbo v4, "startPhotoRetouching : mediaSet is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    instance-of v3, v2, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setNewChannel(Z)V

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->sendNotificationForCollage()V

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v4, "EXIT_SELECTION_MODE"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->sendNotificationForAGIF()V

    goto :goto_1
.end method

.method private startPhotoView(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$3;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;IZ)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startSharedEventView(I)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->updateChannelIntColumnsToHide(I)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->getAlbumIndexFromEventId(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const-string/jumbo v2, "ContentNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eventID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setChannelType(I)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->startPhotoView(IZ)V

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private updateActionBarTitle()V
    .locals 6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0181

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->getItemCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateAutoItemStatus(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$Status;)V
    .locals 3

    sget-boolean v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getChannelType()I

    move-result v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->COLLAGE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->AGIF:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$Status;->ordinal()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface;->updateAutoItem(Landroid/content/Context;II)V

    :cond_1
    return-void
.end method

.method private updateChannelIntColumnsToHide(I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "type"

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "is_visible"

    invoke-virtual {v0, v1, p1, v2, v4}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "notify_status"

    invoke-virtual {v0, v1, p1, v2, v4}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method cancelQuickPanelNotification(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->cancel(I)V

    return-void
.end method

.method public create()V
    .locals 5

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->create()V

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mEventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const-string/jumbo v2, "/channel/eventnotificationalbumset"

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DataLoaderConfig;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DataLoaderConfig;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;)V

    const/4 v4, 0x5

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->setEasyMode(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->getThumbSizeType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->setInitThumbType(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->setFirstLoadingCount(I)V

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->destroy()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->destroy()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    return-void
.end method

.method public getBadgeCount()I
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mBadgeCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->getContentEventBadgeCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mBadgeCount:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mBadgeCount:I

    goto :goto_0
.end method

.method getTab()Landroid/support/design/widget/TabLayout$Tab;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f12011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCommandForDC(Ljava/lang/String;I)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->getHandlingIndexForDC(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a07ce

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, p1, v4, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_1
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->handleEvent(Ljava/lang/String;I)V

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->handleNlgResponseForDC(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public handleCommandForDCWithOrdinal(Ljava/lang/String;I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, -0x2

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->getIndexWithOrdinal(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, -0x3

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a0514

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, p1, v3, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_0
    return-void

    :cond_0
    if-eq v0, v4, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->handleEvent(Ljava/lang/String;I)V

    :cond_1
    if-eq v0, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->handleNlgResponseForDC(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public notifyStatus()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->getTotalEventBadgeCount(Landroid/content/Context;)I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->getContentEventBadgeCount(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_2

    :cond_1
    const-string/jumbo v0, "is_visible = 0"

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "notify_status"

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryNotificationInterface;->updateGalleryContentNotificationIntColumn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->setContentEventBadgeCount(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->notifyStatus()V

    return-void
.end method

.method public onStateResult()V
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    iget v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mRequestPhotoEditorAlbumIndex:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->deleteChannel(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    const/4 v4, -0x1

    iput v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mRequestPhotoEditorAlbumIndex:I

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->pause()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->closeProgressDialog()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->setGenericMotionFocus(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->setGenericMotionTitleFocus(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->unregisterReceiver()V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->resume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mComposeNotificationSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->onResume()V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->updateActionBarTitle()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment$DownloadStateReceiver;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->registerReceiver()V

    :cond_1
    return-void
.end method
