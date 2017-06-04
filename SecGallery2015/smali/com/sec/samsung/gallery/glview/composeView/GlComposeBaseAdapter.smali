.class public abstract Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
.super Ljava/lang/Object;
.source "GlComposeBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;
    }
.end annotation


# static fields
.field protected static final BOLD_FONT_START_END_PADDING:I

.field protected static final BROKEN_TYPE_CLOUD_ONLY:I = 0x3

.field public static final BROKEN_TYPE_IMAGE:I = 0x1

.field protected static final BROKEN_TYPE_MOVIE:I = 0x2

.field public static final BROKEN_TYPE_NOT_BROKEN:I = 0x0

.field protected static final DEFALUT_ITEM_COL_FOR_PLAYICON:I

.field protected static final FEATURE_IS_DUALSCREEN:Z

.field protected static final FEATURE_USE_GRACE_DECOR:Z

.field public static final FOR_ALBUMLIST:I = 0x1

.field public static final FOR_CATEGORYVIEW:I = 0x4

.field public static final FOR_CHANNELVIEW:I = 0x5

.field public static final FOR_COPY_MOVE_ALBUMLIST:I = 0x6

.field public static final FOR_EVENTVIEW:I = 0x3

.field public static final FOR_TIMEVIEW:I = 0x2

.field protected static final MAX_PHOTO_NUMBER_IN_ALBUM:I = 0x270f

.field protected static final MAX_PHOTO_NUMBER_IN_ALBUM_STRING:Ljava/lang/String;

.field public static final REQ_DEFAULT:I = 0x0

.field public static final REQ_SHRINK:I = 0x3

.field public static final REQ_STRETCH:I = 0x2

.field protected static final RES_ID_ALBUM_LABEL:I = 0x1

.field protected static final RES_ID_ALBUM_LABEL_COUNT:I = 0xe

.field protected static final RES_ID_ALBUM_LOCATION:I = 0x10

.field protected static final RES_ID_ALBUM_LOCATION_ICON:I = 0x11

.field protected static final RES_ID_ATTR_ICON:I = 0x4

.field protected static final RES_ID_ATTR_SECOND_ICON:I = 0x13

.field protected static final RES_ID_BORDER:I = 0xd

.field protected static final RES_ID_CHANNEL_CARD_DOT_ICON:I = 0x131

.field protected static final RES_ID_CHANNEL_CARD_GROUP_ICON:I = 0x132

.field protected static final RES_ID_CHANNEL_OWNER_NAME_DIVIDER:I = 0x138

.field protected static final RES_ID_CHANNEL_OWNER_NAME_TEXT:I = 0x137

.field protected static final RES_ID_CHANNEL_RECEIVE_EVENT_DESCRIPTION:I = 0x135

.field protected static final RES_ID_CHANNEL_RECEIVE_EVENT_TITLE:I = 0x134

.field protected static final RES_ID_CHANNEL_SENDER_PERSON_THUMB:I = 0x133

.field protected static final RES_ID_CHANNEL_SHARED_MEMBER_COUNT:I = 0x136

.field protected static final RES_ID_CHANNEL_SHARED_PERSON_ICON:I = 0x12d

.field protected static final RES_ID_CHANNEL_SHARED_PERSON_THUMB:I = 0x12c

.field protected static final RES_ID_CHANNEL_SUB_TITLE_TEXT:I = 0x130

.field protected static final RES_ID_CHANNEL_TITLE_TEXT:I = 0x12f

.field protected static final RES_ID_CHECKED:I = 0x9

.field protected static final RES_ID_COMMENT_COUNT_VIEW_COUNT:I = 0x194

.field protected static final RES_ID_COMMENT_COUNT_VIEW_ICON:I = 0x193

.field protected static final RES_ID_COUNT_LABEL:I = 0x2

.field protected static final RES_ID_CREATE_ALBUM:I = 0x14

.field protected static final RES_ID_CREATE_PLUS_ICON_STROKE:I = 0x15

.field protected static final RES_ID_DELETE:I = 0xb

.field protected static final RES_ID_DUAL_SCREEN_FOCUS_BOX:I = 0x69

.field protected static final RES_ID_EVENT_SUB_TITLE_TEXT:I = 0xcd

.field protected static final RES_ID_EVENT_SUGGESTION_BG:I = 0xc9

.field protected static final RES_ID_EVENT_SUGGESTION_TEXT:I = 0xca

.field protected static final RES_ID_EVENT_TITLE_BUTTON_TEXT:I = 0xce

.field protected static final RES_ID_EVENT_TITLE_TEXT:I = 0xcc

.field protected static final RES_ID_EXPIRES_DATE_MARK:I = 0x139

.field protected static final RES_ID_EXPIRES_DATE_TEXT:I = 0x13a

.field protected static final RES_ID_LAST_COMMENT_PERSON_VIEW:I = 0x195

.field protected static final RES_ID_LAST_COMMENT_TEXT_VIEW:I = 0x196

.field protected static final RES_ID_LIKE_VIEW_COUNT:I = 0x192

