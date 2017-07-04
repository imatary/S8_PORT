.class Lcom/sec/samsung/gallery/util/FileUtil$1;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/util/FileUtil;->operateMedias(Lcom/sec/android/gallery3d/data/OnProgressListener;Ljava/lang/String;ZLcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Lcom/sec/samsung/gallery/util/MediaOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/util/FileUtil;

.field final synthetic val$onProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/util/FileUtil;Lcom/sec/android/gallery3d/data/OnProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/FileUtil$1;->this$0:Lcom/sec/samsung/gallery/util/FileUtil;

    iput-object p2, p0, Lcom/sec/samsung/gallery/util/FileUtil$1;->val$onProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/FileUtil$1;->val$onProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/FileUtil$1;->val$onProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/data/OnProgressListener;->handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/FileUtil$1;->val$onProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/FileUtil$1;->val$onProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/data/OnProgressListener;->onCompleted(Z)V

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/FileUtil;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onProgress(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/FileUtil$1;->val$onProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/FileUtil$1;->val$onProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/gallery3d/data/OnProgressListener;->onProgress(II)V

    :cond_0
    return-void
.end method
