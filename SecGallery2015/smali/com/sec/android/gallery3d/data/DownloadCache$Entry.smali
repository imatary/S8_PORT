.class public Lcom/sec/android/gallery3d/data/DownloadCache$Entry;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field public final cacheFile:Ljava/io/File;

.field private final mId:J

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/DownloadCache;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/DownloadCache;JLjava/io/File;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->mId:J

    invoke-static {p4}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/DownloadCache;JLjava/io/File;Lcom/sec/android/gallery3d/data/DownloadCache$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;-><init>(Lcom/sec/android/gallery3d/data/DownloadCache;JLjava/io/File;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/data/DownloadCache$Entry;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->mId:J

    return-wide v0
.end method


# virtual methods
.method public associateWith(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache;

    # getter for: Lcom/sec/android/gallery3d/data/DownloadCache;->mAssociateMap:Ljava/util/WeakHashMap;
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DownloadCache;->access$200(Lcom/sec/android/gallery3d/data/DownloadCache;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
