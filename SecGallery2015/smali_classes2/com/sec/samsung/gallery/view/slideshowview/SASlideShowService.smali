.class public Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;
.super Landroid/app/Service;
.source "SASlideShowService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;,
        Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;
    }
.end annotation


# static fields
.field static final ACTION_ADD_GLSURFACE_VIEW:Ljava/lang/String; = "ACTION_ADD_GLSURFACE_VIEW"

.field public static final ACTION_PRESENTATION_VIDEO_VIEW:Ljava/lang/String; = "ACTION_PRESENTATION_VIDEO_VIEW"

.field static final ACTION_REMOVE_PRESENTATION_VIDEO_VIEW:Ljava/lang/String; = "ACTION_REMOVE_PRESENTATION_VIDEO_VIEW"

.field private static final COMMAND_PAUSE:I = 0xb

.field private static final COMMAND_RESUME:I = 0xa

.field private static final COMMAND_STOP:I = 0x9

.field private static final DELAY_HIDE_MSG:I = 0x1388

.field private static final FEATURE_USE_ONGOING_NOTIFICATION:Z

.field private static final KEY_COMMAND:Ljava/lang/String; = "key_method"

.field public static final KEY_DISPLAY_ID:Ljava/lang/String; = "key_display_id"

.field private static final MSG_HIDE_CLOSE_BUTTON:I = 0x0

.field private static final NOTIFICATION_ID:I = 0x270f

.field private static final SLIDESHOW_START_ACTION:Ljava/lang/String; = "com.samsung.android.gallery.action.slideshow.start"

.field private static final TAG:Ljava/lang/String; = "SASlideShowService"

.field private static final USE_MULTIWINDOW:Z

.field private static mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private static mCloseButton:Landroid/widget/Button;

.field private static mDisplayId:I

.field private static final mHandler:Landroid/os/Handler;

.field private static mIsServiceRunning:Z

.field private static mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;


# instance fields
.field private final MSG_FRAMEVIEW_INVISIBLE:I

.field private final MSG_ROOTVIEW_INVISIBLE:I

.field private mFrameLayoutVideoView:Landroid/widget/FrameLayout;

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mIgnoreBackKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mIsSlideShowVideoPlaying:Z

.field private mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPresentation:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

.field private final mPresentationFocuser:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;

.field private final mPresentationReceiver:Landroid/content/BroadcastReceiver;

.field private mSlideshowPresentationVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

.field final mSurfaceHandler:Landroid/os/Handler;

.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->USE_MULTIWINDOW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSlideshowOnGoingNotification:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->FEATURE_USE_ONGOING_NOTIFICATION:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mHandler:Landroid/os/Handler;

    sput v2, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mDisplayId:I

    sput-boolean v2, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mIsServiceRunning:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mCloseButton:Landroid/widget/Button;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->MSG_ROOTVIEW_INVISIBLE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->MSG_FRAMEVIEW_INVISIBLE:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mIsSlideShowVideoPlaying:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$2;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSurfaceHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentationFocuser:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$3;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$4;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$5;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$5;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mIgnoreBackKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$6;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$6;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$000()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mCloseButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    sput-object p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mCloseButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->clearSlideshowMode()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Landroid/content/DialogInterface$OnKeyListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mIgnoreBackKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    return-object v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->USE_MULTIWINDOW:Z

    return v0
.end method

.method static synthetic access$1600()Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mFrameLayoutVideoView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mFrameLayoutVideoView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mVideoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->startPresentationVideoPlay()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideshowPresentationVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mIsSlideShowVideoPlaying:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mIsSlideShowVideoPlaying:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentation:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    return-object v0
.end method

.method private cancelNotification()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotification:Landroid/app/Notification;

    return-void
.end method

