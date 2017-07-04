.class Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;
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
    name = "UpdateContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUpdateInfo:Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;

.field final synthetic this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AlbumDataLoader;Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->mUpdateInfo:Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v14, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->mUpdateInfo:Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    iget-wide v10, v3, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    invoke-static {v9, v10, v11}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$402(Lcom/sec/android/gallery3d/app/AlbumDataLoader;J)J

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$500(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    iget v10, v3, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    iget v10, v3, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$502(Lcom/sec/android/gallery3d/app/AlbumDataLoader;I)I

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1300(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1300(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v10}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$500(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    invoke-interface {v9, v10}, Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;->onSizeChanged(I)V

    :cond_0
    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$700(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v10}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$500(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    if-le v9, v10, :cond_1

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    iget-object v10, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v10}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$500(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$702(Lcom/sec/android/gallery3d/app/AlbumDataLoader;I)I

    :cond_1
    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1400(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v10}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$500(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    if-le v9, v10, :cond_2

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    iget-object v10, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v10}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$500(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1402(Lcom/sec/android/gallery3d/app/AlbumDataLoader;I)I

    :cond_2
    iget-object v6, v3, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->items:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    const-wide/16 v10, -0x1

    invoke-static {v9, v10, v11}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$102(Lcom/sec/android/gallery3d/app/AlbumDataLoader;J)J

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_3
    iget v9, v3, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    if-lez v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    iget-wide v10, v3, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    invoke-static {v9, v10, v11}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$102(Lcom/sec/android/gallery3d/app/AlbumDataLoader;J)J

    const-string/jumbo v9, "AlbumDataAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loading failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v11}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$100(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v14

    :cond_5
    iget v9, v3, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    iget-object v10, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v10}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$800(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v9, v3, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v10}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$700(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v7

    :goto_0
    if-ge v1, v0, :cond_4

    rem-int/lit16 v2, v1, 0x80

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$600(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)[J

    move-result-object v9

    iget-wide v10, v3, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    aput-wide v10, v9, v2

    iget v9, v3, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    sub-int v9, v1, v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v8, :cond_7

    const-string/jumbo v9, "AlbumDataAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loading failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v11}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$100(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v4

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1500(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)[J

    move-result-object v9

    aget-wide v10, v9, v2

    cmp-long v9, v10, v4

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1500(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)[J

    move-result-object v9

    aput-wide v4, v9, v2

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1600(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)[Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v9

    aput-object v8, v9, v2

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1300(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1700(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    if-lt v1, v9, :cond_6

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1400(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    if-ge v1, v9, :cond_6

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1300(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v9

    invoke-interface {v9, v1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;->onContentChanged(I)V

    goto :goto_1
.end method
