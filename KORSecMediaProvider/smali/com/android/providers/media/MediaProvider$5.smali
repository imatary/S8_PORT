.class Lcom/android/providers/media/MediaProvider$5;
.super Landroid/os/Handler;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get8(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    iget-object v9, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get8(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/media/MediaThumbRequest;

    invoke-static {v9, v7}, Lcom/android/providers/media/MediaProvider;->-set0(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaThumbRequest;)Lcom/android/providers/media/MediaThumbRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Have message but no request?"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    iget-object v7, v7, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    if-eqz v7, :cond_4

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    iget-object v7, v7, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/providers/media/MediaThumbRequest;->execute()V

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get8(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v8

    monitor-enter v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :try_start_2
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get8(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/media/MediaThumbRequest;

    iget-wide v10, v4, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    iget-wide v12, v7, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_2

    iget-boolean v7, v4, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    iget-object v9, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v9}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-ne v7, v9, :cond_2

    iget-wide v10, v4, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-nez v7, :cond_2

    iget-object v7, v4, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    sget-object v9, Lcom/android/providers/media/MediaThumbRequest$State;->WAIT:Lcom/android/providers/media/MediaThumbRequest$State;

    if-ne v7, v9, :cond_2

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    iget-wide v10, v7, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J

    iput-wide v10, v4, Lcom/android/providers/media/MediaThumbRequest;->mMagic:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8

    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    :catch_0
    move-exception v2

    :try_start_4
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v8

    monitor-enter v8

    :try_start_5
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    sget-object v9, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v9, v7, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/providers/media/MediaThumbRequest;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :goto_2
    monitor-exit v8

    goto/16 :goto_0

    :cond_3
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    :cond_4
    :goto_3
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v8

    monitor-enter v8

    :try_start_7
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    sget-object v9, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v9, v7, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/providers/media/MediaThumbRequest;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_5
    :try_start_8
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get8(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v8

    monitor-enter v8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :try_start_9
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "original file hasn\'t been stored yet: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v10}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v10

    iget-object v10, v10, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    monitor-exit v8
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_b
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v8

    monitor-enter v8

    :try_start_c
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    sget-object v9, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v9, v7, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/providers/media/MediaThumbRequest;->notifyAll()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v7

    monitor-exit v8

    throw v7

    :catchall_4
    move-exception v7

    :try_start_d
    monitor-exit v8

    throw v7
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catch_2
    move-exception v1

    :try_start_e
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v8

    monitor-enter v8

    :try_start_f
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    sget-object v9, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v9, v7, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/providers/media/MediaThumbRequest;->notifyAll()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto/16 :goto_2

    :catchall_5
    move-exception v7

    monitor-exit v8

    throw v7

    :catchall_6
    move-exception v7

    monitor-exit v8

    throw v7

    :catchall_7
    move-exception v7

    iget-object v8, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v8}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v8

    monitor-enter v8

    :try_start_10
    iget-object v9, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v9}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v9

    sget-object v10, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v10, v9, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    iget-object v9, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v9}, Lcom/android/providers/media/MediaProvider;->-get1(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/providers/media/MediaThumbRequest;->notifyAll()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    monitor-exit v8

    throw v7

    :catchall_8
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_6
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get11(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v8

    monitor-enter v8

    :try_start_11
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get11(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$ThumbData;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    monitor-exit v8

    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_7

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7, v0}, Lcom/android/providers/media/MediaProvider;->-wrap0(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_7
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get10(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    :try_start_12
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->-get10(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;

    move-result-object v7

    iget-object v9, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    monitor-exit v8

    goto/16 :goto_0

    :catchall_9
    move-exception v7

    monitor-exit v8

    throw v7

    :catchall_a
    move-exception v7

    monitor-exit v8

    throw v7
.end method
