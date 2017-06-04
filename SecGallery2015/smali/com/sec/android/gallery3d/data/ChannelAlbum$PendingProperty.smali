.class Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;
.super Ljava/lang/Object;
.source "ChannelAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/ChannelAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingProperty"
.end annotation


# instance fields
.field private count:I

.field private name:Ljava/lang/String;

.field private photo:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->count:I

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->photo:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/data/ChannelAlbum$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->setCount(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->setMasterName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->setMasterPhoto(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private declared-synchronized setCount(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setMasterName(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setMasterPhoto(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->photo:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized getMasterName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMasterPhoto()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->photo:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMemberCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum$PendingProperty;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
