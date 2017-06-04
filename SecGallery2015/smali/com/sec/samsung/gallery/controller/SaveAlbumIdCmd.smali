.class public Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "SaveAlbumIdCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd$SaveAlbumIdTask;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mOrder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;->mOrder:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    aget-object v2, v0, v3

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;->mOrder:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;->mOrder:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;->mOrder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd$SaveAlbumIdTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd$SaveAlbumIdTask;-><init>(Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd$1;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd$SaveAlbumIdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
