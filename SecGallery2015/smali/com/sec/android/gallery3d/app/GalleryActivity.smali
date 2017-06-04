.class public Lcom/sec/android/gallery3d/app/GalleryActivity;
.super Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/app/GalleryActivity$LruCacheJob;
    }
.end annotation


# static fields
.field public static final ACTION_ALBUM_PICK:Ljava/lang/String; = "com.android.gallery.action.ALBUM_PICK"

.field public static final ACTION_ALBUM_VIEW:Ljava/lang/String; = "com.android.gallery.action.ALBUM_VIEW"

.field public static final ACTION_ITEM_PICK:Ljava/lang/String; = "com.android.gallery.action.ITEM_PICK"

.field public static final ACTION_MULTIPLE_PICK:Ljava/lang/String;

.field public static final ACTION_PERSON_PICK:Ljava/lang/String; = "android.intent.action.PERSON_PICK"

.field public static final ACTION_REVIEW:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field public static final ACTION_SEARCH_VIEW:Ljava/lang/String; = "com.android.gallery.action.SEARCH_VIEW"

.field public static final ACTION_SHORTCUT_VIEW:Ljava/lang/String; = "com.android.gallery.action.SHORTCUT_VIEW"

.field public static final ACTION_VIEW_CLOUD_VIEW:Ljava/lang/String; = "com.samsung.android.gallery.action.VIEW_CLOUD_VIEW"

.field public static final ACTION_VIEW_RECYCLEBIN_SCLOUD:Ljava/lang/String; = "com.samsung.android.gallery.action.VIEW_RECYCLEBIN_SCLOUD"

.field private static final FEATURE_SHOW_STATUS_BAR:Z

.field private static final FINISH_AT_SECURELOCK:Ljava/lang/String; = "finish_at_securelock"

.field public static final FROM_SETUP_WIDZARD:Ljava/lang/String; = "from-sw"

.field private static final ID_RANDOMER:Ljava/util/Random;

.field private static final IS_TABLET:Z

.field public static final KEY_ADD_TAG_VALUE:Ljava/lang/String; = "add_tag_value"

.field public static final KEY_ARTICLE_ID:Ljava/lang/String; = "article_id"

.field public static final KEY_CHANNEL_ACCEPT_EVENT:Ljava/lang/String; = "event-view-accept-event"

.field public static final KEY_CHANNEL_SHARE_EVENTNAME:Ljava/lang/String; = "event-view-share-eventname"

.field public static final KEY_CHANNEL_SHARE_GROUPID:Ljava/lang/String; = "event-view-share-groupid"

.field public static final KEY_CHANNEL_SHARE_NOTIFICATION:Ljava/lang/String; = "event-view-share-notification"

.field public static final KEY_CHANNEL_SHARE_REQ_ID:Ljava/lang/String; = "event-view-share-req-id"

.field public static final KEY_COMMENT_VIEW:Ljava/lang/String; = "show_comment_view"

.field public static final KEY_CONTACT_CALLER_ID:Ljava/lang/String; = "caller_id_pick"

.field public static final KEY_COPY_MOVE_ALBUMPATH:Ljava/lang/String; = "albumPath"

.field public static final KEY_COPY_MOVE_OPERATION:Ljava/lang/String; = "operation"

.field public static final KEY_COPY_MOVE_OPERATION_INT_DATA:Ljava/lang/String; = "operationIntData"

.field public static final KEY_COPY_MOVE_OPERATION_TYPE:Ljava/lang/String; = "operationType"

.field public static final KEY_COPY_MOVE_TO_ALBUM:Ljava/lang/String; = "copy-move-to-album"

.field public static final KEY_EMPTY_CHANNEL_ID:Ljava/lang/String; = "event-view-empty-channel-id"

.field public static final KEY_ENABLE_SUGGESTION_ADD_ALL:Ljava/lang/String; = "enable-suggestion-add-all"

.field public static final KEY_FROM_CAMERA:Ljava/lang/String; = "from-Camera"

.field public static final KEY_FROM_DC_SEARCH:Ljava/lang/String; = "key-from-dc-search"

.field public static final KEY_FROM_MYFILES:Ljava/lang/String; = "from-myfiles"

.field public static final KEY_FROM_SMART_PAGE:Ljava/lang/String; = "from-SmartPage"

.field public static final KEY_FROM_THEMESTORE:Ljava/lang/String; = "from-ThemeStore"

.field public static final KEY_FROM_TOGETHER:Ljava/lang/String; = "from-WeTogether"

.field public static final KEY_FROM_UNLOCK:Ljava/lang/String; = "from-Unlock"

.field public static final KEY_GET_CONTENT:Ljava/lang/String; = "get-content"

.field public static final KEY_INCLUDE_RECOMMEND:Ljava/lang/String; = "include-recommend"

.field public static final KEY_IS_ACTIVITY_TRANSITION_VI:Ljava/lang/String; = "activity-transition-VI"

.field public static final KEY_IS_ALBUM_PICK:Ljava/lang/String; = "album-pick"

.field public static final KEY_IS_GALLERY_WIDGET:Ljava/lang/String; = "photo-pick"

.field public static final KEY_IS_GIF_MAKER:Ljava/lang/String; = "photo-pick-gifmaker"

.field public static final KEY_IS_INSIDE_GALLERY:Ljava/lang/String; = "pick-from-gallery"