.field protected static final RES_ID_MASTER_EVENT_MARK:I = 0x13b

.field protected static final RES_ID_MASTER_EVENT_TEXT:I = 0x13c

.field protected static final RES_ID_NEW_ALBUM_DIMMER:I = 0x65

.field protected static final RES_ID_NEW_MARK:I = 0x6

.field protected static final RES_ID_NEW_MARK_ON_TITLE:I = 0x16

.field protected static final RES_ID_NEW_TEXT:I = 0xc

.field protected static final RES_ID_NEW_TEXT_ON_TITLE:I = 0x17

.field protected static final RES_ID_OWNER_NAME:I = 0x191

.field protected static final RES_ID_OWNER_PICTURE:I = 0x190

.field protected static final RES_ID_PLAY_ICON:I = 0x3

.field protected static final RES_ID_SCLOUD:I = 0x18

.field protected static final RES_ID_SCLOUD_UPLOAD:I = 0x19

.field protected static final RES_ID_SEARCH_DIVIDER:I = 0x1f5

.field protected static final RES_ID_SEARCH_IMAGE_TEXT:I = 0x1f4

.field protected static final RES_ID_SEARCH_VIDEO_TEXT:I = 0x1f6

.field protected static final RES_ID_SECRET:I = 0xa

.field protected static final RES_ID_SELECTED_COUNT:I = 0x7

.field protected static final RES_ID_SELECTED_VIEW_FOR_LOGICAL_ALBUM:I = 0x1a

.field protected static final RES_ID_SOCIAL_STORY_MARK:I = 0x13d

.field protected static final RES_ID_SOCIAL_STORY_MARK_TEXT:I = 0x13e

.field protected static final RES_ID_THUMB_STROKE:I = 0x12

.field protected static final RES_ID_VIDEO_DURATION:I = 0xf

.field protected static final RES_SUBID_TEXT:I = 0x1

.field protected static final ST_DISABLED:I = 0x2

.field protected static final ST_SELECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GlComposeBaseAdapter"

.field public static final VIEW_ALBUM_GROUP:I = -0x1

.field public static final VIEW_ALBUM_LOCATION:I = -0x5

.field protected static final VIEW_ALBUM_SEL_COUNT:I = -0x4

.field public static final VIEW_ALBUM_TITLE:I = -0x2

.field protected static sDefaultPlayIconWidth:I


# instance fields
.field private mActive:Z

.field protected mAlbumMode:Z

.field protected mCategoryMode:Z

.field protected final mContext:Landroid/content/Context;

.field protected mCurItemWidthForPlayIcon:I

.field protected final mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

.field protected final mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

.field protected mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

.field protected mEasyMode:Z

.field private mEnabledResStroke:Z

.field private mGenericMotionFocus:I

.field private mGenericMotionFocusHLVideoIcon:I

.field private mGenericMotionFocusTitleButton1:I

.field private mGenericMotionFocusTitleButton2:I

.field private mGenericMotionLocationFocus:I

.field private mGenericMotionTitleFocus:I

.field private mGrpVisibleEnd:I

.field private mGrpVisibleStart:I

.field protected mIsAlbumCopyMoveMode:Z

.field protected mIsValidForPlayIcon:Z

.field protected final mResources:Landroid/content/res/Resources;

.field public final mSourceListener:Lcom/sec/android/gallery3d/data/ContentListener;

.field protected mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, -0x1

    sput v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->sDefaultPlayIconWidth:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->DEFALUT_ITEM_COL_FOR_PLAYICON:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_0
    :goto_1
    sput v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->BOLD_FONT_START_END_PADDING:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->FEATURE_IS_DUALSCREEN:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceDecorView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->FEATURE_USE_GRACE_DECOR:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x270f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->MAX_PHOTO_NUMBER_IN_ALBUM_STRING:Ljava/lang/String;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionFocus:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionTitleFocus:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionLocationFocus:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionFocusTitleButton1:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionFocusTitleButton2:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionFocusHLVideoIcon:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mActive:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mEasyMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mAlbumMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mCategoryMode:Z

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mEnabledResStroke:Z

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mIsAlbumCopyMoveMode:Z

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mSourceListener:Lcom/sec/android/gallery3d/data/ContentListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mResources:Landroid/content/res/Resources;

    if-eq p4, v2, :cond_0

    if-ne p4, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mAlbumMode:Z

    if-ne p4, v3, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mCategoryMode:Z

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mEasyMode:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    invoke-direct {v0, p1}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method private addContentListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    const-string/jumbo v0, "GlComposeBaseAdapter"

    const-string/jumbo v1, "addContentListener : mSource is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mSourceListener:Lcom/sec/android/gallery3d/data/ContentListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    goto :goto_0
.end method

.method private removeContentListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    const-string/jumbo v0, "GlComposeBaseAdapter"

    const-string/jumbo v1, "removeContentListener : mSource is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mSourceListener:Lcom/sec/android/gallery3d/data/ContentListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    goto :goto_0
.end method


