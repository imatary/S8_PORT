.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.source "GlComposeChannelPhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$StoryInfoUpdatable;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$ChannelViewListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnGridToggleClickListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnTimelineToggleClickListener;
    }
.end annotation


# static fields
.field private static final ENLARGE_ANI_START_INTERVAL:J = 0x64L

.field private static final GENERIC_MOTION_TYPE_DETAIL_INFO:I = 0x6

.field private static final GENERIC_MOTION_TYPE_FRIEND_MORE:I = 0x5

.field private static final GENERIC_MOTION_TYPE_GRID:I = 0x7

.field private static final GENERIC_MOTION_TYPE_PROGRESS_CANCEL:I = 0x4

.field private static final GENERIC_MOTION_TYPE_SOCIAL_FRIENDS_BUTTON:I = 0x9

.field private static final GENERIC_MOTION_TYPE_SOCIAL_HLV_BUTTON:I = 0xa

.field private static final GENERIC_MOTION_TYPE_SUGGESTION_ADD_ALL:I = 0x2

.field private static final GENERIC_MOTION_TYPE_SUGGESTION_CANCEL:I = 0x1

.field private static final GENERIC_MOTION_TYPE_SUGGESTION_IMAGE:I = 0x3

.field private static final GENERIC_MOTION_TYPE_TIMELINE:I = 0x8

.field private static final REACHED_TOP_BOUNDARY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GlComposeChannPhotoView"

.field private static final VISIBLE_FRIEND_MAX_COUNT:I = 0x3


# instance fields
.field private final USE_DREAM_EVENT_LAYOUT:Z

.field private final USE_EVENT_SHARE:Z

.field private final USE_GRACE_EVENT_LAYOUT:Z

.field private isAnimationVisible:I

.field private isEventShare:Z

.field private isResumeFromBack:Z

.field private mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

.field private mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

.field private mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

.field private mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

.field private mChannelDatePeriod:Ljava/lang/String;

.field private mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

.field private mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

.field private mChannelId:I

.field private mChannelImageCount:Ljava/lang/String;

.field private mChannelName:Ljava/lang/String;

.field private mChannelVideoCount:Ljava/lang/String;

.field mCommentCountClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private final mComposeViewItemAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

.field private final mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

.field final mCoverHVPlayIconClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mCoverLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

.field private mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

.field private mCurrentBaseMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mCurrentSuggestionMediaSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private mGenericMotionFriendMore:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mGenericMotionProgressCancel:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mGenericMotionSuggestionAddAll:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mGenericMotionSuggestionCancel:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mGenericMotionSuggestionImage:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mGridToggleClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mHasHighlightVideo:Z

.field private mIsFailedView:Z

.field private mIsListViewVisible:Z

.field private mIsNoItemView:Z

.field private mIsSharedEmptyView:Z

.field private mIsShrinkAnim:Z

.field private mIsVisibleSuggestionCard:Z

.field private mIsWaitingView:Z

.field mLastCommentClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field mLikeClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field mLikeCountClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field final mListenerMoreFriendBtnClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field final mListenerShareProgressCancelBtnClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private final mListenerSuggestionAddAllClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private final mListenerSuggestionCancelClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private final mListenerSuggestionThumbClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mLiveChannel:Z

.field private mNeedShowShareProgress:Z

.field private mNeedShowShareRefreshProgress:Z

.field private mNeedShowShareRetryProgress:Z

.field private mNotNeedToResetLayout:Z

.field private mOnGridToggleClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnGridToggleClickListener;

.field private mOnTimelineToggleClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnTimelineToggleClickListener;

.field private mOutofScreenForHV:Z

.field private mProgressStartPos:I

.field private mRunningUpload:Z

.field private mSharedContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

.field private mTimelineToggleClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mTotalCnt:I

.field private mValidView:Landroid/graphics/Rect;

.field private mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$ChannelViewListener;

