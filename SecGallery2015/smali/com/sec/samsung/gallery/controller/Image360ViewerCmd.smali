.class public Lcom/sec/samsung/gallery/controller/Image360ViewerCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "Image360ViewerCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final DEEPLINK_MODE_ALBUMS_DETAIL:I = 0x0

.field private static final DEEPLINK_MODE_PICTURES_DETAIL:I = 0x2

.field private static final DEEPLINK_MODE_STORIES_DETAIL:I = 0x3

.field private static final GALLERY_360_CLASS_NAME:Ljava/lang/String; = "com.sec.samsung.gallery.view.detailview.spherical.Image360Viewer"

.field private static final GALLERY_360_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.gallery3d"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private getViewmodeType()I
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/Image360ViewerCmd;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x2

    :goto_0
    return v2

    :cond_0
    const-class v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-ne v1, v2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private startImage360ViewerActivity(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 6

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/Image360ViewerCmd;->getViewmodeType()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.sec.android.gallery3d"

    const-string/jumbo v5, "com.sec.samsung.gallery.view.detailview.spherical.Image360Viewer"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v3, "isCloudImage"

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "viewmode"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "mediaItemPath"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "mediaPath"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/Image360ViewerCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/Image360ViewerCmd;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/Image360ViewerCmd;->startImage360ViewerActivity(Lcom/sec/android/gallery3d/data/MediaItem;)V

    return-void
.end method
