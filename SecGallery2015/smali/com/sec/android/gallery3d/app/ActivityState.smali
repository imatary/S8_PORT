.class public abstract Lcom/sec/android/gallery3d/app/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;
    }
.end annotation


# static fields
.field protected static final FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x10

.field protected static final FLAG_HIDE_ACTION_BAR:I = 0x1

.field private static final FLAG_HIDE_STATUS_BAR:I = 0x2

.field protected static final FLAG_IGNORE_ACTION_BAR:I = 0x40

.field protected static final FLAG_IGNORE_SHOW_TAB_VIEW:I = 0x100

.field protected static final FLAG_PLAY_PANORAMA_SHOT:I = 0x80

.field protected static final FLAG_SCREEN_ON_ALWAYS:I = 0x8

.field protected static final FLAG_SHOW_WHEN_LOCKED:I = 0x20

.field protected static final KEY_EVENT_VIEW_ALBUM_BUCKET_ID:Ljava/lang/String; = "KEY_EVENT_VIEW_ALBUM_BUCKET_ID"

.field protected static final KEY_FROM_ALBUM_VIEW_STATE:Ljava/lang/String; = "KEY_FROM_ALBUM_VIEW_STATE"

.field public static final KEY_GALLERY_NOTIFICATION_PREVIEW_SET_PATH:Ljava/lang/String; = "KEY_GALLERY_NOTIFICATION_PREVIEW_SET_PATH"

.field public static final KEY_GROUP_INDEX:Ljava/lang/String; = "KEY_GROUP_INDEX"

.field public static final KEY_IS_ENTER_CHANNEL_PHOTO_VIEW:Ljava/lang/String; = "KEY_IS_ENTER_CHANNEL_PHOTO_VIEW"

.field public static final KEY_IS_ENTER_MTP_PHOTO_VIEW:Ljava/lang/String; = "KEY_IS_ENTER_MTP_PHOTO_VIEW"

.field public static final KEY_IS_ENTER_RECYCLEBIN_PHOTO_VIEW:Ljava/lang/String; = "KEY_IS_ENTER_RECYCLEBIN_PHOTO_VIEW"

.field public static final KEY_IS_ENTER_SCLOUD_PHOTO_VIEW:Ljava/lang/String; = "KEY_IS_ENTER_SCLOUD_PHOTO_VIEW"

.field protected static final KEY_IS_FAKE_LOADING:Ljava/lang/String; = "KEY_IS_FAKE_LOADING"

.field public static final KEY_IS_FROM_CATEGORYVIEW:Ljava/lang/String; = "KEY_IS_FROM_CATEGORYVIEW"

.field public static final KEY_IS_FROM_EVENTVIEW:Ljava/lang/String; = "KEY_IS_FROM_EVENTVIEW"

.field public static final KEY_IS_FROM_EVENT_MAP_VIEW:Ljava/lang/String; = "KEY_IS_FROM_EVENT_MAP_VIEW"

.field protected static final KEY_IS_FROM_FAVORITEVIEW:Ljava/lang/String; = "KEY_IS_FROM_FAVORITEVIEW"

.field public static final KEY_IS_FROM_GALLERY_NOTIFCATION_VIEW:Ljava/lang/String; = "KEY_IS_FROM_GALLERY_NOTIFCATION_VIEW"

.field public static final KEY_IS_FROM_MAP_VIEW:Ljava/lang/String; = "KEY_IS_FROM_MAP_VIEW"

.field public static final KEY_IS_FROM_MESSAGE:Ljava/lang/String; = "KEY_IS_FROM_MESSAGE"

.field protected static final KEY_IS_FROM_NOITEMVIEW:Ljava/lang/String; = "KEY_IS_FROM_NOITEMVIEW"

.field protected static final KEY_IS_FROM_QC_VIEWER:Ljava/lang/String; = "KEY_IS_FROM_QC_VIEWER"

.field public static final KEY_IS_FROM_QUICK_CONNECT:Ljava/lang/String; = "KEY_IS_FROM_QUICK_CONNECT"

.field public static final KEY_IS_FROM_SHORTCUT:Ljava/lang/String; = "KEY_IS_FROM_SHORTCUT"

.field public static final KEY_IS_MAX_SHARED_GROUP:Ljava/lang/String; = "KEY_IS_MAX_EVENT_GROUP"

.field public static final KEY_IS_NEED_TO_DOWNLOAD_EVENT:Ljava/lang/String; = "KEY_IS_NEED_TO_DOWNLOAD_EVENT"

.field protected static final KEY_IS_NEW_CHANNEL_ID:Ljava/lang/String; = "KEY_IS_NEW_CHANNEL_ID"

.field protected static final KEY_IS_RELATED_SEARCH:Ljava/lang/String; = "KEY_IS_RELATED_SEARCH"

.field public static final KEY_IS_SIGHT_MODE:Ljava/lang/String; = "KEY_IS_SIGHT_MODE"