.field private mVirtualView:Lcom/sec/android/gallery3d/ui/VirtualView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNotNeedToResetLayout:Z

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDatePeriod:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelImageCount:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelVideoCount:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCurrentBaseMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCurrentSuggestionMediaSet:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsListViewVisible:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mRunningUpload:Z

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mTotalCnt:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isAnimationVisible:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsNoItemView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsVisibleSuggestionCard:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsShrinkAnim:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isResumeFromBack:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isEventShare:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_EVENT_SHARE:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceEventStoryLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_GRACE_EVENT_LAYOUT:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelDetailViewLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_DREAM_EVENT_LAYOUT:Z

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$7;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$7;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mListenerSuggestionThumbClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$8;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$8;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mListenerSuggestionCancelClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$9;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$9;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mListenerSuggestionAddAllClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mProgressStartPos:I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$13;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$13;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mListenerMoreFriendBtnClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mComposeViewItemAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$15;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$15;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mListenerShareProgressCancelBtnClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$16;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$16;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverHVPlayIconClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    iput-object p5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput-boolean p6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isResumeFromBack:Z

    sget-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->initListenersForCommentView()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_DREAM_EVENT_LAYOUT:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->initListenersForTimelineGridToggle()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnTimelineToggleClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mOnTimelineToggleClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnTimelineToggleClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnGridToggleClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mOnGridToggleClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnGridToggleClickListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDatePeriod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCurrentBaseMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isAnimationVisible:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isAnimationVisible:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setSuggestionCardVisibility(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Lcom/sec/android/gallery3d/ui/VirtualView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mVirtualView:Lcom/sec/android/gallery3d/ui/VirtualView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsListViewVisible:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_GRACE_EVENT_LAYOUT:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_DREAM_EVENT_LAYOUT:Z

    return v0
.end method

.method private createGlGenericMotionListener(I)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$17;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;I)V

    return-object v0
.end method

