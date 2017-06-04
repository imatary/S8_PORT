.class public Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;
.super Landroid/app/Activity;
.source "EventChoiceActivity.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;,
        Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;,
        Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;,
        Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListClickListener;,
        Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;,
        Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventChoiceHandler;
    }
.end annotation


# static fields
.field private static final ADD_EVENT_RESULT_OK:I = 0x3

.field private static final CHANNEL_ALBUM_SET_PATH:Lcom/sec/android/gallery3d/data/Path;

.field private static final FEATURE_FACE_THUMBNAIL_ENABLED:Z

.field private static final FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

.field private static final IS_CREATE_ALBUM_TOP:Z

.field private static final MSG_SET_IMAGE:I = 0x66

.field private static final MSG_UPDATE_CHANNEL_ALBUM_NAME_LIST:I = 0x65

.field private static final MSG_UPDATE_LIST:I = 0x64

.field private static final TAG:Ljava/lang/String; = "EventChoiceActivity"

.field private static final mIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;

.field private mAlbumFrameSize:I

.field private mChannelAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

.field private mChannelAlbumUpdateThread:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;

.field private mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

.field private mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;

.field private mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

.field private mEvent:Lcom/sec/samsung/gallery/core/Event;

.field private mEventListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntent:Landroid/content/Intent;

.field private mIsMultiWindow:Z

.field private mListView:Landroid/widget/ListView;

.field private mMainHandler:Landroid/os/Handler;

.field private mObserver:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;

.field private mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

