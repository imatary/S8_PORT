.class public Lcom/sec/samsung/gallery/controller/StartChannelViewMode;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartChannelViewMode.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/StartChannelViewMode;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private startChannelViewMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$1;-><init>(Lcom/sec/samsung/gallery/controller/StartChannelViewMode;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startChannelViewMode(I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_IMAGE_TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string/jumbo v1, "KEY_IS_ENTER_CHANNEL_PHOTO_VIEW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;-><init>(Lcom/sec/samsung/gallery/controller/StartChannelViewMode;Landroid/os/Bundle;I)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    array-length v2, v1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->startChannelViewMode()V

    :goto_0
    return-void

    :cond_0
    aget-object v0, v1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->startChannelViewMode(I)V

    goto :goto_0
.end method
