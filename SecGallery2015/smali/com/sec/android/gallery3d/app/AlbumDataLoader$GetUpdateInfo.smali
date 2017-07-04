.class Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/AlbumDataLoader;
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
        "Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AlbumDataLoader;J)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    return-void
.end method


# virtual methods
.method public call()Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$100(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    cmp-long v9, v10, v12

    if-nez v9, :cond_1

    move-object v2, v8

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;

    invoke-direct {v2, v8}, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;-><init>(Lcom/sec/android/gallery3d/app/AlbumDataLoader$1;)V

    iget-wide v6, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$400(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v10

    iput-wide v10, v2, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$500(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    iput v9, v2, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$600(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)[J

    move-result-object v5

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$700(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v10}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$800(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    if-eq v9, v10, :cond_3

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$900(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    if-lez v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1000(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$900(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1100(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$800(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v2, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$500(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v8

    iget v9, v2, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    sub-int/2addr v8, v9

    invoke-static {}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1200()I

    move-result v9

    if-ge v8, v9, :cond_2

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$800(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$500(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    invoke-static {}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1200()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v2, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    :cond_2
    invoke-static {}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1200()I

    move-result v8

    iput v8, v2, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$902(Lcom/sec/android/gallery3d/app/AlbumDataLoader;I)I

    goto/16 :goto_0

    :cond_3
    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$800(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v0

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$700(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v4

    :goto_1
    if-ge v0, v4, :cond_6

    rem-int/lit16 v1, v0, 0x80

    aget-wide v10, v5, v1

    cmp-long v9, v10, v6

    if-eqz v9, :cond_5

    iput v0, v2, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    const/16 v3, 0x40

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1000(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v3, 0x1388

    :cond_4
    sub-int v8, v4, v0

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v2, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$400(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    move-object v2, v8

    goto/16 :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->call()Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
