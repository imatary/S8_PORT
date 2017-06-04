.class Lcom/sec/android/gallery3d/data/ChannelAlbum$1;
.super Ljava/lang/Object;
.source "ChannelAlbum.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMediaItems(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/ChannelAlbum;

.field final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/ChannelAlbum;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum$1;->this$0:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum$1;->val$result:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum$1;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
