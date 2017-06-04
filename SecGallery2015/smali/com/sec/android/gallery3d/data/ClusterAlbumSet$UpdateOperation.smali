.class Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;
.super Ljava/lang/Object;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/ClusterAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final ASSIGN_NAME:I = 0x2

.field public static final CONFIRM:I = 0x0

.field public static final REMOVE:I = 0x1

.field public static final UPDATE:I = 0x3


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mJoinedName:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private mOperationType:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/ClusterAlbumSet;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/ClusterAlbumSet;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->this$0:Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->mOperationType:I

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->mAlbums:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->mName:Ljava/lang/String;

    iput p5, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->mOperationType:I

    iput-object p6, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->mJoinedName:Ljava/lang/String;

    return-void
.end method

.method private assignName()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->mJoinedName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->updateFaces(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private confirm()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->confirmFaces()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private remove()V
    .locals 7

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    move-object v4, v0

    check-cast v4, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    check-cast v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->removeFaces()V

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    const-string/jumbo v4, "remove"

    const-string/jumbo v6, "remove clusterAlbumSet"

    invoke-static {v4, v6}, Lcom/sec/android/gallery3d/util/ArcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->this$0:Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    iget-object v4, v4, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sec/samsung/gallery/access/face/PersonList;->remove(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->mOperationType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->this$0:Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->updateMediaSet()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->mOperationType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->this$0:Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-object v2

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->confirm()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->remove()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;->assignName()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
