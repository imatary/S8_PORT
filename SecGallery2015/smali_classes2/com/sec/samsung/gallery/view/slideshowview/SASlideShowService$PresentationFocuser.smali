.class Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;
.super Landroid/content/BroadcastReceiver;
.source "SASlideShowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresentationFocuser"
.end annotation


# static fields
.field private static final ACTION_PRESENTATION_FOCUS_CHANGED:Ljava/lang/String; = "com.sec.android.app.PRESENTATION_FOCUS_CHANGED"

.field private static final IMEDIA_PLAYER_VIDEO_EXIST:Ljava/lang/String; = "android.media.IMediaPlayer.videoexist"

.field private static final KEY_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final VALUE_GALLERY:Ljava/lang/String; = "gallery"

.field private static final VALUE_VIDEO:Ljava/lang/String; = "video"


# instance fields
.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsRegistered:Z

.field private final mVideoExistIntentFilter:Landroid/content/IntentFilter;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sec.android.app.PRESENTATION_FOCUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.IMediaPlayer.videoexist"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->mVideoExistIntentFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->mIsRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v2, "app_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "SASlideShowService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "presentation focus changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "gallery"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "android.media.IMediaPlayer.videoexist"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$800(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$700(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$800(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->dismiss()V

    :cond_1
    const-string/jumbo v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.sec.android.app.PRESENTATION_FOCUS_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$800(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->access$800(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$SlideShowViewPresentation;->dismiss()V

    :cond_3
    return-void
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->mIsRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->mVideoExistIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->mIsRegistered:Z

    :cond_0
    return-void
.end method

.method public sendBroadcast(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v1, "SASlideShowService"

    const-string/jumbo v2, "send broadcast : gallery"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.app.PRESENTATION_FOCUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "app_name"

    const-string/jumbo v2, "gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public unRegisterReceiver(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->mIsRegistered:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$PresentationFocuser;->mIsRegistered:Z

    :cond_0
    return-void
.end method
