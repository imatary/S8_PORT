.class public Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResourceReferencePool"
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private rferencePool:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private startIndex:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

.field private totalCount:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;II)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->totalCount:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->startIndex:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->rferencePool:Ljava/util/Hashtable;

    const-string v0, "PEDIT_MotionPhotoActivity"

    const-string v1, "ResourcePool is created ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->mCurrentIndex:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->startIndex:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->totalCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->rferencePool:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->rferencePool:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->rferencePool:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDestroy()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->rferencePool:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized put(ILandroid/graphics/Bitmap;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->rferencePool:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read(I)Landroid/graphics/Bitmap;
    .locals 5

    monitor-enter p0

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->totalCount:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->startIndex:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->rferencePool:Ljava/util/Hashtable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->rferencePool:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->rferencePool:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->rferencePool:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    const-string v2, "PEDIT_MotionPhotoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read request handled for index ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->mCurrentIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->startIndex:I

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->totalCount:I

    return-void
.end method
