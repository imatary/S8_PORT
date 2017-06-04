.class final Lcom/sec/samsung/gallery/access/face/FaceInterface$1;
.super Ljava/lang/Thread;
.source "FaceInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/access/face/FaceInterface;->requestFaceScan(Landroid/content/Context;Ljava/util/List;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$mediaList:Ljava/util/List;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Landroid/content/ContentResolver;I)V
    .locals 0

    iput-object p2, p0, Lcom/sec/samsung/gallery/access/face/FaceInterface$1;->val$mediaList:Ljava/util/List;

    iput-object p3, p0, Lcom/sec/samsung/gallery/access/face/FaceInterface$1;->val$cr:Landroid/content/ContentResolver;

    iput p4, p0, Lcom/sec/samsung/gallery/access/face/FaceInterface$1;->val$type:I

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v7, p0, Lcom/sec/samsung/gallery/access/face/FaceInterface$1;->val$mediaList:Ljava/util/List;

    if-nez v7, :cond_1

    :try_start_0
    const-string/jumbo v7, "FaceInterface"

    const-string/jumbo v8, "startFaceScan() : waiting 5 sec"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x1388

    invoke-static {v8, v9}, Lcom/sec/samsung/gallery/access/face/FaceInterface$1;->sleep(J)V

    const-string/jumbo v7, "FaceInterface"

    const-string/jumbo v8, "startFaceScan() : going on"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/samsung/gallery/access/face/FaceInterface$1;->val$cr:Landroid/content/ContentResolver;

    iget v8, p0, Lcom/sec/samsung/gallery/access/face/FaceInterface$1;->val$type:I

    # invokes: Lcom/sec/samsung/gallery/access/face/FaceInterface;->startFaceScan(Landroid/content/ContentResolver;I)V
    invoke-static {v7, v8}, Lcom/sec/samsung/gallery/access/face/FaceInterface;->access$000(Landroid/content/ContentResolver;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v7, "FaceInterface"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/access/face/FaceInterface$1;->val$mediaList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/access/face/FaceInterface$1;->val$mediaList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v7, v4, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-wide/16 v2, 0x0

    :try_start_1
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gtz v7, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v7, "FaceInterface"

    const-string/jumbo v8, "There is problem in requestFaceScan"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/access/face/FaceInterface$1;->val$cr:Landroid/content/ContentResolver;

    # invokes: Lcom/sec/samsung/gallery/access/face/FaceInterface;->checkFaceScanned(Landroid/content/ContentResolver;J)I
    invoke-static {v7, v2, v3}, Lcom/sec/samsung/gallery/access/face/FaceInterface;->access$100(Landroid/content/ContentResolver;J)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/access/face/FaceInterface$1;->val$cr:Landroid/content/ContentResolver;

    # invokes: Lcom/sec/samsung/gallery/access/face/FaceInterface;->setScanPriority(Landroid/content/ContentResolver;J)V
    invoke-static {v7, v2, v3}, Lcom/sec/samsung/gallery/access/face/FaceInterface;->access$200(Landroid/content/ContentResolver;J)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/access/face/FaceInterface$1;->val$cr:Landroid/content/ContentResolver;

    long-to-int v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    check-cast v4, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/sec/samsung/gallery/access/face/FaceInterface;->singleFaceScan(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/sec/samsung/gallery/access/face/FaceInterface;->access$300(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/access/face/FaceInterface$1;->val$cr:Landroid/content/ContentResolver;

    long-to-int v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/sec/samsung/gallery/access/face/FaceInterface;->restoreSingleFaceData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/sec/samsung/gallery/access/face/FaceInterface;->access$400(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_3
.end method
