.class public Lcom/sec/android/gallery3d/data/ChannelSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "ChannelSource.java"


# static fields
.field private static final CHANNEL_ALBUM:I = 0x1

.field private static final CHANNEL_ALBUMSET:I = 0x0

.field private static final EVENT_NOTIFICATION_ALBUM:I = 0x3

.field private static final EVENT_NOTIFICATION_ALBUMSET:I = 0x2

.field public static final PATH_PREFIX:Ljava/lang/String; = "channel"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;


# direct methods
.method protected constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 3

    const-string/jumbo v0, "channel"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/channel/channelalbumset"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/channel/channelalbum/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/channel/eventnotificationalbumset"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/channel/eventnotificationalbum/*"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ChannelSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string/jumbo v2, ""

    const-string/jumbo v3, "[ChannelAlbum]Wrong path is used!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    const-string/jumbo v2, ""

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    new-instance v2, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, p1, v3}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    :goto_1
    return-object v2

    :pswitch_1
    new-instance v2, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V

    goto :goto_1

    :pswitch_2
    new-instance v2, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, p1, v3, v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Z)V

    goto :goto_1

    :pswitch_3
    new-instance v2, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v4

    invoke-direct {v2, p1, v3, v4, v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