.field public static final KEY_IS_MULTI_PICK:Ljava/lang/String; = "multi-pick"

.field public static final KEY_IS_ONLY_ALBUM_PICK:Ljava/lang/String; = "only-album-pick"

.field public static final KEY_IS_PERSON_PICK:Ljava/lang/String; = "person-pick"

.field public static final KEY_IS_PHOTOWALL:Ljava/lang/String; = "from-photowall"

.field public static final KEY_IS_PICK_LIMITED_FILE_SIZE:Ljava/lang/String; = "is_pick-limited-file-size"

.field public static final KEY_IS_PICK_TO_ADD_CHANNEL_VIEW:Ljava/lang/String; = "is-pick-to-add-channel-view"

.field public static final KEY_IS_PICK_TO_ADD_NEW_ALBUM:Ljava/lang/String; = "is-pick-to-add-new-album"

.field public static final KEY_IS_QUERY_URI:Ljava/lang/String; = "query_uri"

.field private static final KEY_IS_SHOW_PERMISSION_DIALOG:Ljava/lang/String; = "is-showing-google-permission-dialog"

.field public static final KEY_LIKE_VIEW:Ljava/lang/String; = "show_like_view"

.field public static final KEY_MAX_PICK_ITEM:Ljava/lang/String; = "pick-max-item"

.field public static final KEY_MEDIA_SET_POSITION:Ljava/lang/String; = "media-set-position"

.field public static final KEY_MEDIA_TYPES:Ljava/lang/String; = "mediaTypes"

.field public static final KEY_MIN_PICK_ITEM:Ljava/lang/String; = "pick-min-item"

.field public static final KEY_PICK_LIMITED_FILE_SIZE:Ljava/lang/String; = "pick-limited-file-size"

.field public static final KEY_REFRESH_NOTIFICATION:Ljava/lang/String; = "refresh_notification"

.field public static final KEY_SINGLE_ALBUM:Ljava/lang/String; = "single-album"

.field public static final KEY_START_EVENTVIEW_FROM_NOTIFICATION:Ljava/lang/String; = "from-highlight-notification"

.field public static final KEY_START_NOTIFICATION_VIEW_FROM_NOTIFICATION:Ljava/lang/String; = "receive-story-from-notification"

.field public static final KEY_START_STORY_DETAIL_VIEW:Ljava/lang/String; = "start-story-detail-view"

.field public static final KEY_START_STORY_VIEW:Ljava/lang/String; = "start-story-view"

.field public static final KEY_SWIPE_FROM_GALLERY:Ljava/lang/String; = "swipe-from-Gallery"

.field public static final KEY_TAB_MOVE_RATIO:Ljava/lang/String; = "tab_move_ratio"

.field public static final KEY_VIEW_SIGHT_MODE:Ljava/lang/String; = "isSightMode"

.field public static final MSG_ANIMATE_TAB_INDICATOR:I = 0x7

.field private static final MSG_FINISH_PENDING:I = 0x2

.field private static final MSG_INVALIDATE_OPTION_MENU:I = 0x4

.field private static final MSG_PAUSE_PENDING:I = 0x1

.field private static final MSG_PERMISSION_REQ_DIALLOG:I = 0x6

.field private static final MSG_RESUME_PENDING:I = 0x3

.field public static final MSG_UPDATE_BACKSCREEN:I = 0x8

.field private static final MSG_UPDATE_BACKSCREEN_IN_PAUSE_STATE:I = 0x5

.field private static final PAUSE_CALL_DELAY:I = 0x3e8

.field private static final PAUSE_CALL_SHORT_DELAY:I = 0x12c

.field private static final PICKER_WINDOW_BACKGROUND_DIM_AMOUNT:F = 0.3f

.field private static final PICKER_WINDOW_ELEVATION:I = 0xc

.field private static final PICKER_WINDOW_ELEVATION_REMOVE:I = 0x0

.field private static final REQUEST_VIDEO_PLAY_COVER_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GalleryActivity"

.field public static final TIP_CARD_INVISIBLE:I = 0x0

.field public static final TIP_CARD_NEVER_SHOWN:I = 0x2

.field public static final TIP_CARD_VISIBLE:I = 0x1

.field private static final USE_MULTIWINDOW:Z

.field private static final VISUAL_SEARCH_RESULT_VIEW:I

.field private static mIsPrevMultiWindowMode:Z


# instance fields
.field public mActivityCreateTime:J

.field private mAutoRecommendTime:J

.field private mDeviceCogActivity:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

.field private mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

.field private final mDragListener:Landroid/view/View$OnDragListener;

.field private mDualScreenManager:Lcom/sec/android/gallery3d/util/DualScreenManager;

.field private mFestivalEndTime:J

.field private mFestivalStartTime:J

.field private mFinishAtSecrureLock:Z

.field private mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

.field private mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private final mGalleryId:I

.field private mHardKeyboardHidden:I

.field private mIsActive:Z

.field private mIsBackPressed:Z

.field private mIsFestival:Z

.field private mIsForcePause:Z

.field private mIsForceResume:Z

.field private mIsReCreated:Z

.field private mIsStartViewSkip:Z

.field private final mMainHandler:Landroid/os/Handler;

.field public mNeedFirstUpOfDetailView:Z

.field private mNeedUpdateBackscreenInPauseState:Z

.field private mPaused:Z

.field private mPreDisplay:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

