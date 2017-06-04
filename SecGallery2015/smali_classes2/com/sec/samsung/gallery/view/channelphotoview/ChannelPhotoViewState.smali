.class public Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;
.super Lcom/sec/android/gallery3d/app/ActivityState;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DownloadStateReceiver;,
        Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;,
        Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DataLoaderConfig;,
        Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DynamicScaleAnimConfig;,
        Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;
    }
.end annotation


# static fields
.field private static final ACTION_HIGHLIGHT_VIDEO_NOTIFICATION:Ljava/lang/String; = "com.samsung.gallery.notify"

.field private static final COLCNT_LEVEL_DEFAULT:I

.field private static final COREAPPS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup"

.field private static final DISABLE_ALPHA_VALUE:F = 0.4f

.field private static final EVENT_ID:Ljava/lang/String; = "eventID"

.field private static final EVENT_PHOTO_VIEW_COLCNT:Ljava/lang/String; = "eventphtoViewColCnt"

.field private static final FEATURE_IS_NOS:Z

.field private static final FEATURE_USE_DEVICE_COG:Z

.field private static final FEATURE_USE_SHAREVIA_SHARED_EVENT_CONTENT:Z

.field private static final FeatureAutoPlay:Z

.field private static final FeatureLowStorageMode:Z

.field private static final HIGHLIGHT_VIDEO_START_INTERVAL:J = 0x1f4L

.field private static final INVITE_MAX_RETRY_COUNT:I = 0xa

.field private static final INVITE_PROCESS_DELAY_TIME:I = 0x3e8

.field private static final KEY_VIDEO_CLIP:Ljava/lang/String; = "VIDEO_CLIP_MULTIPIC"

.field private static final MAX_RUNNING_COUNT:I = 0x3

.field private static final MSG_HIGHLIGHT_VIDEO_PLAYICON_REQ:I = 0x6

.field private static final MSG_HIGHLIGHT_VIDEO_START_REQ:I = 0x4

.field private static final MSG_KEEP_GOING_INVITE_PROCESS:I = 0x8

.field private static final MSG_PHOTO_FINISH_STATE:I = 0x1

.field private static final MSG_REMOVE_NOTIFICATION:I = 0x2

.field private static final MSG_START_CHANNEL_COMMENT_ACTIVITY:I = 0x7

.field private static final MSG_UPDATE_ACTIONBAR:I = 0x0

.field private static final MSG_UPDATE_TIME_PERIOD:I = 0x3

.field private static final PREF_STATE_CHANNEL_PHOTO:I = 0x1

.field private static final REQUEST_ADD_CONTENTS:I = 0x205

.field private static final REQUEST_ALBUM_LIST:I = 0xc00

.field public static final REQUEST_CAMERA_LAUNCH_FOR_LIVE_CHANNEL_PICK:I = 0x702

.field private static final REQUEST_CONTACT_SYNC_POPUP:I = 0x703

.field private static final REQUEST_CORE_APPS_AUTH:I = 0x1000

.field private static final REQUEST_MULTI_CONTACT_PICK:I = 0xe00

.field private static final RESET_SHARED_FRIENDSBAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ChannelPhotoViewState"

.field private static final TRANSPARENT_COLOR:I = 0x0

.field private static final UPDATE_LIKE_INFO:I = 0x2

.field private static final UPDATE_TIME:I = 0x0

.field private static final USE_DREAM_LAYOUT:Z

.field private static final USE_GRACE_LAYOUT:Z

.field private static final USE_SCLOUD:Z

.field private static final USE_TIME_CLUSTER_LAYOUT:Z

.field private static final VIDEO_CLIP_MAX_ITEM:I = 0xf


# instance fields
.field private final FEATURE_USE_NEW_MEMBER_LIST_VIEW:Z

.field private final FEATURE_USE_SETTINGS:Z

.field private final FLOATING_BACKGROUND_GRAY:I

.field private final FLOATING_BACKGROUND_NONE:I

.field private final FLOATING_BACKGROUND_WHITE:I

.field private eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

.field private isResumeFromBack:Z

.field private mActionbarStyle:I

.field private mBucketId:I

.field private mCameraBtn:Landroid/widget/ImageButton;

.field private mCancelOperation:Z

.field private mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

.field private mChannelCommentActivityState:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;

.field private mChannelPhotoEventHandle:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

.field private final mChannelPhotoMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private final mChannelPhotoViewExitSelectionMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private mCommentItemForBixby:Lcom/sec/android/gallery3d/data/MediaItem;

.field public mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

.field private mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;

.field private mCurrentBaseMediaSetPath:Ljava/lang/String;

.field private mCurrentLayout:I

.field private mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mCurrentTopSetPath:Ljava/lang/String;

.field mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

.field private mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field private mDatePeriod:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDotIcon:Landroid/widget/ImageView;

.field private mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DownloadStateReceiver;

.field private mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mEnableChangeColor:Z

.field private mFirstMediaCheck:Z

.field private mFloatingBackground:I

.field private mFloatingButtonView:Landroid/view/View;

.field private mFloatingText:Landroid/widget/TextView;

.field private mFloatingTextView:Landroid/view/View;

.field private mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mHighlightVideoNotiReceiver:Landroid/content/BroadcastReceiver;

.field private mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

.field private mIsCollageMode:Z

.field private mIsDoubleLaunchContact:Z

.field private mIsDualLaunchFromDetail:Z

.field private mIsEasyMode:Z

.field private mIsFinishingState:Z

.field private mIsFirstLoadingFinished:Z

.field private mIsFromEventNotificationView:Z

.field private mIsFromReminder:Z

.field private mIsGifMode:Z

.field private mIsHideRemoveMenu:Z

.field private mIsHideSaveMenu:Z

.field private mIsMaxCount:Z

.field private mIsNeedToDownloadEvent:Z

.field private mIsReceivedEventView:Z

.field private mIsSuggestionCardVisible:Z

.field private mLimitGroupDialog:Landroid/app/Dialog;

.field private mLocalPathFileContent:[Ljava/lang/String;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

.field private mMenu:Landroid/view/Menu;

.field private final mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

.field private volatile mNeedIdleProcess:Z

.field private mNeedShowFloatingTextView:Z

.field private mNoItemLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mNoItemView:Landroid/widget/LinearLayout;

.field private mOriginalOverflowBg:Landroid/graphics/drawable/Drawable;

.field private mOverFlowView:Landroid/view/View;

.field private mPhotoIcon:Landroid/widget/ImageView;

.field private mPhotoText:Landroid/widget/TextView;

.field private mPreviousOverFlow:Landroid/view/View;

.field private mPreviousViewMode:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;"
        }
    .end annotation
.end field

.field private final mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

.field private mRegisterDialog:Landroid/app/Dialog;

.field private mRetryCount:I

.field private mRootGroup:Landroid/view/ViewGroup;

.field private mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mShareRetryErrorDialog:Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;

.field private mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

.field private mShowNoItemText:Z

.field private final mShowSharedfriendslistMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private mStoryDetailAlone:Z

.field private mStoryId:I

.field private mThreadHandler:Landroid/os/Handler;

.field private mTotalCnt:I

.field private mUpdatePath:Z

.field private mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;