.field private final mWatchUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "/channel/channelalbumset"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->CHANNEL_ALBUM_SET_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsCreateAlbumTop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->IS_CREATE_ALBUM_TOP:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->FEATURE_FACE_THUMBNAIL_ENABLED:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoveCopyAlbumThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIdList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mEventListMap:Ljava/util/HashMap;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->AUTHORITY_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mWatchUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mChannelAlbumUpdateThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->handleCreateStory()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->sendDCChoiceStoryResponse(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->sendResultForSelectedStory(I)V

    return-void
.end method

.method static synthetic access$1400()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAlbumFrameSize:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;)Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->createAddIcon(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;)Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->IS_CREATE_ALBUM_TOP:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;I)Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->createEventIcon(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;I)Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mEventListMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mEventListMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAdapter:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)[Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mChannelAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$2600()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->FEATURE_FACE_THUMBNAIL_ENABLED:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mWatchUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->startLoadChannelAlbumSet()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->loadChannelAlbumSet()V

    return-void
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIsMultiWindow:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Lcom/sec/samsung/gallery/core/Event;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    return-object v0
.end method

.method private checkNewStoryExist(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAdapter:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->getItem(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private createAddIcon(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;)Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;
    .locals 8

    const v3, 0x7f0b02db

    const v4, 0x7f0b00c0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b031e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0, v6, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->view:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f020067

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f02032c

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f10001c

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-boolean v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->IS_CREATE_ALBUM_TOP:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-boolean v6, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->IS_CREATE_ALBUM_TOP:Z

    if-eqz v6, :cond_3

    :goto_2
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v1, 0x7f10001c

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_0
    sget-boolean v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->IS_CREATE_ALBUM_TOP:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f02005c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f02005b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method private createEventIcon(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;I)Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x106000d

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget-boolean v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->IS_CREATE_ALBUM_TOP:Z

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAlbumFrameSize:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAlbumFrameSize:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-boolean v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v3, 0x7f020068

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b031e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f020067

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v1, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-direct {p0, p2, p1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->startLoadBitmapTask(ILcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;)V

    :goto_1
    return-object p1

    :cond_0
    const v2, 0x7f020280

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v3, 0x7f0201c0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private getAlbumFrameSize()I
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0314

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0
.end method

.method private handleCreateStory()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->finish()V

    const-string/jumbo v0, "006"

    const-string/jumbo v1, "1087"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleDCChoiceStory(Ljava/lang/String;)V
    .locals 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAdapter:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAdapter:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->getItem(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->compareStoryName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->sendDCChoiceStoryResponse(Z)V

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->sendResultForSelectedStory(I)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleDCCreateStory(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v0, "no_name"

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "state_story"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "dc_story_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "DC_OPERATION_FROM_BIXBY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->finish()V

    const-string/jumbo v1, "006"

    const-string/jumbo v2, "1087"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->checkNewStoryExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "duplicate"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "enable_name"

    goto :goto_0
.end method

.method private declared-synchronized loadChannelAlbumSet()V
    .locals 14

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    sget-object v8, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->CHANNEL_ALBUM_SET_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v8}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->reload()J

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->getSubMediaSetCount()I

    move-result v4

    new-array v8, v4, [Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v8, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mChannelAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mChannelAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6, v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    aput-object v10, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mMainHandler:Landroid/os/Handler;

    const/16 v10, 0x65

    invoke-virtual {v8, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mMainHandler:Landroid/os/Handler;

    const/16 v10, 0x65

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    sget-object v8, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIdList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    sget-object v8, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIdList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mChannelAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v8, :cond_4

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mChannelAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v11, v10

    move v8, v9

    :goto_2
    if-ge v8, v11, :cond_4

    aget-object v0, v10, v8

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v3, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v9, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIdList:Ljava/util/ArrayList;

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/16 v8, 0x65

    iput v8, v7, Landroid/os/Message;->what:I

    iput-object v5, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private registerSettingObserver()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mObserver:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;->register()V

    return-void
.end method

.method private sendDCChoiceStoryResponse(Z)V
    .locals 5

    if-eqz p1, :cond_0

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    const-string/jumbo v3, "Add"

    :goto_0
    new-instance v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuAddToStory;

    const/4 v4, 0x1

    invoke-direct {v0, p1, v4}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuAddToStory;-><init>(ZZ)V

    invoke-interface {v0, v3}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string/jumbo v4, "Add"

    invoke-static {p0, v4, v2, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_0
    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    const-string/jumbo v3, "AddToStory"

    goto :goto_0
.end method

.method private sendResultForSelectedStory(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAdapter:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->getItemId(I)J

    move-result-wide v2

    long-to-int v0, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "selected_channel_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "DC_OPERATION_FROM_BIXBY"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->finish()V

    const-string/jumbo v1, "006"

    const-string/jumbo v2, "1088"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setActionBarStyle()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f100012

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v2, 0x7f020046

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0a0034

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    return-void
.end method

.method private setStateChageListener()V
    .locals 3

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;-><init>()V

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    new-instance v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$2;-><init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)V

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->setStateChangeListener(Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowStateChangeInterface;)V

    :cond_0
    return-void
.end method

.method private startLoadBitmapTask(ILcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;-><init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;ILcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;)V

    new-instance v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$4;-><init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;I)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    return-void
.end method

.method private startLoadChannelAlbumSet()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mChannelAlbumUpdateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mChannelAlbumUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mChannelAlbumUpdateThread:Ljava/lang/Thread;

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$1;-><init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)V

    const-string/jumbo v2, "UpdateChannelAlbumSet"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mChannelAlbumUpdateThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mChannelAlbumUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private unregisterSettingObserver()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mObserver:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;->unregister()V

    return-void
.end method

.method private updateEventList()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$3;-><init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateListLayout()V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIsMultiWindow:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method


# virtual methods
.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getNextExpectedState(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    const-string/jumbo v0, "006"

    const-string/jumbo v1, "1080"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityOnBackPressed(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIsMultiWindow:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v1, 0x400

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f04005c

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->setContentView(I)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->setActionBarStyle()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isMultiWindow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mIsMultiWindow:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    const v0, 0x7f12008f

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;

    invoke-direct {v0, p0, v3}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;-><init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAdapter:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;

    new-instance v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventChoiceHandler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAdapter:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventChoiceHandler;-><init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAdapter:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListClickListener;

    invoke-direct {v1, p0, v3}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListClickListener;-><init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->setStateChageListener()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DeviceCogEventChoiceActivityListenerImpl;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogEventChoiceActivityListenerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/EventChoiceActivityDCHandler;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/EventChoiceActivityDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/touchevent/StoryChoiceActivityDCTouchEvent;

    invoke-direct {v0, p0}, Lcom/samsung/android/devicecog/gallery/touchevent/StoryChoiceActivityDCTouchEvent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;

    const-string/jumbo v0, "AddToStory"

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getAlbumFrameSize()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAlbumFrameSize:I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f04005b

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->setContentView(I)V

    goto/16 :goto_1
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->destroyDCTouchEventThread(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityPause()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mObserver:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->unregisterSettingObserver()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "006"

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->updateListLayout()V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->FEATURE_MOVE_COPY_ALBUM_THUMBNAIL:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->startLoadChannelAlbumSet()V

    :goto_0
    new-instance v0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;-><init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mObserver:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->registerSettingObserver()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityResume()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->updateEventList()V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    const-string/jumbo v4, "EventChoiceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Event update ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CREATE_STORY:I

    if-ne v1, v4, :cond_1

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->handleDCCreateStory(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CHOICE_STORY:I

    if-ne v1, v4, :cond_2

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->handleDCChoiceStory(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;->doDCTouchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