.field private mPrevFinishAtSecrureLock:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mUpdateBackscreenInPauseState:Z

.field private final mUpdateListener:Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;

.field private nFaceRecommendationObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.samsung.intent.action.MULTIPLE_PICK"

    :goto_0
    sput-object v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->ACTION_MULTIPLE_PICK:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->ID_RANDOMER:Ljava/util/Random;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsPrevMultiWindowMode:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->USE_MULTIWINDOW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->FEATURE_SHOW_STATUS_BAR:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->IS_TABLET:Z

    return-void

    :cond_0
    const-string/jumbo v0, "android.intent.action.MULTIPLE_PICK"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsBackPressed:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mNeedFirstUpOfDetailView:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mPaused:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mHardKeyboardHidden:I

    sget-object v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->ID_RANDOMER:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryId:I

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mAutoRecommendTime:J

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mUpdateBackscreenInPauseState:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mNeedUpdateBackscreenInPauseState:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsFestival:Z

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->nFaceRecommendationObserver:Landroid/database/ContentObserver;

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mFinishAtSecrureLock:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsActive:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mPrevFinishAtSecrureLock:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsReCreated:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsForceResume:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsForcePause:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsStartViewSkip:Z

    new-instance v0, Lcom/sec/android/gallery3d/app/GalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/GalleryActivity$1;-><init>(Lcom/sec/android/gallery3d/app/GalleryActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mUpdateListener:Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;

    new-instance v0, Lcom/sec/android/gallery3d/app/GalleryActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/GalleryActivity$3;-><init>(Lcom/sec/android/gallery3d/app/GalleryActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDragListener:Landroid/view/View$OnDragListener;

    new-instance v0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/app/GalleryActivity$5;-><init>(Lcom/sec/android/gallery3d/app/GalleryActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/app/GalleryActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/app/GalleryActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mFinishAtSecrureLock:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/gallery3d/app/GalleryActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mNeedUpdateBackscreenInPauseState:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/gallery3d/app/GalleryActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsStartViewSkip:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/gallery3d/app/GalleryActivity;ZZ)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->checkRequiredPermissions(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->IS_TABLET:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/gallery3d/app/GalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->updateInPauseStateForTabletMWSwitch()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/gallery3d/app/GalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->updateInPauseStateDelayed()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/app/GalleryActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mAutoRecommendTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/app/GalleryActivity;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->nFaceRecommendationObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/gallery3d/app/GalleryActivity;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->nFaceRecommendationObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/app/GalleryActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsActive:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->USE_MULTIWINDOW:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/app/GalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->forceResume()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/app/GalleryActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mUpdateBackscreenInPauseState:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/gallery3d/app/GalleryActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mUpdateBackscreenInPauseState:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/app/GalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->forcePause()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/app/GalleryActivity;)Lcom/sec/android/gallery3d/app/GalleryCoverMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    return-object v0
.end method

.method private addGLIdleListener()V
    .locals 5

    invoke-static {p0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "ON_GL_IDLE_TIMER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->ADD_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/sec/android/gallery3d/app/GalleryActivity$6;

    invoke-direct {v4, p0}, Lcom/sec/android/gallery3d/app/GalleryActivity$6;-><init>(Lcom/sec/android/gallery3d/app/GalleryActivity;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private checkRequiredPermissions(ZZ)Z
    .locals 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isMmsUri(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_2

    sget-object v5, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_LAUNCH_FROM_MESSAGING:[Ljava/lang/String;

    :goto_0
    invoke-static {p0, v5}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    if-eqz p1, :cond_9

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_1
    new-instance v3, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->showFinishonUnlockDialog()V

    move v7, v8

    :goto_1
    return v7

    :cond_2
    sget-object v5, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_LAUNCH:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    sget-object v5, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_LAUNCH_WITHOUT_CMHPROVIDER_FROM_MESSAGING:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_LAUNCH_WITHOUT_CMHPROVIDER:[Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v4, v9}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f040025

    const/4 v7, 0x0

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v10, v11, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v7, 0x7f120043

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a0051

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCondensedTitle:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_6
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTabE7DeltaModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0b0451

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7
    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_8
    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/app/GalleryActivity;->showPermissionRequestDialog([Ljava/lang/String;)V

    :cond_9
    move v7, v8

    goto :goto_1

    :cond_a
    if-eqz p2, :cond_b

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v7}, Lcom/sec/android/gallery3d/app/GalleryActivity;->startView(Landroid/os/Bundle;)V

    :cond_b
    move v7, v9

    goto :goto_1
.end method

.method private enableFinishingAtSecureLock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mFinishAtSecrureLock:Z

    return-void
.end method

.method private forcePause()V
    .locals 2

    const-string/jumbo v0, "GalleryActivity"

    const-string/jumbo v1, "forcePause() is called !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsForcePause:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsForcePause:Z

    return-void
.end method

.method private forceResume()V
    .locals 2

    const-string/jumbo v0, "GalleryActivity"

    const-string/jumbo v1, "forceResume() is called !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsForceResume:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsForceResume:Z

    return-void
.end method

.method private fromLauncher()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hidePermissionRequestDialog()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/DialogVisibility;->HIDE:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "START_PERMISSION_REQUEST_ACTIVITY"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private isActionBarObjectFocused()Z
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "action_bar"

    const-string/jumbo v7, "id"

    const-string/jumbo v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isActionView()Z
    .locals 2

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isCoverCloseMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCustomShortcut(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v1, "com.android.gallery.action.SHORTCUT_VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "view_item"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isFastOptionViewFocused()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f1200f0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLastActionBarObjectFocused()Z
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "action_bar"

    const-string/jumbo v7, "id"

    const-string/jumbo v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v4, 0x42

    invoke-virtual {v2, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isLastTabObjectFocused()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->isLastTabFocused()Z

    move-result v0

    return v0
.end method

.method private isNotFullWindow()Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReceiveEventNotification(Landroid/content/Intent;)Z
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "receive-story-from-notification"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShareNotification(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v1, "event-view-share-notification"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "start-story-detail-view"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isValidDataUri(Landroid/net/Uri;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "r"

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GalleryActivity"

    const-string/jumbo v3, "cannot open uri: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v2, 0x7f0a02e3

    invoke-static {p0, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private needToPendingResume()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isShowingGooglePermissionDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postGallery(Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;)V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "POST_GALLERY"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private resetGlIdleTimer()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "ON_GL_IDLE_TIMER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->RUN_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private restoreViewState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->restoreFromState(Landroid/os/Bundle;)V

    return-void
.end method

.method private setBixbyExecuteState(Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "DC_OPERATION_FROM_BIXBY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private setOnDragListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    return-void
.end method

.method private setStatusBarBackgroundColor(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFWStatusBarInOpenTheme:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f100120

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method private showPermissionRequestDialog([Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/DialogVisibility;->SHOW:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "START_PERMISSION_REQUEST_ACTIVITY"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showStatusBar()V
    .locals 2

    const/16 v0, 0x700

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFWStatusBarInOpenTheme:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLightStatusBar(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getStatusBarUiVisibility(ZI)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setSystemUiVisibility(I)V

    return-void
.end method

.method private startView(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsStartViewSkip:Z

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo v6, "IsHelpMode"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_0
    if-eqz p1, :cond_2

    const-string/jumbo v6, "status_proxy"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v6, "activity-state"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v6, v5

    if-nez v6, :cond_2

    :cond_1
    const-string/jumbo v6, "Gallery_Performance"

    const-string/jumbo v7, "Since savedInsatnceState and list is empty so starting new view instead of restoring view"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :cond_2
    if-eqz p1, :cond_3

    if-nez v2, :cond_3

    if-eqz v4, :cond_6

    :cond_3
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    if-eqz v6, :cond_5

    sget-boolean v6, Lcom/sec/android/gallery3d/app/GalleryActivity;->IS_DUAL_SCREEN:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDualScreenManager:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-virtual {v6, v3, p1}, Lcom/sec/android/gallery3d/util/DualScreenManager;->activity_StartView(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v7, "START_GALLERY_VIEW"

    invoke-virtual {v6, v7, p0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->restoreViewState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private updateInPauseStateDelayed()V
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsActive:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mNeedUpdateBackscreenInPauseState:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryActivity;->USE_MULTIWINDOW:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMinimized()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->needToPendingResume()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "GalleryActivity"

    const-string/jumbo v2, "GalleryActivity.updateBackscreenInPauseState() is called for showing background screen normally in Pause state."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isNotFullWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method private updateInPauseStateForTabletMWSwitch()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GalleryActivity"

    const-string/jumbo v1, "Gallery activity isDestroyed. DO NOT call forceResume()!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->USE_MULTIWINDOW:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMinimized()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->forcePause()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->forceResume()V

    goto :goto_0
.end method

.method private updatePickerWindow()V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->updateTabletPickerMode(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method private updateTranslucency()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/ActivityFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/ActivityFactory;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;->convertFromTranslucent(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;->convertToTranslucent(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public disableFinishingAtSecureLock()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mFinishAtSecrureLock:Z

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusableInTouchMode(Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContentPane()Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContentPane()Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/GLView;->onGenericMotionCancel()V

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchGenericMotionCancel()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->resetGlIdleTimer()V

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->IS_DUAL_SCREEN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDualScreenManager:Lcom/sec/android/gallery3d/util/DualScreenManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDualScreenManager:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->activity_Finish()V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    return-void
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getDataManager()Lcom/sec/android/gallery3d/data/DataManager;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    return-object v0
.end method

.method public getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    return-object v0
.end method

.method public getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v0

    return-object v0
.end method

.method public getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method public getGalleryCoverMode()Lcom/sec/android/gallery3d/app/GalleryCoverMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    return-object v0
.end method

.method public getGalleryId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryId:I

    return v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    return-object v0
.end method

.method public hidePreDisplayScreen()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mPreDisplay:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mPreDisplay:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->hideScreenNail()V

    :cond_0
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->ignoreInvalidateOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public isForcePause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsForcePause:Z

    return v0
.end method

.method public isForceResume()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsForceResume:Z

    return v0
.end method

.method public isPreDisplayScreenNailVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mPreDisplay:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mPreDisplay:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->isScreenNailVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdateBackscreenInPauseState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mUpdateBackscreenInPauseState:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->isVideoStarted(Z)V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->destroy()V

    :cond_0
    invoke-direct {p0, p3}, Lcom/sec/android/gallery3d/app/GalleryActivity;->setBixbyExecuteState(Landroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDeviceCogActivity:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityOnBackPressed(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mUpdateBackscreenInPauseState:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "GalleryActivity"

    const-string/jumbo v1, "onConfigurationChanged : Gallery activity isDestroyed. DO NOT call forceResume()!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setMultiWindow()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUseTabletGUI(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->IS_TAB_UI:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->refreshTab()V

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mHardKeyboardHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mHardKeyboardHidden:I

    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mHardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->updatePickerWindow()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->updateTranslucency()V

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->IS_DUAL_SCREEN:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDualScreenManager:Lcom/sec/android/gallery3d/util/DualScreenManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDualScreenManager:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->setExpandShrinkButton()V

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->forceResume()V

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mUpdateBackscreenInPauseState:Z

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->disableFinishingAtSecureLock()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v3, 0x0

    const/4 v13, 0x2

    const/16 v2, 0x400

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string/jumbo v0, "VerificationLog"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "Gallery onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mActivityCreateTime:J

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from-Camera"

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->setRequestedOrientation(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isActionView()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mPreDisplay:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->IS_DUAL_SCREEN:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "dual_view_next_state_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, v13}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setActivityLMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-eqz p1, :cond_10

    move v0, v11

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReCreateActivity(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUseTabletGUI(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v1

    if-eqz p1, :cond_11

    move v0, v11

    :goto_1
    invoke-interface {v1, v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->setActivityRecreated(Z)V

    invoke-static {p0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0, v10}, Lcom/sec/android/gallery3d/app/GalleryActivity;->updateTabletPickerMode(Landroid/view/WindowManager$LayoutParams;)V

    const v0, 0x7f0c015e

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->setTheme(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from-Unlock"

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_3
    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->FEATURE_SHOW_STATUS_BAR:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, v10}, Lcom/sec/android/gallery3d/app/GalleryActivity;->setStatusBarBackgroundColor(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->IS_TAB_UI:Z

    if-eqz v0, :cond_14

    const v0, 0x7f0400a3

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->setContentView(I)V

    :goto_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mUpdateListener:Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setUpdateBackscreenListener(Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;)V

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->FEATURE_SHOW_STATUS_BAR:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->showStatusBar()V

    :cond_5
    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->IS_DUAL_SCREEN:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/util/DualScreenManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDualScreenManager:Lcom/sec/android/gallery3d/util/DualScreenManager;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDualScreenManager:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->registerBroadcastReceiver()V

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6, v12}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v6, v12}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->setOnDragListener()V

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    :cond_8
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mPreDisplay:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mPreDisplay:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->checkApplyScreenNail()Z

    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->setAppIntent(Landroid/content/Intent;)V

    const v0, 0x7f0a00de

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->setDCIMName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->setStorageName(Landroid/content/Context;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFestival:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsFestival:Z

    iget-wide v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mFestivalStartTime:J

    iget-wide v4, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mFestivalEndTime:J

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setImplFestivalData(ZJJ)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setMultiWindow(Z)V

    invoke-direct {p0, v12, v12}, Lcom/sec/android/gallery3d/app/GalleryActivity;->checkRequiredPermissions(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->startView(Landroid/os/Bundle;)V

    :goto_5
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "BROADCAST_RECEIVERS"

    new-array v2, v13, [Ljava/lang/Object;

    aput-object p0, v2, v12

    sget-object v3, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;->ONCREATE:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityListenerImpl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDeviceCogActivity:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->setGalleryID(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    const-string/jumbo v1, "is-showing-google-permission-dialog"

    invoke-virtual {p1, v1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setShowingGooglePermissionDialog(Z)V

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "finish_at_securelock"

    invoke-virtual {p1, v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mPrevFinishAtSecrureLock:Z

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsReCreated:Z

    :cond_c
    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_e

    if-nez v8, :cond_e

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->fromLauncher()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsMassNotTranslucent:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsPrevMultiWindowMode:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-eq v0, v1, :cond_d

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsPrevMultiWindowMode:Z

    if-nez v0, :cond_e

    :cond_d
    const-string/jumbo v0, "GalleryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "convertFromTranslucent() : config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/sec/samsung/gallery/lib/factory/ActivityFactory;

    invoke-direct {v9}, Lcom/sec/samsung/gallery/lib/factory/ActivityFactory;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;

    invoke-interface {v7, p0}, Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;->convertFromTranslucent(Landroid/app/Activity;)V

    :cond_e
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsPrevMultiWindowMode:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v12}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setViewSwitchVI(Z)V

    sget-object v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->CREATE:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->postGallery(Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;)V

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->IS_DUAL_SCREEN:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDualScreenManager:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->setExpandShrinkButton()V

    :cond_f
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "Gallery onCreate End "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    move v0, v12

    goto/16 :goto_0

    :cond_11
    move v0, v12

    goto/16 :goto_1

    :cond_12
    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->FEATURE_SHOW_STATUS_BAR:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_13
    const v0, 0x7f0c015d

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->setTheme(I)V

    goto/16 :goto_2

    :cond_14
    const v0, 0x7f0400a2

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->setContentView(I)V

    goto/16 :goto_3

    :cond_15
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLruCache:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/app/GalleryActivity$LruCacheJob;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/gallery3d/app/GalleryActivity$LruCacheJob;-><init>(Lcom/sec/android/gallery3d/app/GalleryActivity;Lcom/sec/android/gallery3d/app/GalleryActivity$1;)V

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/util/ThreadPool;->submitUrgent(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    goto/16 :goto_4

    :cond_16
    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mSavedInstanceState:Landroid/os/Bundle;

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsStartViewSkip:Z

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "Gallery onDestroy Start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mUpdateBackscreenInPauseState:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->forcePause()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mUpdateBackscreenInPauseState:Z

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryActivity;->IS_DUAL_SCREEN:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDualScreenManager:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-virtual {v2, p0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->unregisterBroadcastReceiver(Landroid/app/Activity;)V

    :cond_2
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    sget-object v2, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->DESTROY:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->postGallery(Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->destroy()V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->onDestroy()V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "BROADCAST_RECEIVERS"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;->ONDESTROY:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->releaseInstance()V

    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mCancelMediaOperations:Z

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/sec/samsung/gallery/util/FileUtil;->cancelOperateMediaAsyncTask()V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v2, "android.intent.action.PICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/sec/android/gallery3d/app/GalleryActivity;->ACTION_MULTIPLE_PICK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromCamera()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->stopPresentation(Landroid/content/Context;)V

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->close()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "CPU_BOOST_SCROLL"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$CpuBoostScrollCmdType;->BOOST_DESTROY:Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$CpuBoostScrollCmdType;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "DESTROY"

    invoke-virtual {v2, v3, p0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/DimensionUtil;->clearAllDimensionConfigs()V

    :cond_8
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->resetStatusBarHeight()V

    invoke-static {}, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;->clear()V

    invoke-static {}, Lcom/sec/samsung/gallery/util/ShareList;->clearShareList()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->hidePermissionRequestDialog()V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->destroyDCTouchEventThread(Landroid/content/Context;)V

    :cond_9
    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "Gallery onDestroy End"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->releaseInstance()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v2

    :cond_b
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getProgressDialog()Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getProgressDialog()Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->dismiss()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 16

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->resetGlIdleTimer()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v13, :cond_0

    const-string/jumbo v13, "GalleryActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onKeyDown mGLRootView == null, key = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    const/16 v13, 0x14

    move/from16 v0, p1

    if-eq v0, v13, :cond_1

    const/16 v13, 0x13

    move/from16 v0, p1

    if-eq v0, v13, :cond_1

    const/16 v13, 0x15

    move/from16 v0, p1

    if-eq v0, v13, :cond_1

    const/16 v13, 0x16

    move/from16 v0, p1

    if-ne v0, v13, :cond_12

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v9

    if-eqz v9, :cond_12

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v10

    instance-of v13, v10, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v13, :cond_3

    move-object v13, v10

    check-cast v13, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->isMoreInfoOn()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/glcore/GlRootView;->hasFocus()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    :cond_2
    invoke-super/range {p0 .. p2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v13

    goto :goto_0

    :cond_3
    instance-of v13, v10, Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    if-eqz v13, :cond_4

    invoke-super/range {p0 .. p2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v13

    goto :goto_0

    :cond_4
    instance-of v13, v10, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    if-eqz v13, :cond_6

    check-cast v10, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->setSlideshowPauseViewVisible()V

    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-nez v13, :cond_5

    const v13, 0x7f120246

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/gallery3d/app/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v8}, Landroid/widget/ImageView;->requestFocus()Z

    :cond_5
    invoke-super/range {p0 .. p2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v13

    goto :goto_0

    :cond_6
    instance-of v13, v10, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    if-eqz v13, :cond_7

    invoke-super/range {p0 .. p2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v13

    goto/16 :goto_0

    :cond_7
    instance-of v13, v10, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    if-eqz v13, :cond_c

    move-object v6, v10

    check-cast v6, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static/range {p0 .. p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getUpImageButton(Landroid/app/Activity;)Landroid/widget/ImageButton;

    move-result-object v11

    const/16 v13, 0x16

    move/from16 v0, p1

    if-ne v0, v13, :cond_8

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/widget/ImageButton;->hasFocus()Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setFocusToSearchView(Z)V

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_8
    const/16 v13, 0x13

    move/from16 v0, p1

    if-ne v0, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/glcore/GlRootView;->hasFocus()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v13

    if-nez v13, :cond_9

    const v13, 0x7f1200fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/gallery3d/app/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_9

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->isSearchFilterHidden()Z

    move-result v13

    if-nez v13, :cond_9

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->requestFocus()Z

    :cond_9
    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->isLastRowKeyboardfocus()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->isSearchFilterHidden()Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_a
    const/16 v13, 0x14

    move/from16 v0, p1

    if-eq v0, v13, :cond_d

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    invoke-super/range {p0 .. p2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v13

    goto/16 :goto_0

    :cond_c
    instance-of v13, v10, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-eqz v13, :cond_d

    move-object v6, v10

    check-cast v6, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getCurrentState()I

    move-result v13

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    invoke-super/range {p0 .. p2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v13

    goto/16 :goto_0

    :cond_d
    instance-of v13, v10, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v13, :cond_e

    move-object v13, v10

    check-cast v13, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getShowSharedListView()Z

    move-result v13

    if-nez v13, :cond_f

    :cond_e
    instance-of v13, v10, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    if-eqz v13, :cond_12

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    const/16 v13, 0x14

    move/from16 v0, p1

    if-eq v0, v13, :cond_10

    const/16 v13, 0x13

    move/from16 v0, p1

    if-ne v0, v13, :cond_12

    :cond_10
    const v13, 0x7f1201a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/gallery3d/app/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v13

    if-nez v13, :cond_11

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->requestFocus()Z

    :cond_11
    invoke-super/range {p0 .. p2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v13

    goto/16 :goto_0

    :cond_12
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v0, v13, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v13

    if-nez v13, :cond_13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsBackPressed:Z

    :cond_13
    const-string/jumbo v13, "GalleryActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onKeyDown isBackPressed = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsBackPressed:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v13

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/glcore/GlRootView;->hasFocus()Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v13, 0x13

    if-ne v2, v13, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v12

    if-eqz v12, :cond_16

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v10

    instance-of v13, v10, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v13, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v13

    if-nez v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v13

    sget-object v14, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v13, v14, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v13

    sget-object v14, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v13, v14, :cond_16

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_16
    const v13, 0x7f120008

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/gallery3d/app/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    sget-boolean v13, Lcom/sec/android/gallery3d/app/GalleryActivity;->IS_TAB_UI:Z

    if-eqz v13, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWeChatSightMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z

    move-result v13

    if-nez v13, :cond_17

    instance-of v13, v10, Lcom/sec/android/gallery3d/app/TabActivityState;

    if-eqz v13, :cond_17

    if-nez v7, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v13

    invoke-interface {v13}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->requestFocus()V

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_17
    if-eqz v7, :cond_19

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-eqz v13, :cond_19

    invoke-virtual {v7}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v13

    if-nez v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    invoke-virtual {v7}, Landroid/view/ViewGroup;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchGenericMotionCancel()V

    :cond_18
    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_19
    const/16 v13, 0x14

    if-eq v2, v13, :cond_1a

    const/16 v13, 0x13

    if-eq v2, v13, :cond_1a

    const/16 v13, 0x15

    if-eq v2, v13, :cond_1a

    const/16 v13, 0x16

    if-ne v2, v13, :cond_20

    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v13

    instance-of v13, v13, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    if-eqz v13, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;I)V

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    if-eqz v13, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_1c

    instance-of v13, v10, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    if-eqz v13, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchGenericMotionCancel()V

    :cond_1e
    :goto_1
    const/16 v13, 0x71

    move/from16 v0, p1

    if-eq v0, v13, :cond_1f

    const/16 v13, 0x72

    move/from16 v0, p1

    if-ne v0, v13, :cond_2e

    :cond_1f
    const-string/jumbo v13, "GalleryActivity"

    const-string/jumbo v14, "onKeyDown KEYCODE_CTRL_LEFT || KEYCODE_CTRL_RIGHT"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v13

    goto/16 :goto_0

    :cond_20
    const/16 v13, 0x3d

    if-ne v2, v13, :cond_1e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchGenericMotionCancel()V

    goto :goto_1

    :cond_21
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    const/16 v14, 0x14

    if-eq v13, v14, :cond_23

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    const/16 v14, 0x3d

    if-ne v13, v14, :cond_2b

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isLastActionBarObjectFocused()Z

    move-result v13

    if-nez v13, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isLastTabObjectFocused()Z

    move-result v13

    if-eqz v13, :cond_2b

    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v13

    and-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    if-eq v13, v14, :cond_2b

    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    const/16 v14, 0x3d

    if-ne v13, v14, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v12

    if-eqz v12, :cond_26

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v10

    instance-of v13, v10, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v13, :cond_24

    instance-of v13, v10, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    if-nez v13, :cond_24

    instance-of v13, v10, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    if-eqz v13, :cond_25

    :cond_24
    invoke-super/range {p0 .. p2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v13

    goto/16 :goto_0

    :cond_25
    const/16 p1, 0x14

    new-instance p2, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v14, 0x14

    move-object/from16 v0, p2

    invoke-direct {v0, v13, v14}, Landroid/view/KeyEvent;-><init>(II)V

    :cond_26
    const v13, 0x7f120008

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/gallery3d/app/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    sget-boolean v13, Lcom/sec/android/gallery3d/app/GalleryActivity;->IS_TAB_UI:Z

    if-eqz v13, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWeChatSightMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z

    move-result v13

    if-nez v13, :cond_27

    instance-of v13, v10, Lcom/sec/android/gallery3d/app/TabActivityState;

    if-eqz v13, :cond_27

    if-nez v7, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v13

    invoke-interface {v13}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->hasFocus()Z

    move-result v13

    if-nez v13, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v13

    invoke-interface {v13}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->requestFocus()V

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_27
    if-eqz v7, :cond_28

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-eqz v13, :cond_28

    invoke-virtual {v7}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v13

    if-nez v13, :cond_28

    invoke-virtual {v7}, Landroid/view/ViewGroup;->requestFocus()Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v13

    move/from16 v0, p1

    invoke-static {v13, v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;I)V

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v12

    if-eqz v12, :cond_2a

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v10

    if-eqz v10, :cond_2a

    instance-of v13, v10, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    if-eqz v13, :cond_29

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Lcom/sec/android/gallery3d/app/ActivityState;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v13

    goto/16 :goto_0

    :cond_29
    instance-of v13, v10, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v13, :cond_2a

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isFastOptionViewFocused()Z

    move-result v13

    if-eqz v13, :cond_2a

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v13

    goto/16 :goto_0

    :cond_2b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    const/16 v14, 0x13

    if-ne v13, v14, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v12

    if-eqz v12, :cond_1e

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v10

    instance-of v13, v10, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v13, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isActionBarObjectFocused()Z

    move-result v13

    if-nez v13, :cond_2c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v13

    if-eqz v13, :cond_2d

    :cond_2c
    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_2d
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_2e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v13

    if-eqz v13, :cond_2f

    const/16 v13, 0x22

    move/from16 v0, p1

    if-eq v0, v13, :cond_30

    :cond_2f
    sget v13, Lcom/sec/samsung/gallery/lib/factory/KeyEventWrapper;->KEYCODE_VOICE_SEARCH:I

    move/from16 v0, p1

    if-eq v0, v13, :cond_30

    const/16 v13, 0x54

    move/from16 v0, p1

    if-ne v0, v13, :cond_32

    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v10

    if-eqz v10, :cond_31

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Lcom/sec/android/gallery3d/app/ActivityState;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :cond_31
    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_32
    invoke-super/range {p0 .. p2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v13

    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v4, :cond_1

    const-string/jumbo v3, "GalleryActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onKeyUp mGLRootView == null, key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v4, 0x4

    if-ne p1, v4, :cond_8

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsBackPressed:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const-string/jumbo v3, "GalleryActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onKeyUp isBackPressed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsBackPressed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsBackPressed:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getReloadRequiredOnResume()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/sec/android/gallery3d/app/GalleryActivity$2;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/app/GalleryActivity$2;-><init>(Lcom/sec/android/gallery3d/app/GalleryActivity;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/app/ActivityState;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string/jumbo v3, "GalleryActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onKeyUp event.isLongPress() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", event.isCanceled() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isCoverCloseMode()Z

    move-result v4

    if-eqz v4, :cond_7

    move v2, v3

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->onBackPressed()V

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsBackPressed:Z

    move v2, v3

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-eq v2, v3, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isValidDataUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isActionView()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromGalleryWidget(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->startView(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isReceiveEventNotification(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isShareNotification(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isCustomShortcut(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->startView(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "Gallery onPause Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsActive:Z

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mUpdateBackscreenInPauseState:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GalleryActivity"

    const-string/jumbo v1, "onPause() : remove MSG_INVALIDATE_OPTION_MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    sget-object v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->PAUSE:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->postGallery(Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->onPause()V

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/util/LocationUtils;->onDestroy()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "BROADCAST_RECEIVERS"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    sget-object v3, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;->ONPAUSE:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsForcePause:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDeviceCogActivity:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityPause()V

    :cond_3
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "Gallery onPause End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isShowingGooglePermissionDialog()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setShowingGooglePermissionDialog(Z)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    aget v2, p3, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->finish()V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    if-nez v1, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsForceResume:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->startView(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "Gallery Permission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startView skip - requestCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " topState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mIsForceResume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsForceResume:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mSavedInstanceState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6a
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->setStatusBarHeightFromResource(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 8

    const/4 v2, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v0, "VerificationLog"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "Gallery onResume Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsActive:Z

    iput-boolean v7, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mUpdateBackscreenInPauseState:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iput-boolean v7, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mNeedUpdateBackscreenInPauseState:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->addGLIdleListener()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFestival:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsFestival:Z

    iget-wide v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mFestivalStartTime:J

    iget-wide v4, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mFestivalEndTime:J

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setImplFestivalData(ZJJ)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->resume()V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->onResume()V

    :cond_4
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onResume()V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mHardKeyboardHidden:I

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mPaused:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    iput-boolean v7, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mPaused:Z

    :cond_6
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "BROADCAST_RECEIVERS"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v7

    sget-object v3, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;->ONRESUME:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$BroadcastReceiverCmdType;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsForceResume:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mDeviceCogActivity:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityResume()V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setViewSwitchVI(Z)V

    sget-object v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->RESUME:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->postGallery(Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableKeyBoard:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestFocus()Z

    :cond_8
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromCamera()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->unbindQuickViewService()V

    :cond_9
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "Gallery onResume End "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "VerificationLog"

    const-string/jumbo v1, "Executed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->onResume()V

    :cond_a
    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->saveState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "is-showing-google-permission-dialog"

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isShowingGooglePermissionDialog()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "finish_at_securelock"

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mFinishAtSecrureLock:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onViewPause()V
    .locals 6

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onViewPause()V

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mPaused:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->isCoverMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onViewResume()V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mPrevFinishAtSecrureLock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsReCreated:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->enableFinishingAtSecureLock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mPrevFinishAtSecrureLock:Z

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onViewResume()V

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsReCreated:Z

    goto :goto_0
.end method

.method public registerFaceRecommendationObserver(Landroid/net/Uri;)V
    .locals 3

    const-string/jumbo v0, "reload"

    const-string/jumbo v1, "auto recommend start"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/ArcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mAutoRecommendTime:J

    new-instance v0, Lcom/sec/android/gallery3d/app/GalleryActivity$4;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/app/GalleryActivity$4;-><init>(Lcom/sec/android/gallery3d/app/GalleryActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->nFaceRecommendationObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->nFaceRecommendationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setFestivalData(ZJJ)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsFestival:Z

    if-eqz p1, :cond_0

    iput-wide p2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mFestivalStartTime:J

    iput-wide p4, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mFestivalEndTime:J

    :cond_0
    return-void
.end method

.method updateTabletPickerMode(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0264

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x7f05001d

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->overridePendingTransition(II)V

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->setFinishOnTouchOutside(Z)V

    return-void

    :cond_0
    const/16 v1, 0x50

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    goto :goto_1
.end method