.field private mUriFileContent:[Landroid/net/Uri;

.field private mVideoIcon:Landroid/widget/ImageView;

.field private mVideoText:Landroid/widget/TextView;

.field private final mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$ChannelViewListener;

.field private phoneNumbers:Ljava/lang/String;

.field private wifiOnlyCheckBox:Landroid/widget/CheckBox;

.field private wifiOnlyTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_IS_NOS:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceEventStoryLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_GRACE_LAYOUT:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelDetailViewLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_GRACE_LAYOUT:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_TIME_CLUSTER_LAYOUT:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_SCLOUD:Z

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    sput v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->COLCNT_LEVEL_DEFAULT:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowStorageMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FeatureLowStorageMode:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_DEVICE_COG:Z

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    sput-boolean v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FeatureAutoPlay:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseShareViaSharedEventContent:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_SHAREVIA_SHARED_EVENT_CONTENT:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_GRACE_LAYOUT:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/ActivityState;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;->IDLE:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelCommentActivityState:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    iput v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentBaseMediaSetPath:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNeedIdleProcess:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNeedShowFloatingTextView:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFromReminder:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryDetailAlone:Z

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mTotalCnt:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUpdatePath:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCancelOperation:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsSuggestionCardVisible:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsDoubleLaunchContact:Z

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPreviousOverFlow:Landroid/view/View;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsHideRemoveMenu:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsReceivedEventView:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsNeedToDownloadEvent:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsHideSaveMenu:Z

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->phoneNumbers:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDatePeriod:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isResumeFromBack:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewEventMemberListView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_NEW_MEMBER_LIST_VIEW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_SETTINGS:Z

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FLOATING_BACKGROUND_NONE:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FLOATING_BACKGROUND_WHITE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FLOATING_BACKGROUND_GRAY:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingBackground:I

    iput v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mBucketId:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFromEventNotificationView:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEnableChangeColor:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFinishingState:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShowNoItemText:Z

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCommentItemForBixby:Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$1;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;

    const-string/jumbo v1, "CHANNEL_PHOTO_VIEW"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$2;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelPhotoMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$3;

    const-string/jumbo v1, "CHANNEL_PHOTO_VIEW_EXIT_SELECTION"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$3;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelPhotoViewExitSelectionMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$4;

    const-string/jumbo v1, "SHARED_FRIENDS_LIST_VIEW"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$4;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShowSharedfriendslistMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$33;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$33;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$ChannelViewListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$34;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$34;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$61;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$61;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoNotiReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeFloatingTextView()V

    return-void
.end method

.method static synthetic access$10000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFinishingState:Z

    return p1
.end method

.method static synthetic access$10202(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentLayout:I

    return p1
.end method

.method static synthetic access$10300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startDetailViewInUIThread(II)V

    return-void
.end method

.method static synthetic access$10800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showFloatingTextView()V

    return-void
.end method

.method static synthetic access$11000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$11600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShrinkOption:I

    return v0
.end method

.method static synthetic access$11700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCancelOperation:Z

    return v0
.end method

.method static synthetic access$11902(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCancelOperation:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->prePenSelectionRemoveItem(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isAvailableCount(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$12802(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFlags:I

    return p1
.end method

.method static synthetic access$12900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->drawHighlightVideoPlayIcon(Z)V

    return-void
.end method

.method static synthetic access$13000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$13100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$13200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$13302(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFlags:I

    return p1
.end method

.method static synthetic access$13400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$13502(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShrinkOption:I

    return p1
.end method

.method static synthetic access$13600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$13700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$13800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$13902(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFlags:I

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startChannelCommentsActivity(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$14000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$14100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setUpBtnColor(F)V

    return-void
.end method

.method static synthetic access$14200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$14400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$14500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$14600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createFailedToUploadDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$14900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->keepGoingInviteProcess()V

    return-void
.end method

.method static synthetic access$15000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createUploadCancelDialog(ZI)V

    return-void
.end method

.method static synthetic access$15100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$15200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$15300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$15400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15402(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$15500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15502(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$15600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15602(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$15700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15702(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$15800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15802(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPhotoIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$15900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15902(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mVideoIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateSelectionMode()V

    return-void
.end method

.method static synthetic access$16000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDotIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$16002(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDotIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$16100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingBackground:I

    return v0
.end method

.method static synthetic access$16102(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingBackground:I

    return p1
.end method

.method static synthetic access$16200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$17000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$17100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateLikeInfo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$17200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getChannelCommentActivityState()Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setChannelCommentsActivityState(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;)V

    return-void
.end method

.method static synthetic access$17400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->handleShowComments(I)V

    return-void
.end method

.method static synthetic access$17500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->handleViewMode(Z)V

    return-void
.end method

.method static synthetic access$17700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setVisibleCameraButton(Z)V

    return-void
.end method

.method static synthetic access$17900()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FeatureAutoPlay:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$18000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isValidHighlightVideo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$18100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isMultiWindow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$18200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->addToSelectionManager(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$18300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/drawer/NavigationSpinner;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    return-object v0
.end method

.method static synthetic access$18400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/drawer/NavigationSpinner;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    return-object v0
.end method

.method static synthetic access$18500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$18600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startDetailView(IIZ)V

    return-void
.end method

.method static synthetic access$18700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$18800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$18900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    return-object v0
.end method

.method static synthetic access$19000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->addSharingMember(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$19100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showNetworkErrorDialog()V

    return-void
.end method

.method static synthetic access$19200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->wifiOnlyCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$19300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->wifiOnlyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$19400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$19500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$19600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$19700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$19800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$19900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setOverFlowColor(F)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-object v0
.end method

.method static synthetic access$20000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$20100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$20300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$20400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$20500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$20600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->pickMultiContact(I)V

    return-void
.end method

.method static synthetic access$20700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$20800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)[Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUriFileContent:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$20900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mLocalPathFileContent:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showAddContentErrorDialog(I)V

    return-void
.end method

.method static synthetic access$21000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$21100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$21200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$21300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I[Landroid/net/Uri;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startSendChannel(I[Landroid/net/Uri;ZZ)V

    return-void
.end method

.method static synthetic access$21400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsEasyMode:Z

    return v0
.end method

.method static synthetic access$21500()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z

    return v0
.end method

.method static synthetic access$21700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$21800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    return-object v0
.end method

.method static synthetic access$21900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectAllPostProcess()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$22000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNeedIdleProcess:Z

    return v0
.end method

.method static synthetic access$22002(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNeedIdleProcess:Z

    return p1
.end method

.method static synthetic access$22100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$22200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$22300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$22400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setAddContactColor(F)V

    return-void
.end method

.method static synthetic access$22500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;FI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V

    return-void
.end method

.method static synthetic access$22600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V

    return-void
.end method

.method static synthetic access$22700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isUnSavedStory()Z

    move-result v0

    return v0
.end method

.method static synthetic access$22800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setActionBarTitleColor(F)V

    return-void
.end method

.method static synthetic access$22900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setSelectionViewColor(F)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$23000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setActionBarBGColor(F)V

    return-void
.end method

.method static synthetic access$23100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$23200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNoItemView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$23202(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNoItemView:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$23300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$23400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$23500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingButtonView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$23600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNoItemLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method static synthetic access$23602(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/view/View$OnLayoutChangeListener;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNoItemLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object p1
.end method

.method static synthetic access$23700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->resetNoItemLayout()V

    return-void
.end method

.method static synthetic access$23800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getTopMarginNoItem(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$23900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShowNoItemText:Z

    return v0
.end method

.method static synthetic access$23902(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShowNoItemText:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$24000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$24100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$24200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$24300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$24400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$24500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNeedShowFloatingTextView:Z

    return v0
.end method

.method static synthetic access$24600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$24700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$24800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$24900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDatePeriod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$25000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$25100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$25200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$25300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mTotalCnt:I

    return v0
.end method

.method static synthetic access$25302(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mTotalCnt:I

    return p1
.end method

.method static synthetic access$25400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$25500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$25600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_NEW_MEMBER_LIST_VIEW:Z

    return v0
.end method

.method static synthetic access$25700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    return-object v0
.end method

.method static synthetic access$25800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$25900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$26000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$26100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateTime()V

    return-void
.end method

.method static synthetic access$26200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$26300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$26400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShareRetryErrorDialog:Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;

    return-object v0
.end method

.method static synthetic access$26402(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;)Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShareRetryErrorDialog:Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;

    return-object p1
.end method

.method static synthetic access$26500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$26600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$26700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$26800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lorg/puremvc/java/multicore/patterns/facade/Facade;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    return-object v0
.end method

.method static synthetic access$26900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/GalleryAppImpl;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    return-object v0
.end method

.method static synthetic access$27000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$27100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createFailDialog(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$27200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$27300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$27400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$27500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$27600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->resetNoItemLayout(Z)V

    return-void
.end method

.method static synthetic access$27700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$27800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$27900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    return-object v0
.end method

.method static synthetic access$28000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$28100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$28200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$28300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$28400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$28500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$28600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$28700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showShareEventDialog()V

    return-void
.end method

.method static synthetic access$28800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$28900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$29000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$29100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$29200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$29300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->resumeEventSharing()V

    return-void
.end method

.method static synthetic access$29400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$29500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$29600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$29700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$29800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$29900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$30000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->cancelEventSharing(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic access$30100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$30200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$30300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$30400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$30500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$30600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$30702(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsDoubleLaunchContact:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateSuggestedItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I[Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startSendChannel(I[Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->exitSelectionMode()V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkNeedShowSharedFriendsBar()V

    return-void
.end method

.method static synthetic access$3800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->resetSharedFriendsBar()V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEnableChangeColor:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showMemberListView(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    return-void
.end method

.method static synthetic access$5000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->stopSharingChannel()V

    return-void
.end method

.method static synthetic access$5200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->postFinishPhotoViewState()V

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->initNoItemView()V

    return-void
.end method

.method static synthetic access$5502(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsHideRemoveMenu:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeNoItemView()V

    return-void
.end method

.method static synthetic access$5700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsReceivedEventView:Z

    return v0
.end method

.method static synthetic access$5800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->initNoItemActionBarTheme()V

    return-void
.end method

.method static synthetic access$5900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeNotificationOnNotiBar()V

    return-void
.end method

.method static synthetic access$6000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsNeedToDownloadEvent:Z

    return v0
.end method

.method static synthetic access$6002(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsNeedToDownloadEvent:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->downloadEvent()V

    return-void
.end method

.method static synthetic access$6200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkMediaAvailability()V

    return-void
.end method

.method static synthetic access$6300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;)Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->postUpdateCountOnActionBar()V

    return-void
.end method

.method static synthetic access$6600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getItemIndexFromDualScreenFocusPath()I

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFirstLoadingFinished:Z

    return v0
.end method

.method static synthetic access$6902(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFirstLoadingFinished:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setDatePeriod()V

    return-void
.end method

.method static synthetic access$7000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsDualLaunchFromDetail:Z

    return v0
.end method

.method static synthetic access$7002(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsDualLaunchFromDetail:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startDetailViewInUIThread(IIZ)V

    return-void
.end method

.method static synthetic access$7200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkChannelTime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getFileIdFromItemCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCommentItemForBixby:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$7602(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCommentItemForBixby:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object p1
.end method

.method static synthetic access$7700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->likeItem(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_GRACE_LAYOUT:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;ILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->unlikeItem(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setItemCount()V

    return-void
.end method

.method static synthetic access$9000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startHandlerThread()V

    return-void
.end method

.method static synthetic access$9200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectItem(II)V

    return-void
.end method

.method static synthetic access$9300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectAlbum(I)V

    return-void
.end method

.method static synthetic access$9400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->enterSelectionMode()V

    return-void
.end method

.method static synthetic access$9900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private addGLIdleListener()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "ON_GL_IDLE_TIMER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->ADD_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$51;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$51;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addItemToTempMap(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            "Ljava/util/Map",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSharingMember(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->phoneNumbers:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->isCheckAddMember(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->processPickContactResult(Landroid/content/Intent;Z)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->resetSharedFriendsBar()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createNlgFromContactPicker(Z)V

    :cond_2
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_NEW_MEMBER_LIST_VIEW:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->isSharedListEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->reloadList()V

    :cond_3
    return-void

    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->processPickContactResult(Landroid/content/Intent;Z)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->phoneNumbers:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createChannelContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private addToSelectionManager(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 8

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a040f

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isAvailableCount(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "VIDEO_CLIP_MULTIPIC"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showSelectWarningForVideoClip()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showSelectWarningForGIF(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showSelectWarningForCollage(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a040e

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_0
.end method

.method private calcVisibleItemCount(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)I
    .locals 7

    iget v6, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mActiveStart:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v4

    iget v6, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mActiveStart:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v5

    iget v6, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mActiveEnd:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    iget v6, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mActiveEnd:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    if-ne v4, v1, :cond_1

    sub-int v0, v2, v5

    :cond_0
    return v0

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v6, v4}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getCount(I)I

    move-result v6

    sub-int/2addr v6, v5

    add-int v0, v6, v2

    add-int/lit8 v3, v4, 0x1

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v6, v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getCount(I)I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private cancelEventSharing(Landroid/content/DialogInterface;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "3087"

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->setOnUploading(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->resetSharedFriendsBar()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->stopShareProgress(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    const-string/jumbo v4, "is_shared"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v5, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    const-string/jumbo v4, "ugci"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->hostDeleteGroup(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->cancelRetry(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private cancelInviteProcess()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->closeProgressDialog()V

    :cond_0
    return-void
.end method

.method private checkChannelTime()Z
    .locals 10

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getStartTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getEndTime()J

    move-result-wide v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelAllInfo(Landroid/content/Context;I)Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getStartTime()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getEndTime()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getStartTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setStartTime(J)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getEndTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setEndTime(J)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private checkContentTypeDoComment(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCommentItemForBixby:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private checkEnableAnimateCollage(I)Z
    .locals 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v6

    sget v10, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CREATE_ANIMATE:I

    if-ne p1, v10, :cond_0

    move v1, v9

    :goto_0
    if-eqz v1, :cond_1

    sget v3, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    :goto_1
    if-eqz v1, :cond_2

    const-string/jumbo v7, "CrossPhotoEditorAnimationEditor"

    :goto_2
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v5, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v9, "StoryDetailSelectedView"

    invoke-direct {v5, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "ShareItem"

    const-string/jumbo v10, "Included"

    const-string/jumbo v11, "yes"

    invoke-virtual {v5, v9, v10, v11}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v10, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v9, v7, v10, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_3
    return v8

    :cond_0
    move v1, v8

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_1

    :cond_2
    const-string/jumbo v7, "CrossPhotoEditorCollageEditor"

    goto :goto_2

    :cond_3
    if-le v6, v3, :cond_4

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v10, 0x7f0a07af

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v10, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v9, v7, v10, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v6, :cond_7

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v10

    if-nez v10, :cond_5

    instance-of v10, v2, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v10, :cond_5

    instance-of v10, v2, Lcom/sec/android/gallery3d/data/UnionVideo;

    if-nez v10, :cond_5

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v10, 0x7f0a07b0

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v10, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v9, v7, v10, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    move v8, v9

    goto :goto_3
.end method

.method private checkEventSharingSetting()V
    .locals 12

    const/4 v9, 0x1

    const/4 v11, 0x0

    const-string/jumbo v6, "ChannelPhotoViewState"

    const-string/jumbo v7, "checkEventSharingSetting"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v5, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkRequiredPermissions([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x74

    invoke-direct {p0, v5, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showPermissionRequestDialog([Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v7, "sharing_setting_on"

    invoke-static {v6, v7, v11}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showShareEventDialog()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkGroupServerPolicy()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    const-string/jumbo v8, "max_member"

    invoke-static {v6, v7, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_3
    const/4 v2, 0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelSharedStatus()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getContactCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    add-int/2addr v2, v6

    :cond_4
    if-lt v2, v0, :cond_6

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a0074

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a0075

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a0474

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a0475

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsDoubleLaunchContact:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsDoubleLaunchContact:Z

    :cond_7
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v7, "CrossContactsMultiPick"

    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v6, v7, v8}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    :cond_8
    sub-int v6, v0, v2

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->pickMultiContact(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRegisterDialog:Landroid/app/Dialog;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRegisterDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_a
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v7, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    const/16 v7, 0x70

    invoke-direct {p0, v6, v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showPermissionRequestDialog([Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendNlgForPermission(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_b
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingAuth(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string/jumbo v6, "ChannelPhotoViewState"

    const-string/jumbo v7, "isEventSharingAuth : true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_SETTINGS:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a0164

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a0018

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createRegisterDialog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a0796

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v7, "CrossContactsMultiPick"

    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v6, v7, v8, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a0163

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_d
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isCoreAppsInstalled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isCoreAppsSupportVersion(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a0795

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v7, "CrossContactsMultiPick"

    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v6, v7, v8, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_e
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->requestCoreAppsAuth()V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v6, "ChannelPhotoViewState"

    const-string/jumbo v7, "coreApps is not installed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private checkGroupServerPolicy()Z
    .locals 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_day"

    invoke-static {v7, v8, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_day"

    invoke-static {v7, v8, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_count"

    invoke-static {v7, v8, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->resetFileCountQuota(Landroid/content/Context;)V

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_count"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "max_member_per_day"

    const/16 v9, 0xc8

    invoke-static {v7, v8, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-lt v2, v0, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a0474

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f0a0301

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v5

    invoke-virtual {v8, v9, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v7, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v5

    :cond_1
    move v5, v6

    goto :goto_0
.end method

.method private checkInvalidNumber([Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    array-length v4, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, p1, v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5, v2}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNormalizedNumberByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private checkMediaAvailability()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFirstMediaCheck:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->removeNoItemLayout(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0, v3, v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setMode(IILjava/lang/Object;)V

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFirstMediaCheck:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0, v3, v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setMode(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method private checkNeedShowHighlightVideo()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isNeedShowHighlightVideo()Z

    move-result v0

    const-string/jumbo v1, "ChannelPhotoViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkNeedShowHighlightVideo hasHighLightVideo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setBucketId(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createHighlightVideo()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->registerHighlightVideoReceiver()V

    return-void
.end method

.method private checkNeedShowSharedFriendsBar()V
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    const-string/jumbo v4, "is_shared"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mNeedShowSharedFriendsBar:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkPickMaxCount()Ljava/lang/Boolean;
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "pick-max-item"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    sub-int v4, v2, v0

    if-nez v4, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showMaximumSelectionNumberExceeded(I)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_0
    return-object v3
.end method

.method private checkRequiredPermissions([Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkVideoClipMaxCount()Ljava/lang/Boolean;
    .locals 6

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "VIDEO_CLIP_MULTIPIC"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    rsub-int/lit8 v4, v0, 0xf

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showExceedMaxItemsVideoEdit()V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method private closeProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    :cond_0
    return-void
.end method

.method private createDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a02f4

    new-instance v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$65;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$65;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mLimitGroupDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mLimitGroupDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createFailDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "RESPONSE_DATA"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const v3, 0x7f0a0186

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a0376

    new-instance v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$63;

    invoke-direct {v4, p0, v2, p2, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$63;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;ILandroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a0080

    new-instance v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$64;

    invoke-direct {v4, p0, v2, p2, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$64;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;ILandroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createFailedToUploadDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const v4, 0x7f0a02f4

    const v3, 0x7f0a0095

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$71;

    invoke-direct {v2, p0, p3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$71;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$72;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$72;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_2
    const v2, 0x7f0a0376

    new-instance v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$73;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$73;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0080

    new-instance v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$74;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$74;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$75;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private createHighlightVideo()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setHasHighlightVideo(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setVirtualView(Lcom/sec/android/gallery3d/ui/VirtualView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$ChannelViewListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$ChannelViewListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setHasHighlightVideo(Z)V

    return-void
.end method

.method private createNlgFromContactPicker(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a0793

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "AddStoryMember"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mResult:Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v1, "StoryDetailView"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "EnhancedFeatures"

    const-string/jumbo v2, "NotSignIn"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0
.end method

.method private createRegisterDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a02f4

    new-instance v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$66;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$66;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0080

    new-instance v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$67;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$67;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRegisterDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRegisterDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createUploadCancelDialog(ZI)V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a02f4

    new-instance v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$68;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a0080

    new-instance v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$69;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$69;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$70;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$70;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private downloadEvent()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$60;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$60;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private drawHighlightVideoPlayIcon(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->updateHighLightVideoObjectVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setHasHighlightVideo(Z)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FeatureAutoPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->updateHVPlayIcon(Z)V

    goto :goto_0
.end method

.method private drawLiveChannelCameraButton()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a1

    const/4 v0, 0x0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingButtonView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRootGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1201b6

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCameraBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCameraBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCameraBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$62;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$62;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private enterSelectionMode()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setGifSelectMode(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setCollageSelectMode(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isUnSavedStory()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionBarStyle()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->closeDropDownPopup()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v5, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setMode(IILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->refreshSelectionBarState(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->logDCEnterSelectionMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0, v5, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectItem(II)V

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$35;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$35;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionBarStyle()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_0
.end method

.method private exitSelectionMode()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->logDCExitSelectionMode(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    const-string/jumbo v0, "ChannelPhotoViewState"

    const-string/jumbo v1, "exitSelectionMode.setAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isUnSavedStory()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionBarStyle()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionBarStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshActionBarTheme(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v4, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->refreshSelectionBarState(Z)V

    :cond_1
    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setGifMode(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCollageMode(Z)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->resetDCShareParam()V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$36;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$36;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionBarStyle()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_0
.end method

.method private finishCurrentViewState()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-ne p0, v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPreviousViewMode:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEnableChangeColor:Z

    :cond_0
    return-void
.end method

.method private getAcionBarBackground(I)Landroid/widget/LinearLayout;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1200b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method private getActionBarBgRes()I
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f020049

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020046

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f02004a

    goto :goto_0

    :cond_2
    const v0, 0x7f020048

    goto :goto_0
.end method

.method private getActionBarImageViewLayout()Landroid/widget/LinearLayout;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMenu:Landroid/view/Menu;

    const v3, 0x7f1202cd

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f120160

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method private getActionbarImageMenu()Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMenu:Landroid/view/Menu;

    const v3, 0x7f1202cd

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private getActionbarOverFlow()Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "action_bar"

    const-string/jumbo v6, "id"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v3, "ChannelPhotoViewState"

    const-string/jumbo v4, "Unable to change actionbar overflow button color, actionbar view = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a0266

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-nez v3, :cond_2

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mOverFlowView:Landroid/view/View;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isUnSavedStory()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousOverflowView()Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method private getActionbarTextMenu(I)Landroid/widget/TextView;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1200b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method private getActionbarUpButton()Landroid/widget/ImageButton;
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "action_bar"

    const-string/jumbo v9, "id"

    const-string/jumbo v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a02b2

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6, v11}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/ImageButton;

    if-eqz v6, :cond_3

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    :cond_0
    :goto_0
    if-nez v5, :cond_2

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFirstLoadingFinished:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v7, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v8, v11}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    invoke-virtual {p0, v11}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshActionBarTheme(I)V

    :cond_1
    const-string/jumbo v6, "ChannelPhotoViewState"

    const-string/jumbo v7, "refreshActionBarTheme : navigate up button cannot find."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v5

    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v6, v2, Landroid/widget/ImageButton;

    if-eqz v6, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getChannelCommentActivityState()Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelCommentActivityState:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;

    return-object v0
.end method

.method private getCommentMediaItemForBixby(I)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    invoke-static {p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isLatest(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method private getDefaultPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_TIME_CLUSTER_LAYOUT:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getTopSetPathByFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentBaseMediaSetPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private getEasySignUpAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFileIdFromItemCode(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getMediaItemForCommentView(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getCMHFileId()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getItemIndexFromDualScreenFocusPath()I
    .locals 4

    sget-object v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    sget-object v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_1

    const-string/jumbo v1, "ChannelPhotoViewState"

    const-string/jumbo v2, "refreshDualScreenFocus item null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ChannelPhotoViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshDualScreenFocus path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v1

    goto :goto_0
.end method

.method private getLayoutLevel()I
    .locals 4

    const-string/jumbo v1, "eventphtoViewColCnt"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->COLCNT_LEVEL_DEFAULT:I

    invoke-static {v2, v1, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getMediaItemForCommentView(I)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCommentItemForBixby:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCommentItemForBixby:Lcom/sec/android/gallery3d/data/MediaItem;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getMediaItemFromItemCode(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    goto :goto_0
.end method

.method private getMediaItemFromItemCode(I)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 4

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    return-object v2
.end method

.method private getMediaItemFromItemCodeForBixby(I)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 5

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method private getMiddleColor(FII)I
    .locals 14

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->red(I)I

    move-result v11

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v12, v4

    sub-int v13, v4, v8

    int-to-float v13, v13

    mul-float/2addr v13, p1

    sub-float/2addr v12, v13

    float-to-int v0, v12

    int-to-float v12, v7

    sub-int v13, v7, v11

    int-to-float v13, v13

    mul-float/2addr v13, p1

    sub-float/2addr v12, v13

    float-to-int v3, v12

    int-to-float v12, v6

    sub-int v13, v6, v10

    int-to-float v13, v13

    mul-float/2addr v13, p1

    sub-float/2addr v12, v13

    float-to-int v2, v12

    int-to-float v12, v5

    sub-int v13, v5, v9

    int-to-float v13, v13

    mul-float/2addr v13, p1

    sub-float/2addr v12, v13

    float-to-int v1, v12

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    return v12
.end method

.method private getPhoneNumbersByDataID(Ljava/lang/String;Z)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, ";"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    new-array v3, v4, [Landroid/net/Uri;

    const/4 v1, 0x0

    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_3

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    aget-object v5, v2, v1

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move-object v0, p1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-direct {p0, v4, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startAddMembers(I[Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v3, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startSendChannel(I[Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private getTopMarginNoItem(I)I
    .locals 7

    const v5, 0x7f0b02b4

    const v6, 0x7f0b0086

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v1

    sget-boolean v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_GRACE_LAYOUT:Z

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isSharedWaitingView()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b07f7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int v2, v4, v5

    :cond_0
    :goto_1
    add-int v4, p1, v0

    add-int v3, v4, v2

    return v3

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b006d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_2
    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b006e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isSharedProgressView()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1
.end method

.method private getTopSetPathByFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mData:Landroid/os/Bundle;

    const-string/jumbo v4, "KEY_MEDIA_ITEM_PATH"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/high16 v2, 0x400000

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setCurrentClusterType(I)V

    return-object v1

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private handleAddContacts()V
    .locals 12

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->getContactSyncAgreement(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.coreapps.easysignup.ACTION_CONTACT_SYNC_AGREEMENT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "extra_service_on"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v7, 0x703

    invoke-virtual {v6, v3, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v6, "ChannelPhotoViewState"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v7, "max_channel_number"

    const/16 v8, 0xc8

    invoke-static {v6, v7, v8}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getSharedChannelCount(Landroid/content/Context;)I

    move-result v6

    if-lt v6, v0, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mLimitGroupDialog:Landroid/app/Dialog;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mLimitGroupDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v7, "GRMX"

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a0018

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a0015

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getCountRunningStateWithId()I

    move-result v5

    if-lt v5, v10, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a007b

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a0180

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkEventSharingSetting()V

    goto :goto_0
.end method

.method private handleAddContents(I)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getAllCount()I

    move-result v7

    const/16 v10, 0x1f4

    sget-object v17, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    move/from16 v18, v0

    const-string/jumbo v19, "max_number_file"

    invoke-static/range {v17 .. v19}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_0

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :cond_0
    if-gtz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    const-string/jumbo v18, "max_channel_files"

    const/16 v19, 0x1f4

    invoke-static/range {v17 .. v19}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    :cond_1
    const-string/jumbo v17, "ChannelPhotoViewState"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "EVENT_ADD_CONTENTS : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " / "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v7, v10, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showAddContentErrorDialog(I)V

    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelSharedStatus()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v17

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_3
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    const-string/jumbo v18, "event_share_one_day_limit_invite_day"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    if-eq v8, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    const-string/jumbo v18, "event_share_one_day_limit_invite_day"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    const-string/jumbo v18, "event_share_one_day_limit_invite_count"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->resetFileCountQuota(Landroid/content/Context;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    const-string/jumbo v18, "max_files_per_day"

    const/16 v19, 0x7d0

    invoke-static/range {v17 .. v19}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getUploadedFileCount()I

    move-result v13

    if-le v13, v11, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0a0471

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v18, v0

    const v19, 0x7f0a08b9

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getCountRunningStateWithId()I

    move-result v15

    const/16 v17, 0x3

    move/from16 v0, v17

    if-lt v15, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0a007b

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v18, v0

    const v19, 0x7f0a0180

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    const-class v18, Lcom/sec/android/gallery3d/app/GalleryActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v17, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v17

    if-eqz v17, :cond_a

    const-string/jumbo v17, "com.samsung.intent.action.MULTIPLE_PICK"

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v17, "*/*"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v17, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_SCLOUD:Z

    if-nez v17, :cond_7

    const-string/jumbo v17, "android.intent.extra.LOCAL_ONLY"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    const-string/jumbo v17, "pick-from-gallery"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v17, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v17, :cond_8

    sget-object v17, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/core/TabTagType;->from(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v17

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    const-string/jumbo v17, "dc_pick_from_gallery_time"

    :goto_2
    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    sget-object v17, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string/jumbo v17, "is_pick-limited-file-size"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    move/from16 v18, v0

    const-wide/16 v20, 0x1f4

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelMaxFileSize(Landroid/content/Context;IJ)J

    move-result-wide v4

    const-string/jumbo v17, "pick-limited-file-size"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_9
    const-string/jumbo v17, "pick-max-item"

    sub-int v18, v10, v7

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v17, "is-pick-to-add-channel-view"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v17

    move/from16 v0, v17

    invoke-static {v14, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x205

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v17, "android.intent.action.MULTIPLE_PICK"

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v17, "dc_pick_from_gallery_album"

    goto :goto_2
.end method

.method private handleAddMember(Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "result"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getPhoneNumbersFromContacts(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->phoneNumbers:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->phoneNumbers:Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_day"

    invoke-static {v7, v8, v10}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-eq v2, v6, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_day"

    invoke-static {v7, v8, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_count"

    invoke-static {v7, v8, v10}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->resetFileCountQuota(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->resetCapacityQuota(Landroid/content/Context;)V

    :cond_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_count"

    invoke-static {v7, v8, v10}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->phoneNumbers:Ljava/lang/String;

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    add-int/2addr v1, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "event_share_one_day_limit_invite_count"

    invoke-static {v7, v8, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->phoneNumbers:Ljava/lang/String;

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkInvalidNumber([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showInvalidNumberDialog(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->phoneNumbers:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->isCheckAddMember(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :cond_4
    if-nez v4, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a046e

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->phoneNumbers:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getDuidNumbers(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p0, v5, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showSMSMemberDialog([Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->addSharingMember(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private handleDCPlayHighlightVideo()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->isValidHighlightVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startHLVideo(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a07ad

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "CrossStoryVideoEditorPlayStoryVideo"

    invoke-static {v2, v3, v1, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a07ac

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->handleDCStoryVideoPlay()V

    goto :goto_1
.end method

.method private handleDCShowRenamePopup(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "StoryDetailView"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "RENAME_DC_OPERATION"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private handleLikeOperation(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateLikeInfo(Ljava/lang/String;I)V

    return-void
.end method

.method private handleResultCameraLaunchForLiveChannel(Landroid/content/Intent;I)V
    .locals 10

    const/4 v9, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v7, 0x702

    if-ne p2, v7, :cond_2

    const-string/jumbo v7, "uri-data"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v7, v6, v9}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v7, "ChannelPhotoViewState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cannot find file : path is null : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v7, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-static {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0, v7, v4, v8}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->addContentstoChannel(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/ChannelAlbum;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    const/4 v8, 0x0

    invoke-direct {p0, v7, v9, v8}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startSendChannel(I[Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private handleShowComments(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;->COMMENT_COUNT:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getChannelCommentActivityState()Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;->IDLE:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;->START_REQUESTED:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setChannelCommentsActivityState(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3033"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleViewMode(Z)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getPosCtrlCurrent()I

    move-result v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2, v4, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->prepareScale(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const v3, 0x3e4ccccc    # 0.19999999f

    invoke-virtual {v2, v6, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->animateScale(FFZ)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->updateTimelineGridTextColor()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a07c5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "StoryViewMode"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_2
    if-eq v0, v5, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2, v4, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->prepareScale(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const v3, 0x40266666    # 2.6f

    invoke-virtual {v2, v6, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->animateScale(FFZ)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->updateTimelineGridTextColor()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a07c6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "StoryViewMode"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0
.end method

.method private initChannelPhotoViewEventHandler()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelPhotoEventHandle:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    return-void
.end method

.method private initNoItemActionBarTheme()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$53;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$53;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initNoItemVI()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShowNoItemText:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initNoItemView()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->initNoItemVI()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$54;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private isAvailableCount(I)Z
    .locals 6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const-string/jumbo v4, "pick-max-item"

    const/16 v5, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    if-le p1, v2, :cond_2

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isMultiSelectMode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    if-nez v4, :cond_2

    :cond_1
    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "pick-min-item"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ge p1, v2, :cond_3

    if-le v2, v3, :cond_3

    const/4 v1, 0x0

    :cond_3
    move v3, v1

    goto :goto_0
.end method

.method private isEnabledMenuInLowStorage(I)Z
    .locals 1

    const v0, 0x7f120292

    if-eq p1, v0, :cond_0

    const v0, 0x7f120290

    if-eq p1, v0, :cond_0

    const v0, 0x7f1202c2

    if-eq p1, v0, :cond_0

    const v0, 0x7f120275

    if-eq p1, v0, :cond_0

    const v0, 0x7f120276

    if-eq p1, v0, :cond_0

    const v0, 0x7f120299

    if-eq p1, v0, :cond_0

    const v0, 0x7f1202cd

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGridViewMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getPosCtrlCurrent()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMultiWindow()Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedShowHighlightVideo()Z
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->hasHLVideo()Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    const-string/jumbo v4, "highlight_video"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUnSavedStory()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFromEventNotificationView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryDetailAlone:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidHighlightVideo()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->isValidHighlightVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidSelection()Z
    .locals 8

    const/16 v7, 0x1f4

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a02e2

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-le v1, v7, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0253

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepGoingInviteProcess()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingAuth(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->closeProgressDialog()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkEventSharingSetting()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRetryCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRetryCount:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showProgressDialog()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRetryCount:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->closeProgressDialog()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRetryCount:I

    goto :goto_0
.end method

.method private likeItem(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 17

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    sget-object v4, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->LIKE_BY_ME:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v10

    const/4 v13, 0x2

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v12, p3

    invoke-static/range {v2 .. v13}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->likeChannelItem(Landroid/content/Context;IILjava/lang/String;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelItemFilePathFromFileId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v15

    const/4 v2, -0x1

    if-eq v14, v2, :cond_0

    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v3, v16, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->ADD_LIKE:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    aput-object v3, v16, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v16, v2

    const/4 v2, 0x3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v16, v2

    const/4 v2, 0x4

    aput-object p2, v16, v2

    const/4 v2, 0x5

    aput-object v15, v16, v2

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v16, v2

    const-string/jumbo v2, "ChannelPhotoViewState"

    const-string/jumbo v3, "Send Notification [ADD_LIKE]"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "UPDATE_SOCIAL_INFO"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private needToDownloadSharedEventItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v2, p1

    check-cast v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getOriginalFileId(Z)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v5, v1}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->checkFileIdAvailability(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private pickMultiContact(I)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$76;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$76;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "START_MULTI_CONTACT_PICK"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private postFinishPhotoViewState()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private postRemoveNotification()V
    .locals 4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private postUpdateCountOnActionBar()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private prePenSelectionRemoveItem(II)Z
    .locals 10

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v4, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a040f

    move-object v4, v0

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    invoke-virtual {v3, v1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v2, 0x1

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isAvailableCount(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    move v4, v2

    goto :goto_0
.end method

.method private processPickContactResult(Landroid/content/Intent;Z)V
    .locals 27

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    if-eqz v24, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    const-string/jumbo v25, "result"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v24, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/4 v7, 0x0

    :goto_0
    move/from16 v0, v19

    if-ge v7, v0, :cond_b

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string/jumbo v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getEasySignUpAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNormalizedNumberByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v24, 0x1

    aget-object v17, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNormalizedNumberByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    if-eqz v13, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_2

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget-object v14, v22, v24

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ";"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string/jumbo v24, "ChannelPhotoViewState"

    const-string/jumbo v25, "DataID of Contact is not exist!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v21

    const/4 v7, 0x0

    :goto_2
    move/from16 v0, v21

    if-ge v7, v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    instance-of v0, v15, Ljava/util/ArrayList;

    move/from16 v24, v0

    if-eqz v24, :cond_5

    move-object v12, v15

    check-cast v12, Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_4
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/net/Uri;

    move/from16 v25, v0

    if-eqz v25, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "content://com.android.contacts"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_4

    check-cast v16, Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->isExistedContactWithLookUpUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v24

    if-nez v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v24

    const-string/jumbo v25, "invalid contacts"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_4
    return-void

    :cond_8
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_9
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->isExistedContactWithLookUpUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v25

    if-eqz v25, :cond_9

    const/4 v8, 0x1

    :cond_a
    if-nez v8, :cond_7

    const-string/jumbo v24, "ChannelPhotoViewState"

    const-string/jumbo v25, "none of selected contacts are valid, exiting share"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v24

    const-string/jumbo v25, "invalid contacts"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_b
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getPhoneNumbersByDataID(Ljava/lang/String;Z)V

    goto :goto_4
.end method

.method private refreshDualScreenFocus()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getItemIndexFromDualScreenFocusPath()I

    move-result v0

    const-string/jumbo v1, "ChannelPhotoViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshDualScreenFocus :: focus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    sget-object v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->setDualScreenFocusPath(Lcom/sec/android/gallery3d/data/Path;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->updateDualScreenFocus(I)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "ChannelPhotoViewState"

    const-string/jumbo v2, "refreshDualScreenFocus :: mMediaItemAdapter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "ChannelPhotoViewState"

    const-string/jumbo v2, "refreshDualScreenFocus :: mComposeView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private registerHighlightVideoReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.gallery.notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoNotiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeFloatingTextView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$59;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$59;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeNoItemVI()V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getNoItemVI()Lcom/sec/samsung/gallery/NoItemVI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/NoItemVI;->hideNoItemVI()V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/NoItemVI;->getNoItemView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNoItemLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method private removeNoItemView()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeNoItemVI()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$57;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$57;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private removeNotificationOnNotiBar()V
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v1

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getStateWithId(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private requestCoreAppsAuth()V
    .locals 4

    const-string/jumbo v2, "ChannelPhotoViewState"

    const-string/jumbo v3, "requestCoreAppsAuth"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.coreapps.easysignup.ACTION_SDK_REQ_AUTH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "service_id"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->getServiceId(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "AuthRequestFrom"

    const-string/jumbo v3, "event sharing"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v3, 0x1000

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ChannelPhotoViewState"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetNoItemLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->resetNoItemLayout(Z)V

    return-void
.end method

.method private resetNoItemLayout(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$56;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$56;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetSharedFriendsBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$9;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$9;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resumeEventSharing()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v0

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getStateWithId(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->WAITING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/EventState$State;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->cancelWifiWait(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->resumeSendingEvent(Landroid/content/Context;I)V

    const-string/jumbo v2, "ChannelPhotoViewState"

    const-string/jumbo v3, "resume SendingEvent..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private selectAlbum(I)V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v2, p1, v5}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectAlbumPostProcess()V

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForSelectContentType(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkPickMaxCount()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ChannelPhotoViewState"

    const-string/jumbo v3, "Limit Max Pick count"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkVideoClipMaxCount()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "ChannelPhotoViewState"

    const-string/jumbo v3, "Limit Video Clip Max Pick count"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v2, p1, v5}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectAlbumPostProcess()V

    goto :goto_1
.end method

.method private selectAlbumPostProcess()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isAvailableCount(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->refreshCheckState()V

    return-void
.end method

.method private selectAll()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkPickMaxCount()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ChannelPhotoViewState"

    const-string/jumbo v3, "Limit Max Pick count"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendBixbyResponseForSelectAll(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkVideoClipMaxCount()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ChannelPhotoViewState"

    const-string/jumbo v3, "Limit Video Clip Max Pick count"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendBixbyResponseForSelectAll(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    if-eqz v2, :cond_3

    sget v0, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-direct {p0, v1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectAllPostProcess()V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    if-eqz v2, :cond_4

    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectAllPostProcess()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectAllPostProcess()V

    goto :goto_0
.end method

.method private selectAllPostProcess()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isAvailableCount(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->refreshCheckState()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendBixbyResponseForSelectAll(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    return-void
.end method

.method private selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 22

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    const/16 v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    const/4 v3, 0x1

    :goto_0
    sget-boolean v17, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_TIME_CLUSTER_LAYOUT:Z

    if-eqz v17, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v16

    sub-int v7, p2, v16

    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v2, :cond_0

    if-eqz v3, :cond_5

    if-gtz v7, :cond_5

    :cond_0
    if-eqz v3, :cond_1

    if-gtz v7, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showNotSupportedForSelectAll(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Ljava/util/Map;)V

    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    sget-boolean v17, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_TIME_CLUSTER_LAYOUT:Z

    if-eqz v17, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    :goto_3
    if-nez v10, :cond_8

    :cond_6
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v10, p1

    goto :goto_3

    :cond_8
    sget-boolean v17, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_TIME_CLUSTER_LAYOUT:Z

    if-nez v17, :cond_a

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaSet;->isShared()Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x0

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_9
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v18

    if-nez v18, :cond_9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    const/16 v17, 0x0

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v9

    :cond_b
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v13, 0x1

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v14, :cond_6

    if-eqz v3, :cond_c

    if-gtz v7, :cond_c

    if-lez p2, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showMaxExceededForSelectAll(ZI)V

    goto :goto_4

    :cond_c
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAvailableDrm(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v17

    if-eqz v17, :cond_e

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v17

    if-nez v17, :cond_10

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v17

    if-eqz v17, :cond_10

    :cond_e
    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0a049e

    invoke-static/range {v17 .. v18}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v13, 0x0

    :cond_f
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_10
    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v17

    if-nez v17, :cond_f

    :cond_11
    if-eqz v8, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    and-long v18, v18, v20

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-eqz v17, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v18

    const-wide v20, 0x2000000000L

    and-long v18, v18, v20

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-nez v17, :cond_15

    :cond_13
    instance-of v0, v8, Lcom/sec/android/gallery3d/data/LocalVideo;

    move/from16 v17, v0

    if-nez v17, :cond_14

    instance-of v0, v8, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    move/from16 v17, v0

    if-eqz v17, :cond_f

    :cond_14
    const/4 v4, 0x1

    goto :goto_7

    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8, v15}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->addItemToTempMap(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/Map;)V

    if-eqz v3, :cond_f

    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8, v15}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->addItemToTempMap(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/Map;)V

    goto :goto_7
.end method

.method private selectItem(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectItem(IIZ)V

    return-void
.end method

.method private selectItem(IIZ)V
    .locals 16

    sget-boolean v9, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_TIME_CLUSTER_LAYOUT:Z

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v5, :cond_0

    if-nez v4, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v6

    iget v9, v7, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_5

    const/16 v3, 0x1f4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v9

    if-lt v9, v3, :cond_3

    invoke-virtual {v7, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v9

    if-nez v9, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showMaximumSelectionNumberExceeded(I)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object v9, v4

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v10, v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAvailableDrm(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v4

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v9

    if-nez v9, :cond_5

    move-object v9, v4

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    invoke-virtual {v7, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v9

    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v10, 0x7f0a049e

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v7, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v12, 0x7f0a040f

    move-object v9, v4

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v14

    invoke-virtual {v10, v11, v12, v14, v15}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    invoke-virtual {v7, v5, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isAvailableCount(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    if-nez p3, :cond_6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForSelectContentType(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_6
    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v9, "VIDEO_CLIP_MULTIPIC"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showSelectWarningForVideoClip()Z

    move-result v9

    if-nez v9, :cond_0

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showSelectWarningForGIF(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    if-eqz v9, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showSelectWarningForCollage(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_a
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v12, 0x7f0a040e

    move-object v9, v4

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v14

    invoke-virtual {v10, v11, v12, v14, v15}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    invoke-virtual {v7, v5, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto/16 :goto_2
.end method

.method private selectItemForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)V
    .locals 9

    const/4 v8, 0x0

    sget-boolean v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_TIME_CLUSTER_LAYOUT:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v3, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a040f

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v1, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    :goto_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isAvailableCount(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v8}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "VIDEO_CLIP_MULTIPIC"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showSelectWarningForVideoClip()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    if-eqz v3, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showSelectWarningForGIF(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    if-eqz v3, :cond_6

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showSelectWarningForCollage(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_6
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a040e

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v1, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_2
.end method

.method private setActionBarBGColor(F)V
    .locals 8

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v2, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionBarBgRes()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, p1

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    float-to-double v4, p1

    const-wide v6, 0x3fe6666666666666L    # 0.7

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setElevation(F)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b029d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    goto :goto_1
.end method

.method private setActionBarTitleColor(F)V
    .locals 10

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f100019

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getMiddleColor(FII)I

    move-result v1

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v8

    const/16 v9, 0x12

    invoke-interface {v3, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setAddContactColor(F)V
    .locals 11

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionbarImageMenu()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f10018f

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f100017

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getMiddleColor(FII)I

    move-result v5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionBarImageViewLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v8, 0x0

    cmpl-float v8, p1, v8

    if-nez v8, :cond_3

    const v0, 0x7f020273

    :goto_1
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v8, 0x7f1200c4

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v10, 0x7f0a0459

    invoke-virtual {v9, v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v10, 0x7f0a0405

    invoke-virtual {v9, v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x101045c

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v4, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v4, Landroid/util/TypedValue;->resourceId:I

    goto :goto_1
.end method

.method private setBGColor()V
    .locals 6

    sget-boolean v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f1000ac

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArrayWithLastAlphaValue(I)[F

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getBgColor()[F

    move-result-object v0

    goto :goto_0
.end method

.method private setBucketId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mBucketId:I

    return-void
.end method

.method private setChannelCommentsActivityState(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelCommentActivityState:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;

    return-void
.end method

.method private setDatePeriod()V
    .locals 8

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getStartTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getEndTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkChannelTime()Z

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Ljava/util/Formatter;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getStartTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getEndTime()J

    move-result-wide v4

    const v6, 0x10014

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDatePeriod:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_GRACE_LAYOUT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMediaItemCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setChannelName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDatePeriod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setChannelDatePeriod(Ljava/lang/String;)V

    :cond_1
    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->refreshLayout()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDatePeriod:Ljava/lang/String;

    goto :goto_0
.end method

.method private setFirstLoading(I)V
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v3, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_0

    move v4, v6

    :goto_0
    sget-boolean v8, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_TIME_CLUSTER_LAYOUT:Z

    if-eqz v8, :cond_3

    if-nez p1, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->getGridColumnsCount(Landroid/content/res/Resources;Z)[I

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    aget v0, v1, v7

    :goto_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mUseGroupTitle:Z

    invoke-static {v6, v0, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->getGridRowCount(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)I

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->getGridGap(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)I

    move-result v6

    add-int/lit8 v8, v0, 0x1

    mul-int v2, v6, v8

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayWidth(Z)I

    move-result v8

    sub-int/2addr v8, v2

    div-int/2addr v8, v0

    invoke-virtual {v6, v8, v7}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->setItemWidthForPlayIcon(IZ)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v6, v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->setFirstLoadingValues(II)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    mul-int v7, v5, v0

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->setFirstLoadingCount(I)V

    return-void

    :cond_0
    move v4, v7

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->getGridColumnsCount(Landroid/content/res/Resources;Z)[I

    move-result-object v1

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->getGridColumnsCount(Landroid/content/res/Resources;Z)[I

    move-result-object v1

    if-eqz v1, :cond_4

    aget v0, v1, p1

    :goto_3
    goto :goto_2

    :cond_4
    move v0, v6

    goto :goto_3
.end method

.method private setItemCount()V
    .locals 6

    const-string/jumbo v0, ""

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "ar"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "fa"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getImageCount()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getVideoCount()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4, v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setChannelItemCount(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getImageCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getVideoCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private setLaunchMode()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getResumeStateThroughActivityLifeCycle()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    if-eqz v3, :cond_1

    const-string/jumbo v1, "ChannelPhotoViewState"

    const-string/jumbo v2, "setLaunchMode() called, ActivityResume situation and ActionBarView is ChannelPhotoViewActionBarForNormal. so skip."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShrinkOption:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setBGColor()V

    :cond_0
    return v0

    :cond_1
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_NEW_MEMBER_LIST_VIEW:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->isSharedListEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-direct {v2, v3, v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isUnSavedStory()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShrinkOption:I

    if-eqz v6, :cond_3

    move v1, v2

    :cond_3
    invoke-direct {v4, v5, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_1
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshActionBarTheme(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShrinkOption:I

    if-eqz v6, :cond_5

    move v1, v2

    :cond_5
    invoke-direct {v4, v5, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inCollageSelectionMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inGifSelectionMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isUnSavedStory()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionBarStyle()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEventNotificationEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_2
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshActionBarTheme(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionBarStyle()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_2
.end method

.method private setOverFlowColor(F)V
    .locals 10

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionbarOverFlow()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f10018f

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f100017

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getMiddleColor(FII)I

    move-result v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mOriginalOverflowBg:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFinishingState:Z

    if-nez v7, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mOriginalOverflowBg:Landroid/graphics/drawable/Drawable;

    :cond_1
    instance-of v7, v2, Landroid/widget/TextView;

    if-eqz v7, :cond_3

    new-instance v7, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;

    invoke-direct {v7}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    invoke-interface {v6, v7}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->clearAllTextEffect(Landroid/widget/TextView;)V

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_1
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFinishingState:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mOriginalOverflowBg:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mOriginalOverflowBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    instance-of v7, v2, Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->ApplyShowButtonShapesForGrace:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-boolean v7, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v7, :cond_6

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_5

    const v0, 0x7f02009c

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_5
    const v0, 0x7f02009b

    goto :goto_2

    :cond_6
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_7

    const v0, 0x7f020099

    :goto_3
    goto :goto_2

    :cond_7
    const v0, 0x7f020098

    goto :goto_3

    :cond_8
    cmpl-float v7, p1, v9

    if-nez v7, :cond_9

    const v0, 0x7f020076

    goto :goto_2

    :cond_9
    const v0, 0x7f020077

    goto :goto_2

    :cond_a
    cmpl-float v7, p1, v9

    if-nez v7, :cond_b

    const v0, 0x7f020273

    goto :goto_2

    :cond_b
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x101045c

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v1, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    goto :goto_2
.end method

.method private setSelectionViewColor(F)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v11, 0x7f10018f

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v11, 0x7f100019

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {p0, p1, v7, v9}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getMiddleColor(FII)I

    move-result v4

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v11, 0x7f120075

    invoke-virtual {v10, v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v11, 0x7f120074

    invoke-virtual {v10, v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v11, 0x7f100191

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v11, 0x7f100190

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {p0, p1, v7, v9}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getMiddleColor(FII)I

    move-result v4

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v11, 0x7f120073

    invoke-virtual {v10, v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-nez v10, :cond_0

    new-array v8, v13, [[I

    new-array v10, v12, [I

    aput-object v10, v8, v12

    new-array v2, v13, [I

    aput v4, v2, v12

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const v11, 0x101045c

    invoke-virtual {v10, v11, v3, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v10, 0x0

    cmpl-float v10, p1, v10

    if-nez v10, :cond_4

    const v0, 0x7f0200a6

    :goto_1
    new-instance v10, Landroid/content/res/ColorStateList;

    invoke-direct {v10, v8, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_4
    iget v0, v3, Landroid/util/TypedValue;->resourceId:I

    goto :goto_1
.end method

.method private setShowButtonBackgroundColor(IF)V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->ApplyShowButtonShapesForGrace:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f0202ca

    :goto_1
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_3

    const v0, 0x7f02007a

    goto :goto_1

    :cond_3
    const v0, 0x7f02007b

    goto :goto_1
.end method

.method private setTextMenuColor(FI)V
    .locals 10

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionbarTextMenu(I)Landroid/widget/TextView;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f10018f

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f100017

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {p0, p1, v4, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getMiddleColor(FII)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isEnabledMenuInLowStorage(I)Z

    move-result v7

    if-nez v7, :cond_2

    sget-boolean v7, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FeatureLowStorageMode:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "is_low_storage"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getAcionBarBackground(I)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v7, 0x0

    cmpl-float v7, p1, v7

    if-nez v7, :cond_3

    const v1, 0x7f020273

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x101045c

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v2, Landroid/util/TypedValue;->resourceId:I

    goto :goto_1
.end method

.method private setUpBtnColor(F)V
    .locals 11

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionbarUpButton()Landroid/widget/ImageButton;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f10018f

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f100012

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getMiddleColor(FII)I

    move-result v3

    const/4 v8, 0x0

    cmpl-float v8, p1, v8

    if-nez v8, :cond_2

    const v0, 0x7f020273

    :goto_1
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceNavigateUpUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_3

    instance-of v8, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v8, :cond_1

    move-object v8, v1

    check-cast v8, Landroid/graphics/drawable/LayerDrawable;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v3, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_2
    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x101045c

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v2, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_2
.end method

.method private setVisibleCameraButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCameraBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCameraBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCameraBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private showAddContentErrorDialog(I)V
    .locals 7

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0472

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0471

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a02f4

    new-instance v5, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$46;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$46;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showDeleteDialog()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelSharedStatus()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeleteVI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "DELETE_ANIM_START"

    invoke-virtual {v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->deleteChannel(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_EVENTVIEW:I

    invoke-virtual {v2, v4, v3, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(ZIZ)V

    goto :goto_0
.end method

.method private showExceedMaxItemsVideoEdit()V
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a018d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private showFloatingTextView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$58;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showInvalidNumberDialog(I)V
    .locals 8

    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a02f4

    new-instance v5, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$39;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$39;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a046f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0470

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a029d

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private showMaxExceededForSelectAll(ZI)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0254

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    if-eqz v2, :cond_2

    sget v0, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01e2

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01e1

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private showMaximumSelectionNumberExceeded(I)V
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0254

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private showMemberListView(Z)V
    .locals 11

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v3

    iget v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getStateAndRunningStateWithId(I)Lcom/sec/android/gallery3d/eventshare/EventShareData;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v6, v2, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    if-ne v6, v8, :cond_2

    iget v6, v2, Lcom/sec/android/gallery3d/eventshare/EventShareData;->runningType:I

    if-ne v6, v5, :cond_2

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a007e

    invoke-static {v6, v7, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;II)V

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v6, "Members"

    sget-object v7, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v5, v6, v7}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a007d

    invoke-static {v6, v7, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    :cond_2
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_NEW_MEMBER_LIST_VIEW:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshActionBarTheme(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousActivityState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "KEY_EVENT_VIEW_ALBUM_BUCKET_ID"

    iget v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "is_master"

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getOwner()I

    move-result v7

    if-eq v7, v8, :cond_3

    :goto_2
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    const-class v6, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-virtual {v5, v6, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v7, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v9, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-direct {v7, v8, v9}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshActionBarTheme(I)V

    new-instance v6, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    const-string/jumbo v7, "SHARED_FRIENDS_LIST_VIEW"

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v9, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-direct {v6, v7, v8, v9}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;-><init>(Ljava/lang/String;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    iput-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    invoke-virtual {v6, v5}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->setSharedListEnable(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    invoke-virtual {v6, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->setButtonText(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v6, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setSharedFriendsListViewVisible(Z)V

    :cond_6
    invoke-direct {p0, v10}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setUpBtnColor(F)V

    invoke-direct {p0, v10}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setAddContactColor(F)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionbarUpButton()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_1
.end method

.method private showNetworkErrorDialog()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0095

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showNetworkErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showNetworkErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a02f4

    new-instance v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$45;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$45;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showNotSupportedForSelectAll(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private showPermissionRequestDialog([Ljava/lang/String;I)V
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/DialogVisibility;->SHOW:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "START_PERMISSION_REQUEST_ACTIVITY"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showProgressDialog()V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a0340

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    move v6, v4

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLandroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method

.method private showSMSMemberDialog([Ljava/lang/String;Landroid/content/Intent;)V
    .locals 11

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {v7, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v9, 0x7f040102

    const/4 v7, 0x0

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v1, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v7, 0x7f12024e

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sec/samsung/gallery/lib/factory/HorizontalListViewSmsMemberFactory;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/lib/factory/HorizontalListViewSmsMemberFactory;-><init>()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v3, v7}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSmsMemberInterface;

    new-instance v5, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f0400a2

    invoke-direct {v5, v7, v9}, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;-><init>(Landroid/content/Context;I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b07ef

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-interface {v0, v4, v7, v5, v9}, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSmsMemberInterface;->addView(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/widget/ArrayAdapter;I)V

    array-length v9, p1

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v6, p1, v7

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/adapter/PeopleItemListAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v9, 0x7f0a021d

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v9, 0x7f0a0457

    new-instance v10, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$41;

    invoke-direct {v10, p0, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$41;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/content/Intent;)V

    invoke-virtual {v7, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v9, 0x7f0a0080

    new-instance v10, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$40;

    invoke-direct {v10, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$40;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v7, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v8}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createNlgFromContactPicker(Z)V

    :cond_1
    return-void
.end method

.method private showSelectWarningForCollage(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 8

    const/4 v6, 0x6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-lt v0, v6, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isMultiSelectMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    if-nez v3, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00a7

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    :goto_0
    return v1

    :cond_2
    instance-of v3, p1, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v3, :cond_3

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    if-eqz v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getSupportedOperations()J

    move-result-wide v4

    const-wide v6, 0x2000000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a049e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method private showSelectWarningForGIF(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 10

    const v5, 0x7f0a049e

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    sget v2, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    if-lt v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    if-nez v2, :cond_1

    :cond_0
    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01e3

    new-array v3, v3, [Ljava/lang/Object;

    sget v7, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    :goto_0
    return v2

    :cond_2
    instance-of v2, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v2, :cond_3

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v2, :cond_4

    :cond_3
    move-object v2, p1

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_4
    instance-of v2, p1, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v2, :cond_5

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a004d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getSupportedOperations()J

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_0
.end method

.method private showSelectWarningForVideoClip()Z
    .locals 8

    const/16 v7, 0xf

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-lt v0, v7, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a018d

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isMultiSelectMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private showShareEventDialog()V
    .locals 6

    const v5, 0x7f12023d

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v4, 0x7f0400f6

    const/4 v3, 0x0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0110

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_1
    const v3, 0x7f12023f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->wifiOnlyTextView:Landroid/widget/TextView;

    const v3, 0x7f12023e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->wifiOnlyCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->wifiOnlyCheckBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/EventShareWifiOnlySwitch;->isOn(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->wifiOnlyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->wifiOnlyTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->wifiOnlyCheckBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$42;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$42;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->wifiOnlyCheckBox:Landroid/widget/CheckBox;

    const v4, 0x7f0a04ec

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    :cond_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0458

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a03cd

    new-instance v5, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0080

    new-instance v5, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$43;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$43;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_4
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsVZW:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0112

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

.method private startAddMembers(I[Landroid/net/Uri;)V
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "EventAddMemberCmd"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startChannelCommentsActivity(Landroid/os/Message;)V
    .locals 14

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v12, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;->LAST_COMMENT:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    if-ne v11, v12, :cond_5

    const/4 v7, 0x1

    :goto_0
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v12, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;->LIKE_COUNT:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$TYPE;

    if-ne v11, v12, :cond_6

    const/4 v8, 0x1

    :goto_1
    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v11}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOnCoreApps(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getMediaItemForCommentView(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    const/4 v1, -0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getCMHFileId()I

    move-result v1

    instance-of v11, v4, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v11, :cond_1

    check-cast v4, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getThumbPath()Ljava/lang/String;

    move-result-object v10

    :cond_1
    const/4 v11, -0x1

    if-eq v1, v11, :cond_2

    iget v11, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_8

    :cond_2
    sget-object v11, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;->IDLE:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;

    invoke-direct {p0, v11}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setChannelCommentsActivityState(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;)V

    const-string/jumbo v11, "ChannelPhotoViewState"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fail to start comment. file id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " , mStoryId == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCommentItemForBixby:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCommentItemForBixby:Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_4
    :goto_3
    return-void

    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    :cond_7
    sget-object v6, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_LOCAL_COMMENT_VIEW:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkRequiredPermissions([Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const/16 v11, 0x76

    invoke-direct {p0, v6, v11}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showPermissionRequestDialog([Ljava/lang/String;I)V

    sget-object v11, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;->IDLE:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;

    invoke-direct {p0, v11}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setChannelCommentsActivityState(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;)V

    goto :goto_3

    :cond_8
    new-instance v3, Landroid/content/Intent;

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-class v12, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-direct {v3, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v11, "story_id"

    iget v12, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v11, "file_id"

    invoke-virtual {v3, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v11, v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getSocialInfo(I)Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getArticleId()Ljava/lang/String;

    move-result-object v0

    :goto_4
    const-string/jumbo v12, "is_host"

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getOwner()I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_b

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v3, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_9
    const-string/jumbo v11, "article_id"

    invoke-virtual {v3, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "show_keyboard"

    invoke-virtual {v3, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v11, "show_like_view"

    invoke-virtual {v3, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v11, "shared_item_unique_path"

    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v11}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v11

    invoke-static {v3, v11}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    sget-object v11, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;->STARTED:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;

    invoke-direct {p0, v11}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setChannelCommentsActivityState(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;)V

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v11}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v12, 0x7f0a07d7

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v12, "StoryComments"

    sget-object v13, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v11, v12, v13, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_2

    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    :cond_b
    const/4 v11, 0x0

    goto :goto_5
.end method

.method private startDetailView(IIZ)V
    .locals 17

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isResumeFromBack:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v14

    sget-object v15, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v14, v15, :cond_1

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v14

    if-gtz v14, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v14}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    move/from16 v0, p2

    invoke-virtual {v9, v0, v14}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    :goto_2
    if-nez v7, :cond_4

    const-string/jumbo v14, "ChannelPhotoViewState"

    const-string/jumbo v15, "cannot start DetailView. mediaItem is null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v7

    goto :goto_2

    :cond_4
    instance-of v14, v7, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v14, :cond_5

    check-cast v7, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getLocalImage()Lcom/sec/android/gallery3d/data/LocalImage;

    move-result-object v7

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v14}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isStartAnimationNow()Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getItemImage(II)Landroid/graphics/Bitmap;

    move-result-object v6

    :goto_3
    const/4 v10, 0x0

    if-eqz v6, :cond_6

    :try_start_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_6
    const-string/jumbo v14, "ChannelPhotoViewState"

    const-string/jumbo v15, "cannot start animation to DetailView. bitmap is null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousActivityState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v15

    invoke-virtual {v14, v10, v15}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_9

    const-string/jumbo v14, "KEY_MEDIA_SET_PATH"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "/timeall"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentTopSetPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const-string/jumbo v14, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v3, v14, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "KEY_MEDIA_SET_POSITION"

    move/from16 v0, p1

    invoke-virtual {v3, v14, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getCount()I

    move-result v13

    const/4 v5, 0x0

    :goto_6
    move/from16 v0, p1

    if-ge v5, v0, :cond_b

    if-ge v5, v13, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v14, v5}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v12

    if-nez v12, :cond_a

    const/4 v14, 0x0

    :goto_7
    add-int p2, p2, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getScreenNailImage()Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_3

    :cond_8
    :try_start_1
    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_4

    :catch_0
    move-exception v4

    const-string/jumbo v14, "ChannelPhotoViewState"

    const-string/jumbo v15, "cannot start animation to DetailView because of the RuntimeException. bitmap is null"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v14, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v14

    goto :goto_7

    :cond_b
    const-string/jumbo v14, "KEY_ITEM_POSITION"

    move/from16 v0, p2

    invoke-virtual {v3, v14, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v14

    if-eqz v14, :cond_c

    const-string/jumbo v14, "expansion_detail_view"

    const/4 v15, 0x1

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    move-result v14

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v14

    sget-object v15, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v14, v15, :cond_e

    :cond_d
    const-string/jumbo v14, "KEY_IS_FROM_CATEGORYVIEW"

    const/4 v15, 0x1

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_e
    const-string/jumbo v14, "KEY_IS_STORY_ID"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v14, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z

    if-eqz v14, :cond_f

    const-string/jumbo v15, "key_media_channel_album_set_path"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_8
    invoke-virtual {v3, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-static {v14}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-virtual {v14, v15}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->setSelectChannelID(I)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeFloatingTextView()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v14

    const-class v15, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move/from16 v0, p3

    invoke-virtual {v14, v15, v3, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentBaseMediaSetPath:Ljava/lang/String;

    goto :goto_8
.end method

.method private startDetailViewInUIThread(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startDetailViewInUIThread(IIZ)V

    return-void
.end method

.method private startDetailViewInUIThread(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$37;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$37;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$38;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$38;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IIZ)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startHandlerThread()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "ChannelPhotoViewHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "looper is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$7;

    invoke-direct {v1, p0, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$7;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mThreadHandler:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method private startSendChannel(I[Landroid/net/Uri;Z)V
    .locals 7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/EventShareWifiOnlySwitch;->isOn(Landroid/content/Context;)Z

    move-result v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0a00b3

    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a00b1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a00ad

    new-instance v6, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$50;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$50;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I[Landroid/net/Uri;Z)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0080

    new-instance v6, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$49;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$49;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I[Landroid/net/Uri;Z)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void

    :cond_0
    const v2, 0x7f0a00b2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startSendChannel(I[Landroid/net/Uri;ZZ)V

    goto :goto_1
.end method

.method private startSendChannel(I[Landroid/net/Uri;ZZ)V
    .locals 30

    const-wide/16 v22, 0x0

    if-nez p3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUriFileContent:[Landroid/net/Uri;

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mLocalPathFileContent:[Ljava/lang/String;

    :goto_0
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v21

    move v8, v5

    :goto_1
    :try_start_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaObject;

    if-nez v14, :cond_5

    const-string/jumbo v26, "ChannelPhotoViewState"

    const-string/jumbo v27, "mediaObject is null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    move v5, v8

    :goto_2
    const-string/jumbo v21, "ChannelPhotoViewState"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showNetworkErrorDialog()V

    :goto_4
    return-void

    :cond_0
    const-string/jumbo v21, "ChannelPhotoViewState"

    const-string/jumbo v26, "No item selected"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_1
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-object/from16 v21, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMediaItemCount()I

    move-result v27

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v10, 0x0

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    :cond_2
    if-lez v10, :cond_4

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    new-array v0, v10, [Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUriFileContent:[Landroid/net/Uri;

    new-array v0, v10, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mLocalPathFileContent:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v21, "ChannelPhotoViewState"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "items size is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v26, 0x7f0a00cc

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v26, 0x7f0a0497

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v15}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showNetworkErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUriFileContent:[Landroid/net/Uri;

    move-object/from16 v26, v0

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v27

    aput-object v27, v26, v8

    move-object v0, v14

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object v9, v0

    sget-boolean v26, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_SCLOUD:Z

    if-eqz v26, :cond_8

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v26

    const v27, 0xf4240

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_7

    sget-object v26, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v26 .. v26}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v26

    if-eqz v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mLocalPathFileContent:[Ljava/lang/String;

    move-object/from16 v26, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v5, v8, 0x1

    :try_start_3
    check-cast v9, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getCloudServerPath()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v8

    :goto_6
    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaObject;->getSize()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v26

    add-long v22, v22, v26

    move v8, v5

    goto/16 :goto_1

    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mLocalPathFileContent:[Ljava/lang/String;

    move-object/from16 v26, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v5, v8, 0x1

    :try_start_5
    check-cast v9, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getServerPath()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    :catch_1
    move-exception v4

    goto/16 :goto_2

    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mLocalPathFileContent:[Ljava/lang/String;

    move-object/from16 v26, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    add-int/lit8 v5, v8, 0x1

    :try_start_7
    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    :cond_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mLocalPathFileContent:[Ljava/lang/String;

    move-object/from16 v26, v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    add-int/lit8 v5, v8, 0x1

    :try_start_9
    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_6

    :cond_9
    move v5, v8

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getUploadedCapacityQuota(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/QuotaInfo;

    move-result-object v17

    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/QuotaInfo;->getByteUsage()J

    move-result-wide v24

    add-long v26, v24, v22

    const-wide/32 v28, 0x40000000

    div-long v6, v26, v28

    const-wide/16 v26, 0xa

    cmp-long v21, v6, v26

    if-ltz v21, :cond_b

    const-string/jumbo v21, "ChannelPhotoViewState"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "estimate : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v26, 0x7f0a0471

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v26, 0x7f0a0473

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "10"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    const-string/jumbo v29, "GB"

    aput-object v29, v27, v28

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v15}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    if-nez p3, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getOwner()I

    move-result v21

    const/16 v26, 0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->checkChannelContactExpired(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_c

    new-instance v21, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v26, 0x7f0a03b4

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v26, 0x7f0a03b5

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v26, 0x7f0a0258

    new-instance v27, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$48;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$48;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IZLjava/util/ArrayList;)V

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v26, 0x7f0a0080

    new-instance v27, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$47;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$47;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;IZ)V

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->show()V

    goto/16 :goto_4

    :cond_c
    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v26, v0

    aput-object v26, v16, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUriFileContent:[Landroid/net/Uri;

    move-object/from16 v26, v0

    aput-object v26, v16, v21

    const/16 v21, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v16, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mLocalPathFileContent:[Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v16, v21

    const/16 v21, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    aput-object v26, v16, v21

    const/16 v21, 0x5

    const/16 v26, 0x0

    aput-object v26, v16, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v21

    const-string/jumbo v26, "EventAddContentCmd"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_d
    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v26, v0

    aput-object v26, v16, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUriFileContent:[Landroid/net/Uri;

    move-object/from16 v26, v0

    aput-object v26, v16, v21

    const/16 v21, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v16, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mLocalPathFileContent:[Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v16, v21

    const/16 v21, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    aput-object v26, v16, v21

    const/16 v21, 0x5

    const/16 v26, 0x0

    aput-object v26, v16, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v21

    const-string/jumbo v26, "EventAddContentCmd"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_e
    const/16 v21, 0x7

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v26, v0

    aput-object v26, v16, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUriFileContent:[Landroid/net/Uri;

    move-object/from16 v26, v0

    aput-object v26, v16, v21

    const/16 v21, 0x2

    aput-object p2, v16, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getName()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v16, v21

    const/16 v21, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v16, v21

    const/16 v21, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mLocalPathFileContent:[Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v16, v21

    const/16 v21, 0x6

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    aput-object v26, v16, v21

    const-string/jumbo v21, "ChannelPhotoViewState"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Event Send Start : channelID [ "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " ] "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v21

    const-string/jumbo v26, "EventSendStartCmd"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method private stopSharingChannel()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showProgressDialog()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, -0x1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->deleteMember(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private unlikeItem(ILjava/lang/String;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    sget-object v6, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->LIKE_BY_ME:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v6

    invoke-static {v5, p2, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createWhereForLikeWithArticleId(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->updateHostLikeCommitStatus(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x6

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v4, v1, v3

    sget-object v3, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->REMOVE_LIKE:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    aput-object v3, v1, v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x4

    aput-object p2, v1, v3

    const/4 v3, 0x5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    const-string/jumbo v3, "ChannelPhotoViewState"

    const-string/jumbo v4, "Send Notification [REMOVE_LIKE]"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v4, "UPDATE_SOCIAL_INFO"

    invoke-virtual {v3, v4, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private unregisterHighlightVideoReceiver()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoNotiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ChannelPhotoViewState"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unselectAll()V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    sget v5, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-virtual {v4, v8, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v8}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v8, v8}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->refreshCheckState()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "pick-min-item"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v6, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a025b

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v1, v8}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/4 v5, 0x6

    invoke-virtual {v4, v8, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v8}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto :goto_0
.end method

.method private updateCountOnActionBar()V
    .locals 10

    const/4 v9, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getAllCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    :cond_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v8, v8, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/16 v9, 0x1f4

    invoke-virtual {v8, v4, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    :goto_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    if-lez v0, :cond_5

    if-ne v4, v0, :cond_5

    move v2, v6

    :goto_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v8, "pick-max-item"

    const/4 v9, -0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-le v0, v3, :cond_1

    if-lez v3, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v8

    if-ne v8, v3, :cond_6

    move v2, v6

    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v6, v7, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    return-void

    :cond_2
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    sget v9, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-virtual {v8, v4, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_0

    :cond_3
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v4, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto :goto_0

    :cond_5
    move v2, v7

    goto :goto_1

    :cond_6
    move v2, v7

    goto :goto_2

    :cond_7
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    if-eqz v8, :cond_9

    sget v3, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    if-le v0, v3, :cond_1

    if-lez v3, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v8

    if-ne v8, v3, :cond_8

    move v2, v6

    :goto_3
    goto :goto_2

    :cond_8
    move v2, v7

    goto :goto_3

    :cond_9
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    if-eqz v8, :cond_1

    const/4 v3, 0x6

    if-le v0, v3, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v8

    if-ne v8, v3, :cond_a

    move v2, v6

    :goto_4
    goto :goto_2

    :cond_a
    move v2, v7

    goto :goto_4
.end method

.method private updateLikeInfo(Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startHandlerThread()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mThreadHandler:Landroid/os/Handler;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v3, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mThreadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private updateSelectionMode()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->exitSelectionMode()V

    :cond_0
    return-void
.end method

.method private updateStatusBarIconColor(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getSystemUiVisibility()I

    move-result v0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLightStatusBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getStatusBarUiVisibility(ZI)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setSystemUiVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateSuggestedItems(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getSuggestionMediaItem()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateSuggestedItems(Landroid/content/Context;Lcom/sec/android/gallery3d/data/ChannelAlbum;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateTime()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$8;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$8;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateWindowAttribute()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method getActionBarStyle()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionbarStyle:I

    return v0
.end method

.method public getContentsForFaceTag()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    if-nez v5, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedMediaSetMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v6, v3, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v6, :cond_2

    check-cast v3, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCurrentMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    return-object v0
.end method

.method public getPreviousOverFlow()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPreviousOverFlow:Landroid/view/View;

    return-object v0
.end method

.method public getSAScreenId()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelSharedStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "212"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "210"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelSharedStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "211"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "209"

    goto :goto_0
.end method

.method public getShowSharedListView()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->isSharedListEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBackPressed()V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->onBackPressed()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1080"

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_NEW_MEMBER_LIST_VIEW:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->isSharedListEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getContactList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->setSharedListEnable(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNoItemView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFinishingState:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeNoItemView()V

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setOverFlowColor(F)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeFloatingTextView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->finishCurrentViewState()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingTextView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setSharedFriendsListViewVisible(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->removeSharedFriendsAllChild()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkNeedShowSharedFriendsBar()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->resetSharedFriendsBar()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    const-string/jumbo v4, "ugci"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->removeSharedFriendsBar()V

    :cond_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setLaunchMode()Z

    :goto_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionBarStyle()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshActionBarTheme(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->exitSelectionMode()V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeNoItemView()V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->finishWithCoupledActivity(Landroid/app/Activity;)V

    :cond_8
    sget-boolean v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FeatureAutoPlay:Z

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isValidHighlightVideo()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->removeHighlightVideoWindow()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setNeedRemoveHighlightVideo(Z)V

    :cond_9
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFinishingState:Z

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryDetailAlone:Z

    if-nez v2, :cond_a

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setOverFlowColor(F)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeFloatingTextView()V

    :cond_a
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->finishCurrentViewState()V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMenu:Landroid/view/Menu;

    const v1, 0x7f120286

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemIcon(Landroid/view/Menu;II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->refreshSelectionBarState(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->cancel()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setClickEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->clearFocus()V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->onConfigurationChanged()V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_NEW_MEMBER_LIST_VIEW:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->isSharedListEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->reloadList()V

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->resetNoItemLayout()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v3, "ChannelPhotoViewState onCreate Start"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ChannelPhotoViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsMaxCount:Z

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isResumeFromBack:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v1, :cond_0

    const-string/jumbo v1, "ChannelPhotoViewState"

    const-string/jumbo v2, "mActivity is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFirstLoadingFinished:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsSuggestionCardVisible:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPreviousViewMode:Ljava/lang/Class;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v3, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->initChannelPhotoViewEventHandler()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f1200d5

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRootGroup:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsEasyMode:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->initSpinner()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelPhotoViewExitSelectionMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v1, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    if-eqz p1, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "start_dual_from_detail"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsDualLaunchFromDetail:Z

    :cond_1
    const-string/jumbo v1, "KEY_IS_ENTER_CHANNEL_PHOTO_VIEW"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsReceivedEventView:Z

    const-string/jumbo v1, "KEY_IS_NEED_TO_DOWNLOAD_EVENT"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsNeedToDownloadEvent:Z

    const-string/jumbo v1, "KEY_IS_NEED_TO_DOWNLOAD_EVENT"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsHideSaveMenu:Z

    const-string/jumbo v1, "KEY_IS_FROM_GALLERY_NOTIFCATION_VIEW"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFromEventNotificationView:Z

    const-string/jumbo v1, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentBaseMediaSetPath:Ljava/lang/String;

    const-string/jumbo v1, "story_detail_alone"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryDetailAlone:Z

    const-string/jumbo v1, "from_reminder"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFromReminder:Z

    :cond_2
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUpdatePath:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentBaseMediaSetPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentBaseMediaSetPath:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    check-cast v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-nez v1, :cond_5

    const/4 v1, -0x1

    :goto_2
    iput v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentTopSetPath:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DataLoaderConfig;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DataLoaderConfig;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsEasyMode:Z

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->setEasyMode(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    new-instance v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$6;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$6;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getLayoutLevel()I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentLayout:I

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    sget-boolean v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    new-instance v1, Lcom/samsung/android/devicecog/gallery/touchevent/ChannelPhotoViewStateDCTouchEvent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/samsung/android/devicecog/gallery/touchevent/ChannelPhotoViewStateDCTouchEvent;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    :cond_3
    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshStatusBarStyle(Z)V

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "ChannelPhotoViewState onCreate End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentBaseMediaSetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getBucketId()I

    move-result v1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMenu:Landroid/view/Menu;

    return-void
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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "ChannelPhotoViewState onDestroy Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshActionBarTheme(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeFloatingTextView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->removeHighlightVideoWindow()V

    :cond_0
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNeedShowFloatingTextView:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "CHANNEL_PHOTO_VIEW_EXIT_SELECTION"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "SHARED_FRIENDS_LIST_VIEW"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    :cond_2
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_NEW_MEMBER_LIST_VIEW:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->isSharedListEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->setSharedListEnable(Z)V

    :cond_3
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshStatusBarStyle(Z)V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onDestroy()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "ChannelPhotoViewState onDestroy End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDirty()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->onDirty(Z)V

    return-void
.end method

.method public onDirty(Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "ChannelPhotoViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDirty() called, isExitSelectionMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->isNeedUpdateCluster()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->exitSelectionMode()V

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->updateMediaSet()V

    goto :goto_0
.end method

.method public onDisplayChanged(I)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->resetNavigationBarPosition(Z)V

    :cond_0
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshActionBarTheme(I)V

    :cond_0
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryDetailAlone:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->onBackPressed()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "ChannelPhotoViewState onPause Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeFloatingTextView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeNoItemView()V

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFirstLoadingFinished:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRootGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRootGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->onPause()V

    :cond_1
    iput-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->saveCurrentScrollInfo()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->pause()V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->removeHighlightVideoWindow()V

    :cond_3
    iput v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShrinkOption:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "CHANNEL_PHOTO_VIEW"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "SHARED_FRIENDS_LIST_VIEW"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->setGenericMotionFocus(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->setGenericMotionTitleFocus(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->setGenericMotionLocationFocus(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getSuggestionCardVisibility()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsSuggestionCardVisible:Z

    :cond_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->unregisterHighlightVideoReceiver()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->cancelInviteProcess()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DownloadStateReceiver;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DownloadStateReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DownloadStateReceiver;

    :cond_6
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mThreadHandler:Landroid/os/Handler;

    :cond_8
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "ChannelPhotoViewState onPause End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 6

    const v5, 0x7f120289

    const v1, 0x7f120275

    const v4, 0x7f120290

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_NEW_MEMBER_LIST_VIEW:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->isSharedListEnable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionBarStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshActionBarTheme(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsHideRemoveMenu:Z

    if-eqz v0, :cond_a

    invoke-static {p1, v5, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelSharedStatus()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1, v4, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p1, v1, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v0, 0x7f120293

    invoke-static {p1, v0, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_2
    const v0, 0x7f120292

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMediaItemCount()I

    move-result v0

    if-gtz v0, :cond_3

    const v0, 0x7f1202cf

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_3
    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_SHAREVIA_SHARED_EVENT_CONTENT:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    invoke-static {p1, v4, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_4
    :goto_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getOwner()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const v0, 0x7f1202cd

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    sget-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v0, :cond_5

    const v0, 0x7f120276

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f120294

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v0, 0x7f120295

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v0, 0x7f120296

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f1202cd

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f1202ce

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v4, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v0, 0x7f120293

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_7
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isUnSavedStory()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsHideSaveMenu:Z

    if-nez v0, :cond_8

    const v0, 0x7f120112

    invoke-static {p1, v0, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_8
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFromReminder:Z

    if-eqz v0, :cond_9

    const v0, 0x7f1202cf

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_9
    return-void

    :cond_a
    invoke-static {p1, v5, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v0, :cond_4

    invoke-static {p1, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    const/4 v5, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/ActivityState;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_0

    aget v2, p3, v0

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "START_CAMERA"

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_1
    const/4 v0, 0x0

    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_0

    aget v2, p3, v0

    if-ne v2, v5, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->onBackPressed()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_2
    const/4 v0, 0x0

    :goto_3
    array-length v2, p2

    if-ge v0, v2, :cond_3

    aget v2, p3, v0

    if-eq v2, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkEventSharingSetting()V

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x0

    :goto_4
    array-length v2, p2

    if-ge v0, v2, :cond_4

    aget v2, p3, v0

    if-eq v2, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingAuth(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "ChannelPhotoViewState"

    const-string/jumbo v3, "isEventSharingAuth : true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_SETTINGS:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0164

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0018

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createRegisterDialog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "channel_needto_show_pregrant_popup"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0163

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isCoreAppsInstalled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isCoreAppsSupportVersion(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->requestCoreAppsAuth()V

    goto :goto_6

    :cond_7
    const-string/jumbo v2, "ChannelPhotoViewState"

    const-string/jumbo v3, "coreApps is not installed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x6f -> :sswitch_1
        0x70 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
    .end sparse-switch
.end method

.method public onResume()V
    .locals 21

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFloatingBackground:I

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "ChannelPhotoViewState onResume Start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEnableChangeColor:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNeedIdleProcess:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNeedShowFloatingTextView:Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->addGLIdleListener()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->isFestivalMode()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setCurrentClusterType(I)V

    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFirstMediaCheck:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUpdatePath:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentBaseMediaSetPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentTopSetPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentTopSetPath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentTopSetPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentTopSetPath:Ljava/lang/String;

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v15

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v2, v15}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsEasyMode:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsEasyMode:Z

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->setEasyMode(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsEasyMode:Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentLayout:I

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->setInitialLevel(ZI)I
    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->access$17600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;ZI)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentLayout:I

    sget-boolean v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentLayout:I

    if-nez v2, :cond_14

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;->getThumbSizeType()I

    move-result v20

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->setInitThumbType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->setIsPhotoPage(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsEasyMode:Z

    if-eqz v2, :cond_3

    or-int/lit16 v6, v6, 0x100

    :cond_3
    or-int/lit16 v6, v6, 0x80

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v13

    const/4 v2, -0x1

    if-ne v13, v2, :cond_4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string/jumbo v2, "ChannelPhotoViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initialCode = -1!!, re-calculate initialCode with albumIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", itemIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v13

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShrinkOption:I

    or-int/2addr v6, v2

    :goto_4
    if-ltz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v2, v13}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->setFirstIndex(I)V

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentLayout:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setFirstLoading(I)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateTime()V

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isResumeFromBack:Z

    invoke-direct/range {v2 .. v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setLaunchMode()Z

    move-result v11

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isResumeFromBack:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setBaseMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setChannelID(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsFromEventNotificationView:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->hideNoItem()V

    :cond_6
    sget-boolean v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_IS_NOS:Z

    if-nez v2, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkNeedShowSharedFriendsBar()V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsSuggestionCardVisible:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "event_image_suggestion"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getSuggestionMediaItem()Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2, v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setSuggestionSet(Ljava/util/ArrayList;)V

    const-string/jumbo v2, "ChannelPhotoViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Channel SuggestionCard Image TotalCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->onResume()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setChannelName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelPhotoMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShowSharedfriendslistMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "CHANNEL_PHOTO_VIEW_EXIT_SELECTION"

    invoke-virtual {v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->hasMediator(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelPhotoViewExitSelectionMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    :cond_9
    invoke-super/range {p0 .. p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onResume()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionbarOverFlow()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mOverFlowView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPreviousOverFlow:Landroid/view/View;

    if-nez v2, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionbarOverFlow()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mPreviousOverFlow:Landroid/view/View;

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_NEW_MEMBER_LIST_VIEW:Z

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSharedFriendsListMediator:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListMediator;->isSharedListEnable()Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getContactCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->onBackPressed()V

    :cond_b
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->closeProgressDialog()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelPhotoEventHandle:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->setonEvtResume()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkNeedShowHighlightVideo()V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->LIVE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelType()I

    move-result v3

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setLiveChannel(Z)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLiveEvent:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->drawLiveChannelCameraButton()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$32;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$32;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_c
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewChannelNotification:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "channel_new_exist_count"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_d
    new-instance v19, Landroid/content/IntentFilter;

    invoke-direct/range {v19 .. v19}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.sec.android.gallery3d.eventshare.STATE_NOTIFIY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.android.gallery3d.eventshare.PROGRESS_NOTIFIY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.android.gallery3d.eventshare.UPLOAD_COUNT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.android.gallery3d.eventshare.REFRESH_UPLOADED_COUNT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.DEFAULT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DownloadStateReceiver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DownloadStateReceiver;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DownloadStateReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DownloadStateReceiver;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget-object v17, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkRequiredPermissions([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOnCoreApps(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0x6f

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showPermissionRequestDialog([Ljava/lang/String;I)V

    :cond_e
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getStateAndRunningStateWithId(I)Lcom/sec/android/gallery3d/eventshare/EventShareData;

    move-result-object v12

    if-eqz v12, :cond_10

    iget v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setSharedWaitingView(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMediaItemCount()I

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setSharedEmptyView(Z)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->setOnUploading(Z)V

    :cond_10
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->postRemoveNotification()V

    :cond_11
    sget-object v2, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;->IDLE:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setChannelCommentsActivityState(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$STATE;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "ChannelPhotoViewState onResume End"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v15

    goto/16 :goto_0

    :cond_13
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUpdatePath:Z

    goto/16 :goto_1

    :cond_14
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->getThumbSizeType()I

    move-result v20

    goto/16 :goto_2

    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentLayout:I

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;->getThumbSizeType(I)I

    move-result v20

    goto/16 :goto_2

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    :cond_17
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;

    iget v13, v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mPrevCenterObject:I

    goto/16 :goto_4

    :cond_19
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshActionBarTheme(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setSharedFriendsListViewVisible(Z)V

    goto/16 :goto_5

    :cond_1a
    if-nez v11, :cond_b

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshActionBarTheme(I)V

    goto/16 :goto_5

    :cond_1b
    iget v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    iget v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->runningType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->updateUploadedFileCount(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setIsRunningUpload(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mTotalCnt:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setShareTotalCount(I)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->setOnUploading(Z)V

    goto/16 :goto_6

    :cond_1d
    iget v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1e

    iget v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->request:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setSharedWaitingView(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setSharedFailedView(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->setOnUploading(Z)V

    goto/16 :goto_6

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewActionBarForNormal;->setOnUploading(Z)V

    goto/16 :goto_6
.end method

.method public onStateResult(IILandroid/content/Intent;)V
    .locals 22

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v10, v0, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    aput-object v17, v10, v16

    const/16 v16, 0x1

    aput-object p3, v10, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-object/from16 v16, v0

    const-string/jumbo v17, "START_ALBUM_OPERATIONS"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsDoubleLaunchContact:Z

    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v16

    if-eqz v16, :cond_3

    if-eqz p3, :cond_2

    const-string/jumbo v16, "ChannelPhotoViewState"

    const-string/jumbo v17, "data is not null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v16, v0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "result"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getPhoneNumbersFromContacts(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_1

    const-string/jumbo v16, "ChannelPhotoViewState"

    const-string/jumbo v17, "intent data is wrong from contacts app"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    new-instance v16, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;-><init>(Lcom/sec/android/gallery3d/app/ActivityState;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mResult:Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setStateResult(ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v16, "ChannelPhotoViewState"

    const-string/jumbo v17, "data is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->handleAddMember(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_2
    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->removeHighlightVideoWindow()V

    :cond_4
    sget-object v16, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v16

    if-eqz v16, :cond_5

    const-string/jumbo v7, "union_selectedItems"

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v14, v0}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_3

    :cond_5
    const-string/jumbo v7, "selectedItems"

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    move/from16 v17, v0

    const-string/jumbo v18, "is_shared"

    invoke-static/range {v16 .. v18}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v12, v1}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->filterDuplicatedSelection(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/ChannelAlbum;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startSendChannel(I[Landroid/net/Uri;Z)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v12, v1}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->addContentstoChannel(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/ChannelAlbum;)Z

    move-result v13

    const-string/jumbo v16, "ChannelPhotoViewState"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "add content : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_3
    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    const-string/jumbo v17, "max_channel_number"

    const/16 v18, 0xc8

    invoke-static/range {v16 .. v18}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getSharedChannelCount(Landroid/content/Context;)I

    move-result v16

    move/from16 v0, v16

    if-lt v0, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mLimitGroupDialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mLimitGroupDialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->isShowing()Z

    move-result v16

    if-nez v16, :cond_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    const-string/jumbo v17, "GRMX"

    invoke-static/range {v16 .. v17}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0018

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0a0015

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getCountRunningStateWithId()I

    move-result v11

    const/16 v16, 0x3

    move/from16 v0, v16

    if-lt v11, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a007b

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0a0180

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkEventSharingSetting()V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->handleResultCameraLaunchForLiveChannel(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_5
    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mRetryCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setEnableImageAnalysisDisclaimer(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    const-wide/16 v18, 0x3e8

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x205 -> :sswitch_2
        0x702 -> :sswitch_4
        0x703 -> :sswitch_3
        0xc00 -> :sswitch_0
        0xe00 -> :sswitch_1
        0x1000 -> :sswitch_5
    .end sparse-switch
.end method

.method public onViewInitialize()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const-string/jumbo v1, "ChannelPhotoViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initialzieView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$10;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$10;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$11;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$11;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemLongClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$12;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$12;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnStatusChangedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$13;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$13;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v4, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$14;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$14;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$15;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$15;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$16;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$16;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnKeyListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$17;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$17;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnHoverListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$18;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$18;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnSwitchViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$19;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$19;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnPenSelectionListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$20;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$20;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnEnlargeAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$21;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$21;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnShrinkAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$22;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$22;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnLocationItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLocationItemClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$23;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$23;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnNotificationClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$24;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$24;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnRefreshListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnRefreshListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$25;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnUpdateChannelFloating(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnUpdateChannelFloatingViewListerner;)V

    sget-boolean v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$26;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$26;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnLikeClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLikeClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$27;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$27;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnLikeCountClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLikeCountClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$28;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$28;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnCommentCountClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCommentCountClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$29;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$29;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnLastCommentClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLastCommentClickListener;)V

    :cond_0
    sget-boolean v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    new-instance v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$30;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$30;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setOnTimelineToggleClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnTimelineToggleClickListener;)V

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$31;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$31;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setOnGridToggleClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnGridToggleClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelPhotoEventHandle:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewEventHandle;->setEnvGLViewInitialize()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setNeedRemoveHighlightVideo(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mBucketId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setBucketId(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getPhotoCoverObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setPhotoCoverObject(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setGalleryCurrentStatus(Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getPosCtrl()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setPosCtrl(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getPosCtrlCom()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setPosCtrlCom(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mHighlightVideoWindow:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getListenerThumbMove()Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setListenerThumbMove(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    :cond_2
    return-void
.end method

.method processActionBarVI(F)V
    .locals 6

    const v5, 0x7f120292

    const v4, 0x7f120290

    const v3, 0x7f120276

    const v2, 0x7f120275

    const v1, 0x7f120112

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEnableChangeColor:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setOverFlowColor(F)V

    const v0, 0x7f12007c

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseInviteInsteadOfShareEvent:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1202cd

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V

    const v0, 0x7f1202cd

    invoke-direct {p0, v0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V

    const v0, 0x7f1202ce

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V

    const v0, 0x7f1202ce

    invoke-direct {p0, v0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V

    invoke-direct {p0, v4, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V

    const v0, 0x7f1202c2

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V

    const v0, 0x7f1202c2

    invoke-direct {p0, v0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V

    invoke-direct {p0, p1, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V

    invoke-direct {p0, v5, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V

    invoke-direct {p0, p1, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V

    invoke-direct {p0, v2, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V

    const v0, 0x7f120293

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V

    const v0, 0x7f120293

    invoke-direct {p0, v0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V

    const v0, 0x7f120297

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V

    const v0, 0x7f120297

    invoke-direct {p0, v0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V

    const v0, 0x7f120298

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V

    const v0, 0x7f120298

    invoke-direct {p0, v0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setUpBtnColor(F)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setAddContactColor(F)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setActionBarTitleColor(F)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setActionBarBGColor(F)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setSelectionViewColor(F)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isUnSavedStory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V

    invoke-direct {p0, v3, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V

    const v0, 0x7f120299

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V

    const v0, 0x7f120299

    invoke-direct {p0, v0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V

    invoke-direct {p0, p1, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V

    invoke-direct {p0, v1, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setShowButtonBackgroundColor(IF)V

    goto :goto_1
.end method

.method refreshActionBarTheme(I)V
    .locals 3

    const-string/jumbo v0, "ChannelPhotoViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshActionBarTheme style ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$52;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshStatusBarStyle(Z)V
    .locals 5

    const/4 v0, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getStatusBarColor()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-eq v1, p1, :cond_0

    const-string/jumbo v2, "ChannelPhotoViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshStatusBarStyle called. toTransparent ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateWindowAttribute()V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFWStatusBarInOpenTheme:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateStatusBarIconColor(Z)V

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f100120

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_2
.end method

.method setActionbarStyle(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionbarStyle:I

    return-void
.end method

.method public setPromptRequest(IILjava/lang/Object;)V
    .locals 3

    check-cast p3, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x20

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShrinkOption:I

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startDetailViewViaSmartView(Lcom/sec/android/gallery3d/data/Path;)V
    .locals 6

    const-string/jumbo v4, "ChannelPhotoViewState"

    const-string/jumbo v5, "startDetailViewViaSmartView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v4, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    const-string/jumbo v4, "ChannelPhotoViewState"

    const-string/jumbo v5, "fail to start detail view via smart view. item is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    const-string/jumbo v4, "ChannelPhotoViewState"

    const-string/jumbo v5, "fail to start detail view via smart view. itemCode is -1)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->startDetailViewImmediate(I)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "ChannelPhotoViewState"

    const-string/jumbo v5, "fail to start enlarge anim"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startDetailViewInUIThread(IIZ)V

    goto :goto_0
.end method

.method public startExpandAction()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->needListViewExpand(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mData:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->startDualActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-direct {p0, v3, v3, v3}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startDetailViewInUIThread(IIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3, v3, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startDetailViewInUIThread(IIZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v3, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startDetailViewInUIThread(IIZ)V

    goto :goto_0
.end method

.method public startShrinkAction()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.subactivity.itemchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    const/4 v1, 0x0

    sput-object v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.mainactivity.itemchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 25

    move-object/from16 v11, p2

    check-cast v11, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v12

    const-string/jumbo v4, "ChannelPhotoViewState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Event update ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_EVENTVIEW:I

    if-ne v12, v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showDeleteDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    if-ne v12, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelSharedStatus()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showDeleteDialog()V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v5, 0x1

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(ZI)V

    goto :goto_0

    :cond_3
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    if-ne v12, v4, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->selectAll()V

    goto :goto_0

    :cond_4
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_UNSELECT_ALL:I

    if-ne v12, v4, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->unselectAll()V

    goto :goto_0

    :cond_5
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE:I

    if-ne v12, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v5, 0x5

    iput v5, v4, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->scaleAnimationForSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->enterSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    goto :goto_0

    :cond_6
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SHARE_MODE:I

    if-ne v12, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v5, 0x6

    iput v5, v4, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->scaleAnimationForSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->enterSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    goto :goto_0

    :cond_7
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_CONTENTS:I

    if-ne v12, v4, :cond_8

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->handleAddContents(I)V

    goto :goto_0

    :cond_8
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_CONTACTS:I

    if-ne v12, v4, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->handleAddContacts()V

    goto :goto_0

    :cond_9
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHARE_FROM_EVENTVIEW:I

    if-ne v12, v4, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isValidSelection()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setCheckShareEvent(Z)V

    sget-boolean v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->FEATURE_USE_SHAREVIA_SHARED_EVENT_CONTENT:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelSharedStatus()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalSelectedItems()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v4, v14, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->needToDownloadSharedEventItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v5

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_DOWNLOAD_SHARE_FROM_EVENTVIEW:I

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->chooseShareDialog()V

    goto/16 :goto_0

    :cond_b
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DOWNLOAD_FROM_EVENTVIEW:I

    if-eq v12, v4, :cond_c

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DOWNLOAD_SHARE_FROM_EVENTVIEW:I

    if-ne v12, v4, :cond_f

    :cond_c
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DOWNLOAD_SHARE_FROM_EVENTVIEW:I

    if-ne v12, v4, :cond_d

    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move/from16 v0, v16

    invoke-virtual {v4, v5, v6, v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->downloadOriginalFiles(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Z)V

    if-nez v16, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->exitSelectionMode()V

    goto/16 :goto_0

    :cond_d
    const/16 v16, 0x0

    goto :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0095

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v15}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showNetworkErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_CREATE_GIF:I

    if-ne v12, v4, :cond_10

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->scaleAnimationForSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->enterSelectionMode()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsGifMode:Z

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setGifMode(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_10
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_CREATE_COLLAGE:I

    if-ne v12, v4, :cond_11

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->scaleAnimationForSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->enterSelectionMode()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsCollageMode:Z

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCollageMode(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_11
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_SAVE_NEW_EVENT:I

    if-ne v12, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    const-string/jumbo v5, "is_visible"

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    const-string/jumbo v5, "notify_status"

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I

    const-string/jumbo v5, "creation_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateChannelLongColumn(Landroid/content/Context;ILjava/lang/String;J)Z

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->cmhNotify(Landroid/content/Context;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->onBackPressed()V

    goto/16 :goto_0

    :cond_12
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_DETAILVIEW:I

    if-ne v12, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v7, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_ENTER_DETAIL_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    invoke-virtual {v5, v6, v4, v7}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_13
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ITEM:I

    if-ne v12, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v7, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ITEM:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    invoke-virtual {v5, v6, v4, v7}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_14
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ALL_WTIH_CONTENT_TYPE:I

    if-ne v12, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v7, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ALL_WITH_PARAMETER:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    invoke-virtual {v5, v6, v4, v7}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_15
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SHOW_RENAME_POPUP:I

    if-ne v12, v4, :cond_16

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->handleDCShowRenamePopup(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ENTER_EMPTY_SELECTION:I

    if-ne v12, v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v5, 0x7

    iput v5, v4, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->scaleAnimationForSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->enterSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_17
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_SEND_TO_REMINDER:I

    if-ne v12, v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v10

    const/4 v4, 0x7

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v5, v17, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getBucketId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getEventDatePeriod()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v5, 0x4

    if-nez v10, :cond_18

    const/4 v4, 0x0

    :goto_2
    aput-object v4, v17, v5

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getStartTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getEndTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v17, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v5, "SEND_TO_REMINDER"

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_19
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_PLAY_STORY_VIDEO:I

    if-ne v12, v4, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->handleDCPlayHighlightVideo()V

    goto/16 :goto_0

    :cond_1a
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_PICKER:I

    if-ne v12, v4, :cond_1b

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/core/Event;->getIntData()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->handleAddContents(I)V

    goto/16 :goto_0

    :cond_1b
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CREATE_COLLAGE:I

    if-ne v12, v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "TISE"

    const-string/jumbo v6, "Collage"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkEnableAnimateCollage(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startCollageMaker()V

    goto/16 :goto_0

    :cond_1c
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CREATE_ANIMATE:I

    if-ne v12, v4, :cond_1d

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkEnableAnimateCollage(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startGifMaker()V

    goto/16 :goto_0

    :cond_1d
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_STORY_VIEW_MODE_CONTROL:I

    if-ne v12, v4, :cond_1e

    const-string/jumbo v22, "GRID"

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->handleViewMode(Z)V

    goto/16 :goto_0

    :cond_1e
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SHARE:I

    if-ne v12, v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->chooseShareDialog()V

    goto/16 :goto_0

    :cond_1f
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ADD_STORY_MEMBER:I

    if-ne v12, v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mResult:Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

    if-nez v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a0512

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "AddStoryMember"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    move-object/from16 v0, v18

    invoke-static {v4, v5, v6, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mResult:Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->getResultData()Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->handleAddMember(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_21
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_LIKE_OPERATION:I

    if-ne v12, v4, :cond_24

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, v17, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getCommentMediaItemForBixby(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCommentItemForBixby:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v4, 0x1

    aget-object v19, v17, v4

    check-cast v19, Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, v17

    array-length v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_22

    const/4 v4, 0x2

    aget-object v9, v17, v4

    check-cast v9, Ljava/lang/String;

    :cond_22
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkContentTypeDoComment(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->handleLikeOperation(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a07d4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v4, v0, v5, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0

    :cond_24
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    if-ne v12, v4, :cond_25

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->setGlComposeView(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCurrentLayout:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->setCurrentLayout(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->doDCTouchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_25
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_STORY_COMMENTS:I

    if-ne v12, v4, :cond_0

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, v17, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getCommentMediaItemForBixby(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mCommentItemForBixby:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v9, 0x0

    move-object/from16 v0, v17

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_26

    const/4 v4, 0x1

    aget-object v9, v17, v4

    check-cast v9, Ljava/lang/String;

    :cond_26
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->isGridViewMode()Z

    move-result v4

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "StoryComments"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v23, 0x7f0a07d3

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v7, v0, v1}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0

    :cond_27
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkContentTypeDoComment(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->handleShowComments(I)V

    goto/16 :goto_0

    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a07d4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "StoryComments"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    move-object/from16 v0, v18

    invoke-static {v4, v5, v6, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0
.end method

.method protected updateDualScreenFocus(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v1, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    sput-object v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->refreshDualScreenFocus()V

    return-void
.end method