.method private clearSlideshowMode()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->hideNotification()V

    return-void
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    const/4 v7, -0x1

    const/16 v3, 0x7d2

    :try_start_0
    const-class v4, Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v5, "TYPE_FAKE_APPLICATION"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    :goto_0
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const v4, 0x40120

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const v4, 0x800033

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v4, 0x20

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SASlideShowService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createNotification()Landroid/app/Notification;
    .locals 3

    const v2, 0x7f0a03e7

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a03e8

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->getStopIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f0202e5

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private createPlayingNotification(Z)Landroid/app/Notification;
    .locals 3

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f0202e5

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->createSlideShowRemoteViews(Z)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private createSlideShowRemoteViews(Z)Landroid/widget/RemoteViews;
    .locals 11

    const v10, 0x7f120223

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0400e3

    invoke-direct {v6, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v8, "display"

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    sget v8, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mDisplayId:I

    invoke-virtual {v3, v8}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const v8, 0x7f120226

    invoke-virtual {v6, v8, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->getPauseIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v6, v10, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a08b8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v10, v8}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    const v8, 0x7f0202d6

    invoke-virtual {v6, v10, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->getStopIntent()Landroid/app/PendingIntent;

    move-result-object v5

    const v8, 0x7f120222

    invoke-virtual {v6, v8, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v6

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->getResumeIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a08b9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v10, v8}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    const v8, 0x7f0202d7

    invoke-virtual {v6, v10, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method public static getDisplayId()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mDisplayId:I

    return v0
.end method

.method private getPauseIntent()Landroid/app/PendingIntent;
    .locals 4

    const/4 v0, 0x2

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "key_method"

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getResumeIntent()Landroid/app/PendingIntent;
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "key_method"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getStopIntent()Landroid/app/PendingIntent;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "key_method"

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private hideNotification()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotification:Landroid/app/Notification;

    goto :goto_0
.end method

.method public static isServiceRunning()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mIsServiceRunning:Z

    return v0
.end method

.method private pausePresentationVideoPlay()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideshowPresentationVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideshowPresentationVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->pauseVideoPlay()V

    :cond_0
    return-void
.end method

.method private pauseSlideShow()V
    .locals 2

    sget-object v1, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->getGlSlideShowView()Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimationPaused(Z)V

    goto :goto_0
.end method

.method private registerLayoutListener()V
    .locals 4

    const-string/jumbo v2, "SASlideShowService"

    const-string/jumbo v3, "registerLayoutListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private registerPresentationReceiver()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "ACTION_PRESENTATION_VIDEO_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "ACTION_REMOVE_PRESENTATION_VIDEO_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "ACTION_ADD_GLSURFACE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v1, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->getGlSlideShowView()Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;-><init>(Landroid/content/Context;Lcom/sec/samsung/gallery/glview/GlSlideShowView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideshowPresentationVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    :cond_0
    return-void
.end method

.method private static releaseWakeLock()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->releaseWakeLock()V

    :cond_0
    return-void
.end method

.method private resumePresentationVideoPlay()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideshowPresentationVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideshowPresentationVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->resumeVideoPlay()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mFrameLayoutVideoView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mFrameLayoutVideoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mFrameLayoutVideoView:Landroid/widget/FrameLayout;

    :cond_2
    return-void
.end method

.method private resumeSlideShow()V
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->getGlSlideShowView()Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimationPaused(Z)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->startAnimation()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNewGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setSlideShowContent(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    sput-object p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    sput-object p1, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-void
.end method

.method private show(I)V
    .locals 5

    const-string/jumbo v3, "SASlideShowService"

    const-string/jumbo v4, "show presentation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "display"

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    invoke-direct {v3, p0, v1, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;Landroid/content/Context;Landroid/view/Display;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentation:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentation:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentationFocuser:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;

    invoke-virtual {v3, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->sendBroadcast(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentationFocuser:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;

    invoke-virtual {v3, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->registerReceiver(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentation:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->show()V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mIsServiceRunning:Z

    return-void
.end method

.method private showNotification()V
    .locals 3

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-boolean v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->FEATURE_USE_ONGOING_NOTIFICATION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->createPlayingNotification(Z)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotification:Landroid/app/Notification;

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x270f

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->createNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotification:Landroid/app/Notification;

    goto :goto_0
.end method

.method public static showOrHideCloseButton()V
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mCloseButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mCloseButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startPresentationVideoPlay()V
    .locals 5

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideshowPresentationVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->getGlSlideShowView()Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;-><init>(Landroid/content/Context;Lcom/sec/samsung/gallery/glview/GlSlideShowView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideshowPresentationVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideshowPresentationVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->setUri(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentation:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentation:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideshowPresentationVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->access$900(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideshowPresentationVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->bringToFront()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideshowPresentationVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideshowPresentationVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_1
    return-void
.end method

.method public static stopPresentation(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v3, "display"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const-string/jumbo v3, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->releaseWakeLock()V

    return-void
.end method

.method private unregisterLayoutListener()V
    .locals 4

    const-string/jumbo v2, "SASlideShowService"

    const-string/jumbo v3, "unregisterLayoutListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private unregisterPresentationReceiver()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SASlideShowService"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNotification(Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->createPlayingNotification(Z)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x270f

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.gallery.action.slideshow.start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v1, "SASlideShowService"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideshowPresentationVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideshowPresentationVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->finishSlideshowPresentationVideoView()V

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mSlideShowViewState:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->setSlideShowMode(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentation:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentation:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentationFocuser:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;

    invoke-virtual {v1, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->unRegisterReceiver(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentation:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->dismiss()V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentation:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.gallery.action.slideshow.finish"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->unregisterPresentationReceiver()V

    sget-boolean v1, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->USE_MULTIWINDOW:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->unregisterLayoutListener()V

    sput-object v3, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    :cond_3
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->releaseWakeLock()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->clearSlideshowMode()V

    sput-boolean v4, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mIsServiceRunning:Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    const-string/jumbo v1, "SASlideShowService"

    const-string/jumbo v2, "onStartCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->FEATURE_USE_ONGOING_NOTIFICATION:Z

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "key_method"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    if-eq v0, v7, :cond_0

    if-ne v0, v6, :cond_1

    :cond_0
    sget-boolean v1, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mIsServiceRunning:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "SASlideShowService"

    const-string/jumbo v2, "SlideShowService is not running"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->cancelNotification()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->stopSelf()V

    :goto_0
    return v3

    :cond_1
    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->updateNotification(Z)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mIsSlideShowVideoPlaying:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->pausePresentationVideoPlay()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->pauseSlideShow()V

    goto :goto_0

    :cond_3
    if-ne v0, v7, :cond_5

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->updateNotification(Z)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mIsSlideShowVideoPlaying:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->resumePresentationVideoPlay()V

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->resumeSlideShow()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentation:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentation:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    invoke-static {v1, v4}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->access$1002(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentation:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentationFocuser:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;

    invoke-virtual {v1, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->unRegisterReceiver(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mPresentation:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->dismiss()V

    :cond_6
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "key_method"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_7

    const-string/jumbo v1, "SASlideShowService"

    const-string/jumbo v2, "stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->stopSelf()V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "key_display_id"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mDisplayId:I

    :cond_8
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->registerPresentationReceiver()V

    sget-boolean v1, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->USE_MULTIWINDOW:Z

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->registerLayoutListener()V

    :cond_9
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->showNotification()V

    sget v1, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->mDisplayId:I

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->show(I)V

    goto :goto_0
.end method
