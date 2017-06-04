.class public Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;
.super Landroid/os/AsyncTask;
.source "FileCopyProgressChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$ProgressCheckerListener;,
        Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$Node;",
            ">;"
        }
    .end annotation
.end field

.field index:I

.field listener:Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$ProgressCheckerListener;

.field prevSizeSum:J

.field totalFileSize:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v1, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->listener:Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$ProgressCheckerListener;

    const-string/jumbo v0, "SaveToGallery FileCopyProgressChecker:constructor"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->files:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->files:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->index:I

    iput-wide v2, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->prevSizeSum:J

    iput-wide v2, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->totalFileSize:J

    iput-object v1, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->listener:Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$ProgressCheckerListener;

    return-void
.end method


# virtual methods
.method public addNewFile(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->files:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$Node;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$Node;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->totalFileSize:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->totalFileSize:J

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v3, "SaveToGallery FileCopyProgressChecker:doInBackground"

    invoke-static {v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput v8, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->index:I

    :goto_0
    iget v3, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->index:I

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->files:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->files:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->index:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$Node;

    iget-object v3, v3, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$Node;->fileName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    const-wide/16 v4, 0x21

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->listener:Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$ProgressCheckerListener;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->getFilePercentage(Ljava/io/File;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->publishProgress([Ljava/lang/Object;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->files:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->index:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$Node;

    iget-wide v4, v3, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$Node;->fileSize:J

    invoke-virtual {p0, v0, v4, v5}, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->isFileCopyCompleted(Ljava/io/File;J)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    iget-wide v4, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->prevSizeSum:J

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->files:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->index:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$Node;

    iget-wide v6, v3, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$Node;->fileSize:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->prevSizeSum:J

    iget v3, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->index:I

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method getFilePercentage(Ljava/io/File;)I
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->prevSizeSum:J

    add-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->totalFileSize:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFileCopyCompleted(Ljava/io/File;J)Z
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    const-string/jumbo v0, "SaveToGallery FileCopyProgressChecker:onCancelled"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    const-string/jumbo v0, "SaveToGallery FileCopyProgressChecker:onPostExecute"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->listener:Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$ProgressCheckerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->listener:Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$ProgressCheckerListener;

    invoke-interface {v0}, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$ProgressCheckerListener;->onProgressCompleted()V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    iget v0, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->index:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->index:I

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->files:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->listener:Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$ProgressCheckerListener;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->files:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->index:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$Node;

    iget-object v0, v0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$Node;->fileName:Ljava/lang/String;

    iget v2, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->index:I

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->files:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$ProgressCheckerListener;->onProgressChanged(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setProgressCheckerListener(Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$ProgressCheckerListener;)V
    .locals 1

    const-string/jumbo v0, "SaveToGallery FileCopyProgressChecker:setProgressCheckerListener"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;->listener:Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$ProgressCheckerListener;

    return-void
.end method
