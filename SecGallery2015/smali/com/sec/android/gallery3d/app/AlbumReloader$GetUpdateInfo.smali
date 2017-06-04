.class Lcom/sec/android/gallery3d/app/AlbumReloader$GetUpdateInfo;
.super Ljava/lang/Object;
.source "AlbumReloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/AlbumReloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUpdateInfo"
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AlbumReloader;J)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$GetUpdateInfo;->mVersion:J

    return-void
.end method


# virtual methods
.method public call()Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$GetUpdateInfo;->mVersion:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;-><init>()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    # getter for: Lcom/sec/android/gallery3d/app/AlbumReloader;->mSourceVersion:J
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/AlbumReloader;->access$200(Lcom/sec/android/gallery3d/app/AlbumReloader;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->version:J

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    # getter for: Lcom/sec/android/gallery3d/app/AlbumReloader;->mSize:I
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/AlbumReloader;->access$300(Lcom/sec/android/gallery3d/app/AlbumReloader;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->size:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    # getter for: Lcom/sec/android/gallery3d/app/AlbumReloader;->mSourceVersion:J
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/AlbumReloader;->access$200(Lcom/sec/android/gallery3d/app/AlbumReloader;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$GetUpdateInfo;->mVersion:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
