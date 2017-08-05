.class public Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;
.super Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexPriorityWorker;
.source "SemApexSplitWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final SPLIT_COMPLETE:I = 0x2

.field static final SPLIT_FAILED:I = 0x3

.field static final SPLIT_STARTED:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mFilePath:Ljava/lang/String;

.field private final mIndex:I

.field private mIsLast:Z

.field private mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

.field private mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexPriorityWorker;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    iput p3, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mIndex:I

    iput-object p4, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mFilePath:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 23

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mIsLast:Z

    if-eqz v2, :cond_2

    const/16 v2, -0x10

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": worker run "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->handleSplitState(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mFilePath:Ljava/lang/String;

    if-eqz v2, :cond_a

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/4 v10, 0x0

    :try_start_0
    new-instance v15, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mFilePath:Ljava/lang/String;

    invoke-direct {v15, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v17

    packed-switch v17, :pswitch_data_0

    :goto_1
    :pswitch_0
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "degree : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getTempFilePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v22, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getTempFilePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "r"

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->setSource(Ljava/io/FileDescriptor;JJ)V

    new-instance v19, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "rw"

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mIndex:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getSplitTimestamp(I)J

    move-result-wide v2

    const-wide/32 v4, 0x2dc6c0

    sub-long v6, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_3

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mIndex:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getSplitTimestamp(I)J

    move-result-wide v8

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->priority:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual/range {v2 .. v13}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->split(Ljava/io/FileDescriptor;JJJIZZZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v20, 0x1

    if-eqz v22, :cond_0

    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_3
    if-eqz v19, :cond_1

    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->release()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    move-object/from16 v18, v19

    move-object/from16 v21, v22

    :goto_5
    if-eqz v20, :cond_b

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " worker complete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->handleSplitState(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;I)V

    :goto_6
    return-void

    :cond_2
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    :pswitch_1
    const/16 v10, 0xb4

    goto/16 :goto_1

    :pswitch_2
    const/16 v10, 0xb4

    goto/16 :goto_1

    :pswitch_3
    const/16 v10, 0x5a

    goto/16 :goto_1

    :pswitch_4
    const/16 v10, 0x5a

    goto/16 :goto_1

    :pswitch_5
    const/16 v10, 0x10e

    goto/16 :goto_1

    :pswitch_6
    const/16 v10, 0x10e

    goto/16 :goto_1

    :cond_3
    const-wide/16 v6, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v14

    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v14

    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v14

    :goto_7
    :try_start_5
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v21, :cond_4

    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_8
    if-eqz v18, :cond_5

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_5
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->release()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    goto :goto_5

    :catch_3
    move-exception v14

    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_4
    move-exception v14

    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_5
    move-exception v14

    :goto_a
    :try_start_8
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->TAG:Ljava/lang/String;

    const-string v3, "runtime exception!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v21, :cond_6

    :try_start_9
    invoke-virtual/range {v21 .. v21}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_6
    :goto_b
    if-eqz v18, :cond_7

    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_7
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->release()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    goto/16 :goto_5

    :catch_6
    move-exception v14

    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catch_7
    move-exception v14

    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catchall_0
    move-exception v2

    :goto_d
    if-eqz v21, :cond_8

    :try_start_b
    invoke-virtual/range {v21 .. v21}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_8
    :goto_e
    if-eqz v18, :cond_9

    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_9
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    invoke-virtual {v3}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->release()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    throw v2

    :catch_8
    move-exception v14

    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    :catch_9
    move-exception v14

    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :cond_a
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->TAG:Ljava/lang/String;

    const-string v3, "photo file is not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_b
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " worker failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->handleSplitState(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;I)V

    goto/16 :goto_6

    :catchall_1
    move-exception v2

    move-object/from16 v21, v22

    goto :goto_d

    :catchall_2
    move-exception v2

    move-object/from16 v18, v19

    move-object/from16 v21, v22

    goto :goto_d

    :catch_a
    move-exception v14

    move-object/from16 v21, v22

    goto/16 :goto_a

    :catch_b
    move-exception v14

    move-object/from16 v18, v19

    move-object/from16 v21, v22

    goto/16 :goto_a

    :catch_c
    move-exception v14

    move-object/from16 v21, v22

    goto/16 :goto_7

    :catch_d
    move-exception v14

    move-object/from16 v18, v19

    move-object/from16 v21, v22

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setLast(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mIsLast:Z

    return-void
.end method