.field public static final KEY_IS_SIGHT_MODE_FROM_DETAIL:Ljava/lang/String; = "KEY_IS_SIGHT_MODE_FROM_DETAIL"

.field public static final KEY_IS_STORY_ID:Ljava/lang/String; = "KEY_IS_STORY_ID"

.field public static final KEY_ITEM_POSITION:Ljava/lang/String; = "KEY_ITEM_POSITION"

.field public static final KEY_ITEM_RCS:Ljava/lang/String; = "KEY_ITEM_RCS"

.field public static final KEY_MAP_VIEW_SUPPORT_VIEW_SELECTED:Ljava/lang/String; = "KEY_MAP_VIEW_SUPPORT_VIEW_SELECTED"

.field protected static final KEY_MAP_VIEW_ZOOM_LEVEL:Ljava/lang/String; = "KEY_MAP_VIEW_ZOOM_LEVEL"

.field public static final KEY_MEDIA_ITEM_BWN_DATE:Ljava/lang/String; = "KEY_MEDIA_ITEM_BWN_DATE"

.field public static final KEY_MEDIA_ITEM_LOCATION:Ljava/lang/String; = "KEY_MEDIA_ITEM_LOCATION"

.field public static final KEY_MEDIA_ITEM_PATH:Ljava/lang/String; = "KEY_MEDIA_ITEM_PATH"

.field public static final KEY_MEDIA_SET_PATH:Ljava/lang/String; = "KEY_MEDIA_SET_PATH"

.field public static final KEY_MEDIA_SET_POSITION:Ljava/lang/String; = "KEY_MEDIA_SET_POSITION"

.field protected static final KEY_MEDIA_SET_POSITION_INIT:I = 0x0

.field protected static final KEY_MEDIA_SET_POSITION_INVALDE:I = -0x1

.field protected static final KEY_NOITEMSVIEW_MIME_TYPE:Ljava/lang/String; = "KEY_NOITEMSVIEW_MIME_TYPE"

.field public static final KEY_NO_SPLIT_MODE:Ljava/lang/String; = "KEY_NO_SPLIT_MODE"

.field public static final KEY_PICK_MEDIA_TYPE:Ljava/lang/String; = "KEY_PICK_MEDIA_TYPE"

.field public static final KEY_SEARCH_CATEGORY:Ljava/lang/String; = "SEARCH_CATEGORY"

.field public static final KEY_SEARCH_KEYWORD:Ljava/lang/String; = "SEARCH_KEYWORD"

.field public static final KEY_SEARCH_LOCATION_TYPE:Ljava/lang/String; = "SEARCH_LOCATION_TYPE"

.field public static final KEY_SEARCH_PERSON_NAME:Ljava/lang/String; = "SEARCH_PERSON_NAME"

.field public static final KEY_SEARCH_SUB_CATEGORY:Ljava/lang/String; = "SEARCH_SUB_CATEGORY"

.field public static final KEY_SEARCH_TRANSLATED_NAME:Ljava/lang/String; = "SEARCH_TRANSLATED_NAME"

.field public static final KEY_SET_NO_ITEM_ACTION_BAR:Ljava/lang/String; = "KEY_SET_NO_ITEM_ACTION_BAR"

.field protected static final KEY_UP_SIDE_ALBUM_COUNT:Ljava/lang/String; = "KEY_UP_SIDE_ALBUM_COUNT"

.field protected static final KEY_VIEW_FACE:Ljava/lang/String; = "KEY_VIEW_FACE"

.field public static final KEY_VIEW_REDRAW:Ljava/lang/String; = "KEY_VIEW_REDRAW"

.field protected static mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

.field protected static mDualScreenFocusSetPath:Lcom/sec/android/gallery3d/data/Path;


# instance fields
.field protected mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

.field protected mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field protected mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

.field protected mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

.field protected mData:Landroid/os/Bundle;

.field private mDestroyed:Z

.field private mDisengageMode:Z

.field protected mFlags:I

.field mIsCreated:Z

.field mIsFinishing:Z

.field protected mIsNoItemViewMode:Z

.field private mIsResumed:Z

.field protected mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

.field private mReceivedResults:Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

.field protected mResult:Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

.field protected mShrinkOption:I

.field protected mUseSpinnerLayout:Z