.method private drawAddBtnIcon()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->addMoreBtn()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mWideMode:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetAttributes(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawAddedFriendIcon()V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->removeAllFriendObj()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->removeAllChild()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->removeAll()V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->setVisibility(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mWideMode:Z

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetAttributes(Z)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->addFriendObj(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private drawChannelDetailGroup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->updateSharedFriendsObject()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->updateSharedFriendsObject()V

    :cond_1
    return-void
.end method

.method private drawSuggestionCard()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCurrentSuggestionMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCurrentSuggestionMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->addSuggestionImage(ILcom/sec/android/gallery3d/data/MediaItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCheckShareEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isEventShare:Z

    return v0
.end method

.method private getSharedContacts()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelId:I

    if-eq v5, v8, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelId:I

    const-string/jumbo v7, "ugci"

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelId:I

    if-eq v5, v8, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelId:I

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelAllInfo(Landroid/content/Context;I)Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const-string/jumbo v6, " "

    invoke-direct {v3, v0, v5, v9, v6}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;-><init>(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, v9}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->setIsMyProfile(Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getContactList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private hasSharedContacts()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initListenersForCommentView()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$3;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mLikeClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$4;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mLikeCountClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$5;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$5;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCommentCountClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$6;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$6;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mLastCommentClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-void
.end method

.method private initListenersForTimelineGridToggle()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mTimelineToggleClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGridToggleClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-void
.end method

.method private isAddContactBtn()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->getAddContactObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->getAddContactObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getSharedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getSharedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSharedEvent()Z
    .locals 5

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelId:I

    const-string/jumbo v4, "is_shared"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setSuggestionCardVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsVisibleSuggestionCard:Z

    return-void
.end method

.method private setValidView()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mValidView:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mWidth:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mHeight:I

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mValidView:Landroid/graphics/Rect;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mValidView:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mWidth:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mHeight:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method


# virtual methods
.method activeExtraObjectRange(ZZ)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->getTargetYPosition()F

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->setTargetPos(FFF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->getCurrentYPosition()F

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->setSourcePos(FFF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->getCurrentYPosition()F

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->setPos(FFF)V

    goto :goto_0
.end method

.method clearAddButtonFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->clearAddButtonBorder(Z)V

    :cond_0
    return-void
.end method

.method clearCancelButtonFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->drawBorder(Z)V

    :cond_0
    return-void
.end method

.method public clearChildViewFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsVisibleSuggestionCard:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionSuggestionAddAll:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;->onGenericMotionCancel(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionSuggestionImage:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;->onGenericMotionCancel(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionSuggestionCancel:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;->onGenericMotionCancel(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionProgressCancel:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionProgressCancel:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;->onGenericMotionCancel(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionFriendMore:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionFriendMore:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;->onGenericMotionCancel(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    goto :goto_0
.end method

.method clearSuggestionCardFocus()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getSuggestionObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->clearFocus()V

    :cond_0
    return-void
.end method

.method getAddBtnObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    return-object v0
.end method

.method getAddedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    return-object v0
.end method

.method getFocusedSuggestionCardObj()Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method

.method getGridTimelineObjectVisibility()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getHasHighlightVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mHasHighlightVideo:Z

    return v0
.end method

.method public getListenerThumbMove()Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    return-object v0
.end method

.method public getPhotoCoverHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_DREAM_EVENT_LAYOUT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b0740

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mWideMode:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsNoItemView:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mLiveChannel:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b01e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b01e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b01e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPhotoCoverObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    return-object v0
.end method

.method public getPosCtrl()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    return-object v0
.end method

.method getShareProgressObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    return-object v0
.end method

.method public getSuggestionCardVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsVisibleSuggestionCard:Z

    return v0
.end method

.method getSuggestionObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    return-object v0
.end method

.method public getUploadTotalCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getUploadTotalCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getVisibleMarginTop(Landroid/content/Context;)F
    .locals 2

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeight()F

    move-result v1

    return v1
.end method

.method public hideSuggestionObject()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->getAlpha()F

    move-result v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;-><init>(Lcom/sec/android/gallery3d/glcore/GlObject;FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setParam(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setDuration(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->startAfter(J)V

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$10;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$10;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    goto :goto_0
.end method

.method interpolateVisibleExtraObjectPosition(F)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    const/4 v1, 0x1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->setEnableAnim(ZZZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->applyTransform(F)V

    :cond_0
    return-void
.end method

.method public isCoverScrollUp()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->isScrollUp()Z

    move-result v0

    goto :goto_0
.end method

.method public isNoItemView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsNoItemView:Z

    return v0
.end method

.method public isShared()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCurrentBaseMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->isShared()Z

    move-result v0

    return v0
.end method

.method public isSharedProgressView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareProgress:Z

    return v0
.end method

.method public isSharedWaitingView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsWaitingView:Z

    return v0
.end method

.method public needRefreshFriendsBar()Z
    .locals 6

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getSharedContacts()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->getAddedFriendObj()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->getAddedFriendObj()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v1, v5, :cond_4

    if-lt v0, v5, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    if-le v1, v0, :cond_3

    goto :goto_0
.end method

.method public notifyUploadCnt(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->notifyUploadCnt(II)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onBackPressed()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_EVENT_SHARE:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->stopShareRetryProgress()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->stopShareRefreshProgressForDownloading()V

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventNotificationView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->remove()V

    :cond_1
    return v0
.end method

.method protected onCreate(II)V
    .locals 13

    const/4 v12, 0x0

    const/4 v8, 0x5

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setValidView()V

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onCreate(II)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGlComposeViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mComposeViewItemAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->setAccessibilityNodeInfoListener(Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;)V

    const/16 v6, 0x9

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->createGlGenericMotionListener(I)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v2

    const/16 v6, 0xa

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->createGlGenericMotionListener(I)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v4

    new-instance v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;

    invoke-direct {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;-><init>()V

    invoke-virtual {v6, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->setLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->setContext(Landroid/content/Context;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCurrentBaseMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->setMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->setExpanded(Z)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsChannelPhotoView:Z

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->setIsChannelPhotoView(Z)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->setFriendsGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->setHLVGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->build()Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_DREAM_EVENT_LAYOUT:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x7

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->createGlGenericMotionListener(I)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v3

    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->createGlGenericMotionListener(I)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v5

    new-instance v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;

    invoke-direct {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;-><init>()V

    invoke-virtual {v6, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->setLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->setGridGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->setTimelineGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mTimelineToggleClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->setTimelineClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGridToggleClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->setGridClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject$Builder;->build()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    :goto_0
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_EVENT_SHARE:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->createGlGenericMotionListener(I)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionProgressCancel:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    new-instance v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;

    invoke-direct {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;-><init>()V

    invoke-virtual {v6, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;->setLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;->setContext(Landroid/content/Context;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionProgressCancel:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;->setDeleteGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;->setExpanded(Z)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$Builder;->build()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    new-instance v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;

    invoke-direct {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;-><init>()V

    invoke-virtual {v6, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;->setLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;->setContext(Landroid/content/Context;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;->setExpanded(Z)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;->build()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    new-instance v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$Builder;

    invoke-direct {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$Builder;-><init>()V

    invoke-virtual {v6, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$Builder;->setLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$Builder;->setContext(Landroid/content/Context;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$Builder;->setExpanded(Z)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$Builder;->build()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    const v7, 0x7f100192

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    new-instance v6, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCurrentBaseMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-direct {v6, v7, v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)V

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-virtual {v6, p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->setPhotoView(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getSharedContacts()V

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mLiveChannel:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCurrentBaseMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    const v8, 0x7f02011a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->createCover(Landroid/graphics/Bitmap;I)V

    :goto_1
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_DREAM_EVENT_LAYOUT:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setCoverObjectTitleName(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDatePeriod:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setDatePeriod(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelImageCount:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelVideoCount:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setImageVideoCount(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_DREAM_EVENT_LAYOUT:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_1
    :goto_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->moveToLast()V

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$ChannelViewListener;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$ChannelViewListener;

    invoke-interface {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$ChannelViewListener;->onInit()V

    :goto_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setInitScreenOrientation(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v6

    const-string/jumbo v7, "RESET_SHARED_FRIENDSBAR"

    invoke-virtual {v6, v7, v12}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsVisibleSuggestionCard:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->createGlGenericMotionListener(I)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionSuggestionAddAll:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-direct {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->createGlGenericMotionListener(I)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionSuggestionCancel:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->createGlGenericMotionListener(I)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionSuggestionImage:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    new-instance v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;

    invoke-direct {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;-><init>()V

    invoke-virtual {v6, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->setLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->setContext(Landroid/content/Context;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mListenerSuggestionCancelClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->setCancelClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mListenerSuggestionAddAllClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->setAddAllClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mListenerSuggestionThumbClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->setThumbClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionSuggestionCancel:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->setDeleteGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionSuggestionAddAll:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->setAddAllGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionSuggestionImage:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->setImageGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->setPositionController(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;->build()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->drawSuggestionCard()V

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_GRACE_EVENT_LAYOUT:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isResumeFromBack:Z

    invoke-virtual {v6, v11, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->createSuggestionCard(ZZ)V

    :goto_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getBitmapListener()Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setLoaderBitmapListener(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;)V

    :cond_3
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_EVENT_SHARE:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-virtual {v6, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setVisibility(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-virtual {v6, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setVisibility(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    invoke-virtual {v6, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;->setVisibility(Z)V

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsWaitingView:Z

    if-eqz v6, :cond_f

    invoke-virtual {p0, v10, v10, v10, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->startShareProgress(ZZII)V

    :cond_5
    :goto_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mScaleAnim:Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;

    new-instance v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$11;

    invoke-direct {v7, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$11;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getVisibleMarginTop(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setHoverScrollFlexibleHeightMargin(I)V

    new-instance v6, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-void

    :cond_6
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_GRACE_EVENT_LAYOUT:Z

    if-eqz v6, :cond_7

    const/4 v6, 0x6

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->createGlGenericMotionListener(I)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v1

    invoke-direct {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->createGlGenericMotionListener(I)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionFriendMore:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    new-instance v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;

    invoke-direct {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;-><init>()V

    invoke-virtual {v6, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;->setLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;->setContext(Landroid/content/Context;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionFriendMore:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;->setMoreGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;->setExpanded(Z)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;->build(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v6, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->createGlGenericMotionListener(I)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionFriendMore:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    new-instance v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;

    invoke-direct {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;-><init>()V

    invoke-virtual {v6, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->setLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->setContext(Landroid/content/Context;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGenericMotionFriendMore:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->setMoreGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->setExpanded(Z)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->build(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v6, v12, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->createCover(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_1

    :cond_9
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_GRACE_EVENT_LAYOUT:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setCoverObjectTitleName(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDatePeriod:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setDatePeriod(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelImageCount:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelVideoCount:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setImageVideoCount(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setCoverObjectTitleName(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_GRACE_EVENT_LAYOUT:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->createChannelDetailInfoBG()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v6, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setVisibility(Z)V

    goto/16 :goto_3

    :cond_c
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_EVENT_SHARE:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->createSharedFriendBG()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v6, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->setVisibility(Z)V

    goto/16 :goto_3

    :cond_d
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v6, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setCoverTitleObjectVisibility(Z)V

    goto/16 :goto_4

    :cond_e
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->getVisibility()Z

    move-result v7

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isResumeFromBack:Z

    invoke-virtual {v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->createSuggestionCard(ZZ)V

    goto/16 :goto_5

    :cond_f
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mRunningUpload:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mTotalCnt:I

    invoke-virtual {p0, v11, v10, v6, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->startShareProgress(ZZII)V

    goto/16 :goto_6
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setCheckShareEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/16 v4, 0xa8

    if-eq p1, v4, :cond_0

    const/16 v4, 0xa9

    if-eq p1, v4, :cond_0

    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isScreenLocked()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x42

    if-eq p1, v4, :cond_3

    const/16 v4, 0x17

    if-ne p1, v4, :cond_b

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ltz v4, :cond_8

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setExpansionMode(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isLocationFocused:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mMode:I

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mOnLocationItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLocationItemClickListener;

    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mOnLocationItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLocationItemClickListener;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v4

    invoke-interface {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLocationItemClickListener;->onLocationItemClick(I)Z

    move v2, v3

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mMode:I

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-interface {v4, v5, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->prepareAnimation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isStartAnimationNow()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->startEnlargeAnimation()V

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-interface {v4, v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v4, v5, v6, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_7
    :goto_1
    move v2, v3

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isAddContactBtn()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v4, "SHOW_SHARED_FRIENDS_LIST"

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsVisibleSuggestionCard:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->isFocusBorderVisible()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->handleOnClick()V

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->getFocusBorderVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->handleOnCancelClick()V

    goto :goto_1

    :cond_b
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method protected onMessageExtra(III)V
    .locals 3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->updateCoverImage(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mVirtualView:Lcom/sec/android/gallery3d/ui/VirtualView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mVirtualView:Lcom/sec/android/gallery3d/ui/VirtualView;

    invoke-interface {v0, v2}, Lcom/sec/android/gallery3d/ui/VirtualView;->setReadyCoverBitmap(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mVirtualView:Lcom/sec/android/gallery3d/ui/VirtualView;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/VirtualView;->sendCoverBitmapToHighlightVideo()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareProgress:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setVisibility(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsVisibleSuggestionCard:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setVisibility(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareRetryProgress:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setVisibility(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareRefreshProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;->setVisibility(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method protected onMoved(II)Z
    .locals 2

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_EVENT_SHARE:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->hasSharedContacts()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onMoved(II)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getReachedBoundary()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mProgressStartPos:I

    if-nez v1, :cond_2

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mProgressStartPos:I

    :cond_2
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mProgressStartPos:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->startShareRetryProgress(I)V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onMoved(II)Z

    move-result v1

    goto :goto_0
.end method

.method protected onReleased(IIII)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_EVENT_SHARE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mProgressStartPos:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->hasSharedContacts()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->stopShareRetryProgress()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onReleased(IIII)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->refreshShareProgress()V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onReleased(IIII)Z

    move-result v0

    goto :goto_0
.end method

.method public onSurfaceChanged(II)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isResumeFromBack:Z

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onSurfaceChanged(II)V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsVisibleSuggestionCard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->pause()V

    :cond_0
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->pause()V

    return-void
.end method

.method public refreshShareProgress()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->checkDownloadRequired()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mOnRefreshListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnRefreshListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnRefreshListener;->onRefresh()V

    :cond_0
    return-void
.end method

.method public removeProgressBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->removeProgressBar()V

    :cond_0
    return-void
.end method

.method public removeSharedFriendsAllChild()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->removeAllChild()V

    :cond_0
    return-void
.end method

.method public removeSharedFriendsBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->removeAllFriendObj()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->setVisibility(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->resetLayout()V

    :cond_0
    return-void
.end method

.method protected resetLayout()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNotNeedToResetLayout:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$ChannelViewListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$ChannelViewListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$ChannelViewListener;->onUpdate()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setValidView()V

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getVisibleMarginTop(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setHoverScrollFlexibleHeightMargin(I)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isResumeFromBack:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->resetSuggestionObject()V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->resetLayout(FZ)V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->resetLayout(FZ)V

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->resetLayout(FZ)V

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isNoItemView()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->resetLayout()V

    :cond_7
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_EVENT_SHARE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareProgress:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->resetLayout(FZ)V

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareRetryProgress:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->resetLayout(FZ)V

    :cond_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareRefreshProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;->resetLayout(FZ)V

    goto/16 :goto_0
.end method

.method resetScrollBar()V
    .locals 8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseQuickScroll:Z

    if-eqz v0, :cond_3

    const/4 v7, 0x0

    :goto_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mWideMode:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mWidth:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mHeight:I

    if-lt v0, v1, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getActionBarHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mHeightViewRatio:F

    mul-float v5, v0, v1

    :goto_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setRightPadding(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mWidthViewRatio:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mHeightViewRatio:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mWidthSpace:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mHeightSpace:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginBtm()F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->reset(FFFFFF)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->updateQuickPopupText()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b035e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->convX(I)F

    move-result v7

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getPhotoCoverHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mHeightViewRatio:F

    mul-float v5, v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginTop()F

    move-result v5

    goto :goto_2
.end method

.method public resetSharedFriendsBar()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsShrinkAnim:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isResumeFromBack:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getSharedContacts()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsShrinkAnim:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isResumeFromBack:Z

    if-eqz v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_DREAM_EVENT_LAYOUT:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_GRACE_EVENT_LAYOUT:Z

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->drawChannelDetailGroup()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->drawAddBtnIcon()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->drawAddedFriendIcon()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->resetLayout(FZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->resetLayout()V

    goto :goto_0
.end method

.method resetSuggestionObject()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isResumeFromBack:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsVisibleSuggestionCard:Z

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_EVENT_SHARE:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->hasSharedContacts()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->getVisibility()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getCheckShareEvent()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_GRACE_EVENT_LAYOUT:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v1, v3, v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->resetLayout(FZZ)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->hasSharedContacts()Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->resetLayout(FZZ)V

    goto :goto_1
.end method

.method public setBaseMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCurrentBaseMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-void
.end method

.method public setChannelDatePeriod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDatePeriod:Ljava/lang/String;

    return-void
.end method

.method public setChannelID(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelId:I

    return-void
.end method

.method public setChannelItemCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelImageCount:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelVideoCount:Ljava/lang/String;

    return-void
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelName:Ljava/lang/String;

    return-void
.end method

.method public setCheckShareEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isEventShare:Z

    return-void
.end method

.method public setCoverTitleObjectVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setCoverTitleObjectVisibility(Z)V

    :cond_0
    return-void
.end method

.method setFocusedSuggestionCardObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mFocusSuggestioncardObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-void
.end method

.method public setHasHighlightVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mHasHighlightVideo:Z

    return-void
.end method

.method public setIsRunningUpload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mRunningUpload:Z

    return-void
.end method

.method public setLiveChannel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mLiveChannel:Z

    return-void
.end method

.method public setMode(IILjava/lang/Object;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseRenameInEventPhotoView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setTitleRippleEffect(Z)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setTitleRippleEffect(Z)V

    goto :goto_0
.end method

.method public setOnCoverScrollListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setOnCoverScrollListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;)V

    goto :goto_0
.end method

.method public setOnGridToggleClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnGridToggleClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mOnGridToggleClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnGridToggleClickListener;

    return-void
.end method

.method public setOnTimelineToggleClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnTimelineToggleClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mOnTimelineToggleClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnTimelineToggleClickListener;

    return-void
.end method

.method public setShareTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mTotalCnt:I

    return-void
.end method

.method public setSharedEmptyView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsSharedEmptyView:Z

    return-void
.end method

.method public setSharedFailedView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsFailedView:Z

    return-void
.end method

.method public setSharedFriendsListViewVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsListViewVisible:Z

    return-void
.end method

.method public setSharedWaitingView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsWaitingView:Z

    return-void
.end method

.method public setSuggestionSet(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setSuggestionCardVisibility(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCurrentSuggestionMediaSet:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setSuggestionCardVisibility(Z)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCurrentSuggestionMediaSet:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$ChannelViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$ChannelViewListener;

    return-void
.end method

.method public setVirtualView(Lcom/sec/android/gallery3d/ui/VirtualView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mVirtualView:Lcom/sec/android/gallery3d/ui/VirtualView;

    return-void
.end method

.method public setVisibleRangeForExtraObject()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsListViewVisible:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->updateFloatingViewBackground()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setVisibleRange(F)V

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_DREAM_EVENT_LAYOUT:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->setVisibleRange()V

    :goto_1
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_EVENT_SHARE:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareProgress:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setVisibleRange(F)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareRetryProgress:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setVisibleRange(F)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareRefreshProgress:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;->setVisibleRange(F)V

    :cond_4
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsVisibleSuggestionCard:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->setVisibleRange(F)V

    :cond_5
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mVirtualView:Lcom/sec/android/gallery3d/ui/VirtualView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mVirtualView:Lcom/sec/android/gallery3d/ui/VirtualView;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/VirtualView;->isValidHighlightVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v2, :cond_8

    const/high16 v1, -0x3bd10000    # -700.0f

    :goto_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    neg-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v2

    int-to-float v0, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_9

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mOutofScreenForHV:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mOutofScreenForHV:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mVirtualView:Lcom/sec/android/gallery3d/ui/VirtualView;

    invoke-interface {v2, v0}, Lcom/sec/android/gallery3d/ui/VirtualView;->moveSearchFilter(F)V

    goto/16 :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_GRACE_EVENT_LAYOUT:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setVisibleRange(F)V

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->setVisibleRange(F)V

    goto/16 :goto_1

    :cond_8
    const v1, -0x3b5d8000    # -1300.0f

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mOutofScreenForHV:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mVirtualView:Lcom/sec/android/gallery3d/ui/VirtualView;

    invoke-interface {v2, v0}, Lcom/sec/android/gallery3d/ui/VirtualView;->moveSearchFilter(F)V

    goto/16 :goto_0
.end method

.method sharedContactSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSharedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startEnlargeAnimation()V
    .locals 10

    const/16 v2, 0x1f

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mVirtualView:Lcom/sec/android/gallery3d/ui/VirtualView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mVirtualView:Lcom/sec/android/gallery3d/ui/VirtualView;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/VirtualView;->enlargeAnim()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const-wide/16 v6, 0x64

    move v4, v3

    move v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "REMOVE_FLOATIONG_INFO_VIEW"

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_EVENT_SHARE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$12;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$12;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_GRACE_EVENT_LAYOUT:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :goto_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsVisibleSuggestionCard:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_2
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_EVENT_SHARE:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareProgress:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_3
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareRetryProgress:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_4
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareRefreshProgress:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_5
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_DREAM_EVENT_LAYOUT:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isShared()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->getObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAllChildObject()[Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v8

    if-eqz v8, :cond_7

    array-length v1, v8

    :goto_2
    if-ge v3, v1, :cond_7

    aget-object v0, v8, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    goto :goto_1

    :cond_7
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startEnlargeAnimation()V

    goto/16 :goto_0
.end method

.method public startShareProgress(ZZII)V
    .locals 9

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isSharedEvent()Z

    move-result v3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsWaitingView:Z

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsFailedView:Z

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsSharedEmptyView:Z

    if-nez v4, :cond_1

    move v4, v8

    :goto_0
    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->createShareProgress(ZZZZZII)V

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareProgress:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->setNeedShowShareProgress(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    sget v1, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mUploadingPercentage:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->updateProgressBar(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setVisibility(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->refreshLayout()V

    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public startShareRefreshProgressForDownloading()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareRefreshProgress:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareRefreshProgress:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->setNeedShowShareRetryProgress(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;->createShareRefreshProgress()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;->startShareRefreshProgressAnimation()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->resetLayout()V

    :cond_0
    return-void
.end method

.method public startShareRetryProgress(I)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "GlComposeChannPhotoView"

    const-string/jumbo v1, "startShareRetryProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->createShareRetryProgress()V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareRetryProgress:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNotNeedToResetLayout:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->setNeedShowShareRetryProgress(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->resetLayout()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNotNeedToResetLayout:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->updateProgressSize(I)V

    :cond_1
    return-void
.end method

.method protected startShrinkAnimation()V
    .locals 2

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startShrinkAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsShrinkAnim:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_GRACE_EVENT_LAYOUT:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_EVENT_SHARE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareProgress:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_3
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareRetryProgress:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_4
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareRefreshProgress:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_5
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsVisibleSuggestionCard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSuggestionObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    goto :goto_1
.end method

.method public stopShareProgress(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->removeShareProgress(Z)V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareProgress:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->setNeedShowShareProgress(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->setVisibility(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->refreshLayout()V

    goto :goto_0
.end method

.method public stopShareRefreshProgressForDownloading()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareRefreshProgress:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareRefreshProgress:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->setNeedShowShareRetryProgress(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;->removeShareRefreshProgress()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRefreshProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->resetLayout()V

    :cond_0
    return-void
.end method

.method public stopShareRetryProgress()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "GlComposeChannPhotoView"

    const-string/jumbo v1, "stopShareRetryProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->removeShareRetryProgress()V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareRetryProgress:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNotNeedToResetLayout:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->setNeedShowShareRetryProgress(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareRetryProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->resetLayout()V

    :cond_0
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNotNeedToResetLayout:Z

    :cond_1
    return-void
.end method

.method public updateCover()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->getCoverItem()V

    :cond_0
    return-void
.end method

.method public updateCoverTitle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setCoverObjectTitleName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->updateTitle()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setCoverObjectTitleName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->updateTitle()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mVirtualView:Lcom/sec/android/gallery3d/ui/VirtualView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mVirtualView:Lcom/sec/android/gallery3d/ui/VirtualView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/VirtualView;->updateCoverTitle(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public updateFloatingViewBackground()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mUpdateChannelFloatingListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnUpdateChannelFloatingViewListerner;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mUpdateChannelFloatingListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnUpdateChannelFloatingViewListerner;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnUpdateChannelFloatingViewListerner;->updateFloatingViewBackground(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateGridTimelineText()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->updateTextColor()V

    :cond_0
    return-void
.end method

.method public updateHVPlayIcon(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->updateHVPlayIcon(Z)V

    :cond_0
    return-void
.end method

.method public updateHighLightVideoObjectVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->updateHighLightVideoObjectVisibility(Z)V

    :cond_0
    return-void
.end method

.method public updateShareProgressBar(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->updateProgressBar(I)V

    :cond_0
    return-void
.end method

.method protected updateSize(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "GlComposeChannPhotoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateSize(I)V

    if-nez p1, :cond_6

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsNoItemView:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->updateCoverImage(Z)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDatePeriod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setDatePeriod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelImageCount:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelVideoCount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setImageVideoCount(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->resetLayout(FZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getHasHighlightVideo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->updateHighLightVideoObjectVisibility(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddFriendObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->resetLayout(FZ)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setCoverObjectTitleName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDatePeriod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setDatePeriod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelImageCount:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelVideoCount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setImageVideoCount(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelDetailInfoObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->resetLayout(FZ)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCurrentBaseMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setVisibility(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->stopShareRetryProgress()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mNeedShowShareProgress:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mAddShareProgressObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->resetLayout(FZ)V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->resetLayout()V

    :cond_5
    return-void

    :cond_6
    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsNoItemView:Z

    goto/16 :goto_0
.end method

.method public updateTimelineGridTextColor()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mChannelGridTimelineObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelGridTimelineObject;->updateTextColor(Z)V

    :cond_0
    return-void
.end method
