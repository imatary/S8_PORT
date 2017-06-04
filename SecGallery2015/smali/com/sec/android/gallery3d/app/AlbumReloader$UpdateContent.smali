.class Lcom/sec/android/gallery3d/app/AlbumReloader$UpdateContent;
.super Ljava/lang/Object;
.source "AlbumReloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/AlbumReloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContent"
.end annotation


# instance fields
.field private final mReloadInfo:Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

.field final synthetic this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AlbumReloader;Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$UpdateContent;->mReloadInfo:Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$UpdateContent;->mReloadInfo:Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    # getter for: Lcom/sec/android/gallery3d/app/AlbumReloader;->mSourceVersion:J
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/AlbumReloader;->access$200(Lcom/sec/android/gallery3d/app/AlbumReloader;)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->version:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    iget-wide v2, v0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->version:J

    # setter for: Lcom/sec/android/gallery3d/app/AlbumReloader;->mSourceVersion:J
    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/app/AlbumReloader;->access$202(Lcom/sec/android/gallery3d/app/AlbumReloader;J)J

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    iget v2, v0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->size:I

    # setter for: Lcom/sec/android/gallery3d/app/AlbumReloader;->mSize:I
    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/AlbumReloader;->access$302(Lcom/sec/android/gallery3d/app/AlbumReloader;I)I

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