.field private final onPauseListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/gallery3d/app/GalleryEvent$OnPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onResumeListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/gallery3d/app/GalleryEvent$OnResumeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/app/ActivityState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    sput-object v0, Lcom/sec/android/gallery3d/app/ActivityState;->mDualScreenFocusSetPath:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/GalleryDummyDCHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/GalleryDummyDCHandler;-><init>(Ljava/util/Observer;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/touchevent/GalleryDummyDCTouchEvent;

    invoke-direct {v0, v2}, Lcom/samsung/android/devicecog/gallery/touchevent/GalleryDummyDCTouchEvent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    iput v1, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mShrinkOption:I

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mIsResumed:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mDestroyed:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mIsCreated:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mIsFinishing:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mDisengageMode:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-direct {v0, v2, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->onPauseListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->onResumeListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mUseSpinnerLayout:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mIsNoItemViewMode:Z

    return-void
.end method

.method private postOnPause()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/ActivityState;->onPauseListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryEvent$OnPauseListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryEvent$OnPauseListener;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private postOnResume()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/ActivityState;->onResumeListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryEvent$OnResumeListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryEvent$OnResumeListener;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 0

    return-void
.end method

.method protected finishActivityForWallpaper(Landroid/content/Intent;I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    const-string/jumbo v1, "is_pressed_cancel"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method protected getBackgroundColorId()I
    .locals 1

    const v0, 0x7f1000ab

    return v0
.end method

.method protected getComposeAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentsForFaceTag()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "NONE"

    return-object v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getDisengageMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mDisengageMode:Z

    return v0
.end method

.method public getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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

.method public abstract getSAScreenId()Ljava/lang/String;
.end method

.method public getSelectionManagerFromState()Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShrinkOption()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mShrinkOption:I

    return v0
.end method

.method protected initSpinner()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/app/ActivityState;->initSpinner(Ljava/lang/String;Z)V

    return-void
.end method

.method protected initSpinner(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getNaviSpinner()Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setActionbarTitle(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setSpinnerTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setActionbarTitle()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setSpinnerTitle()V

    goto :goto_0
.end method

.method protected initSpinner(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->initSpinner(Ljava/lang/String;Z)V

    return-void
.end method

.method initialize(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    return-void
.end method

.method isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mDestroyed:Z

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mIsFinishing:Z

    return v0
.end method

.method public isNoItemViewMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mIsNoItemViewMode:Z

    return v0
.end method

.method public isResumed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mIsResumed:Z

    return v0
.end method

.method protected logDCEnterSelectionMode(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->logDCEnterSelectionMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected logDCExitSelectionMode(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->logDCExitSelectionMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public logDCSelectedView(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->logDCSelectedView(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method public onCoverModeChanged()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->terminateDataLoader()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mDestroyed:Z

    return-void
.end method

.method public onDirty()V
    .locals 0

    return-void
.end method

.method public onDirty(Z)V
    .locals 0

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMWLayoutChanged()V
    .locals 0

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mIsResumed:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->EXIT:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    invoke-static {v0, v1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCState(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V

    return-void
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mIsResumed:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->ENTER:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    invoke-static {v0, v1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCState(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method pause()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->postOnPause()V

    return-void
.end method

.method public registerOnPauseListener(Lcom/sec/android/gallery3d/app/GalleryEvent$OnPauseListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->onPauseListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerOnResumeListener(Lcom/sec/android/gallery3d/app/GalleryEvent$OnResumeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->onResumeListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method resume()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v5, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_1

    iget v5, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getResumeStateThroughActivityLifeCycle()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setShowHideAnimationEnabled(Z)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setShowHideAnimationEnabled(Z)V

    :cond_1
    :goto_0
    iget v5, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    :goto_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/sec/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

    # getter for: Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->requestCode:I
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->access$200(Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;)I

    move-result v4

    # getter for: Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->access$000(Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;)I

    move-result v5

    # getter for: Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->access$100(Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/gallery3d/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->postOnResume()V

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, p0, Lcom/sec/android/gallery3d/app/TabActivityState;

    if-eqz v4, :cond_7

    move-object v4, p0

    check-cast v4, Lcom/sec/android/gallery3d/app/TabActivityState;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/TabActivityState;->isTabEnabledActivityState()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->isFestivalMode()Z

    move-result v4

    if-nez v4, :cond_7

    iget v4, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit16 v4, v4, 0x100

    if-nez v4, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->showTab()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit16 v4, v4, -0x101

    iput v4, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mFlags:I

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->hideTab()V

    goto :goto_2
.end method

.method protected setContentPane(Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->getBackgroundColorId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/ui/GLView;->setBackgroundColor([F)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/ui/GLRoot;->setContentPane(Lcom/sec/android/gallery3d/ui/GLView;)V

    return-void
.end method

.method public setDisengageMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mDisengageMode:Z

    return-void
.end method

.method public setPromptRequest(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected setStateResult(ILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mResult:Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mResult:Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

    # setter for: Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I
    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->access$002(Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;I)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->mResult:Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;

    # setter for: Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;
    invoke-static {v0, p2}, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->access$102(Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public startDetailViewViaSmartView(Lcom/sec/android/gallery3d/data/Path;)V
    .locals 0

    return-void
.end method

.method public startExpandAction()V
    .locals 0

    return-void
.end method

.method public startShrinkAction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected terminateDataLoader()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->getComposeAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->getComposeAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->terminateDataLoader()V

    :cond_0
    return-void
.end method

.method public unregisterOnPauseListener(Lcom/sec/android/gallery3d/app/GalleryEvent$OnPauseListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->onPauseListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterOnResumeListener(Lcom/sec/android/gallery3d/app/GalleryEvent$OnResumeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState;->onResumeListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected updateActionBarFromNoItemViewMode()V
    .locals 0

    return-void
.end method

.method protected updateDualScreenFocus(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
