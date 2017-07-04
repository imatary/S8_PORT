.class Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInfo:Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

.field final synthetic this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->mInfo:Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    return-void
.end method

.method private needContentReload()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2200(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)[Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v5

    rem-int/lit8 v6, v2, 0x28

    aget-object v5, v5, v6

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)[Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    rem-int/lit8 v6, v6, 0x28

    aget-object v0, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    if-ne v5, v6, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v5, "PhotoDataAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public call()Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->mInfo:Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->mInfo:Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    iget v2, v2, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->size:I

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2802(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;I)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2900(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->version:J

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->needContentReload()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/sec/android/gallery3d/data/Path;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2200(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->curIndex:I

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;->call()Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