# virtual methods
.method public applyMediaSetInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->applyMediaSetInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    return-void
.end method

.method public drawCloudIcon(Lcom/sec/android/gallery3d/glcore/GlView;II)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 0

    return-object p1
.end method

.method public abstract drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/glcore/GlView;
.end method

.method public enableResStroke(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mEnabledResStroke:Z

    return-void
.end method

.method public getAllCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllItem(IZ)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllItemCount(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCropRect(IILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)V
    .locals 0

    return-void
.end method

.method public getCurrentInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getMediaSetInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    return-void
.end method

.method public getCurrentState(II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultAlbumSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFirstReloadSkipEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstReloadSkip:Z

    return v0
.end method

.method public getGenericMotionFocus()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionFocus:I

    return v0
.end method

.method public getGenericMotionFocusHLVideoIcon()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionFocusHLVideoIcon:I

    return v0
.end method

.method public getGenericMotionFocusTitleButton1()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionFocusTitleButton1:I

    return v0
.end method

.method public getGenericMotionFocusTitleButton2()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionFocusTitleButton2:I

    return v0
.end method

.method public getGenericMotionLocationFocus()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionLocationFocus:I

    return v0
.end method

.method public getGenericMotionTitleFocus()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionTitleFocus:I

    return v0
.end method

.method public getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemImage(II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaSetHasLatLng(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMediaSetLocation(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaSetName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNewAlbumList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getNewAlbumList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getPhotoNumberLabel(I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x270f

    if-le p1, v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->MAX_PHOTO_NUMBER_IN_ALBUM_STRING:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getAlbumNumber(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScreenNailImage()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectableAlbumCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSmallItemList(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseSmartClustering:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getSmallItemList(I)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseStoryRealRatioClustering:Z

    if-eqz v2, :cond_2

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getSmallItemList()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getSmallItemList(I)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(IILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlLayer;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Z)Z
.end method

.method public abstract getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;ZZ)Z
.end method

.method public getVisibleInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getMediaSetInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGrpVisibleStart:I

    iput v0, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGrpVisibleEnd:I

    iput v0, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mActive:Z

    return v0
.end method

.method public isEnabledResStroke()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mEnabledResStroke:Z

    return v0
.end method

.method protected notifyLayoutChanged()V
    .locals 0

    return-void
.end method

.method public onDrawSocialStoryInfoView(Lcom/sec/android/gallery3d/data/ChannelAlbum;Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->onPause(Z)V

    return-void
.end method

.method public declared-synchronized onPause(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mActive:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->removeContentListener()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->onPause(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mActive:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->enableResStroke(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->addContentListener()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->onResume()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->notifyLayoutChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public refreshAlbumSet()V
    .locals 0

    return-void
.end method

.method public reloadData()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->reloadData()V

    return-void
.end method

.method public requestScreenNailUrgent(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestThumbnailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setActiveWindow(IIIIZZ)V
    .locals 7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setActiveWindow(IIIIZZ)V

    return-void
.end method

.method public setDualScreenFocusPath(Lcom/sec/android/gallery3d/data/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method public setEasyMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mEasyMode:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mEasyMode:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->notifyLayoutChanged()V

    :cond_0
    return-void
.end method

.method public setFirstIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iput p1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstIndex:I

    return-void
.end method

.method public setFirstLoadingCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iput p1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoadCount:I

    return-void
.end method

.method public setFirstLoadingValues(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iput p1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoadRowCount:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iput p2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoadColumnCount:I

    return-void
.end method

.method public setGenericMotionFocus(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionFocus:I

    return-void
.end method

.method public setGenericMotionFocusHLVideoIcon(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionFocusHLVideoIcon:I

    return-void
.end method

.method public setGenericMotionFocusTitleButton1(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionFocusTitleButton1:I

    return-void
.end method

.method public setGenericMotionFocusTitleButton2(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionFocusTitleButton2:I

    return-void
.end method

.method public setGenericMotionLocationFocus(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionLocationFocus:I

    return-void
.end method

.method public setGenericMotionTitleFocus(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGenericMotionTitleFocus:I

    return-void
.end method

.method public setGrpVisibleRange(II)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGrpVisibleStart:I

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mGrpVisibleEnd:I

    return-void
.end method

.method public setHeaderItem(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setIgnoreSkip()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIgnoreSkip:Z

    return-void
.end method

.method public setItemWidthForPlayIcon(IZ)V
    .locals 0

    return-void
.end method

.method public setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V

    return-void
.end method

.method public final setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V

    return-void
.end method

.method public setScreenNailImage(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;I)V
    .locals 0

    return-void
.end method

.method public abstract setThumbReslevel(I)V
.end method

.method public setThumbSizeType(B)V
    .locals 0

    return-void
.end method

.method public final setViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;)V

    return-void
.end method

.method public setZoomLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setZoomLevel(I)V

    return-void
.end method

.method public declared-synchronized terminateDataLoader()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->terminate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateSocialStoryViewInfo(IILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;I)V
    .locals 0

    return-void
.end method
