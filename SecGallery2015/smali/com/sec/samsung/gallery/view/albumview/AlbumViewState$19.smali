.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$19;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$19;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkRequiredPermissions([Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$19;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$11200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private showPermissionRequestDialog([Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$19;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$11300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/DialogVisibility;->SHOW:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$19;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$11400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "START_PERMISSION_REQUEST_ACTIVITY"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$19;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$11000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOnCoreApps(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$19;->checkRequiredPermissions([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$19;->showPermissionRequestDialog([Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$19;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startChannelViewMode()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$11100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    goto :goto_0
.end method
