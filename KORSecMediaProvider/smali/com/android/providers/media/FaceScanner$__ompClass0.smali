.class Lcom/android/providers/media/FaceScanner$__ompClass0;
.super Lcom/samsung/javaomp/runtime/__OMPWorkItem;
.source "FaceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/FaceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "__ompClass0"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/FaceScanner;


# direct methods
.method constructor <init>(Lcom/android/providers/media/FaceScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/providers/media/FaceScanner$__ompClass0;->this$0:Lcom/android/providers/media/FaceScanner;

    invoke-direct {p0}, Lcom/samsung/javaomp/runtime/__OMPWorkItem;-><init>()V

    return-void
.end method


# virtual methods
.method public __doWork(I)V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    const/16 v6, 0xc

    invoke-static {v5, v6}, Landroid/os/Process;->setThreadPriority(II)V

    sget v5, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    invoke-static {v5, v7, v7}, Lcom/android/providers/media/NativeApi;->createFR(III)I

    move-result v3

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/javaomp/runtime/__OMPLoop;

    invoke-direct {v0}, Lcom/samsung/javaomp/runtime/__OMPLoop;-><init>()V

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->start:J

    invoke-static {}, Lcom/android/providers/media/FaceScanner;->-get0()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->end:J

    const-wide/16 v6, 0x1

    iput-wide v6, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->incr:J

    const-wide/16 v6, 0xa

    iput-wide v6, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->chunkSize:J

    sget-object v5, Lcom/samsung/javaomp/runtime/OMPSched;->DYNAMIC:Lcom/samsung/javaomp/runtime/OMPSched;

    iput-object v5, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->schedule:Lcom/samsung/javaomp/runtime/OMPSched;

    invoke-static {v0}, Lcom/samsung/javaomp/runtime/OMP;->__workshareStart(Lcom/samsung/javaomp/runtime/__OMPLoop;)V

    :cond_0
    invoke-static {v0}, Lcom/samsung/javaomp/runtime/OMP;->__loopNext(Lcom/samsung/javaomp/runtime/__OMPLoop;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-wide v6, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->myStart:J

    long-to-int v4, v6

    :goto_0
    iget-wide v6, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->myEnd:J

    long-to-int v5, v6

    if-ge v4, v5, :cond_1

    sget-boolean v5, Lcom/android/providers/media/ContentApp;->mStopScan:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "FaceScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "face 1 ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ) break "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v5, Lcom/android/providers/media/ContentApp;->mStopScan:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "FaceScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "face 2 ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ) break "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__doBarrier()V

    iget-object v5, p0, Lcom/android/providers/media/FaceScanner$__ompClass0;->this$0:Lcom/android/providers/media/FaceScanner;

    invoke-virtual {v5, v8}, Lcom/android/providers/media/FaceScanner;->addCategoryPeople(I)V

    iget-object v5, p0, Lcom/android/providers/media/FaceScanner$__ompClass0;->this$0:Lcom/android/providers/media/FaceScanner;

    invoke-virtual {v5, v8}, Lcom/android/providers/media/FaceScanner;->addNotifyFaceScanProgress(I)V

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    const/4 v3, 0x0

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Lcom/android/providers/media/FaceScanner;->-get0()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/media/FaceScanner$FileInfor;

    invoke-static {}, Lcom/android/providers/media/FaceScanner;->-get0()Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget v5, v2, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_5

    monitor-exit v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x1

    :try_start_1
    iput v5, v2, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    const/16 v5, 0x190

    invoke-static {v3, v5}, Lcom/android/providers/media/NativeApi;->setFaceThumbnaislSize(II)V

    iget-object v5, p0, Lcom/android/providers/media/FaceScanner$__ompClass0;->this$0:Lcom/android/providers/media/FaceScanner;

    iget v6, v2, Lcom/android/providers/media/FaceScanner$FileInfor;->mId:I

    iget-object v7, v2, Lcom/android/providers/media/FaceScanner$FileInfor;->mData:Ljava/lang/String;

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/providers/media/FaceScanner;->scanFile(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_6

    invoke-static {}, Lcom/android/providers/media/FaceValue;->IsUseDCM()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/providers/media/FaceScanner$__ompClass0;->this$0:Lcom/android/providers/media/FaceScanner;

    iget v6, v2, Lcom/android/providers/media/FaceScanner$FileInfor;->mId:I

    invoke-virtual {v5, v6}, Lcom/android/providers/media/FaceScanner;->addCategoryPeople(I)V

    :cond_6
    iget-object v5, p0, Lcom/android/providers/media/FaceScanner$__ompClass0;->this$0:Lcom/android/providers/media/FaceScanner;

    iget v6, v2, Lcom/android/providers/media/FaceScanner$FileInfor;->mId:I

    invoke-virtual {v5, v6}, Lcom/android/providers/media/FaceScanner;->addNotifyFaceScanProgress(I)V

    invoke-static {}, Lcom/android/providers/media/FaceScanner;->-get0()Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    const/4 v6, 0x2

    :try_start_2
    iput v6, v2, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    iget-object v5, p0, Lcom/android/providers/media/FaceScanner$__ompClass0;->this$0:Lcom/android/providers/media/FaceScanner;

    invoke-static {}, Lcom/android/providers/media/FaceValue;->getSleepTime()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/providers/media/FaceScanner;->sleep(I)V

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :catchall_1
    move-exception v6

    monitor-exit v5

    throw v6
.end method
