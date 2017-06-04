.class public Lcom/samsung/android/gallery360viewer/view/StatusHandler;
.super Ljava/lang/Object;
.source "StatusHandler.java"


# instance fields
.field private mCurrentErrorCode:I

.field private mErrorListener:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveCompletedListener:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaveStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mSaveStatus:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mCurrentErrorCode:I

    return-void
.end method


# virtual methods
.method getErrorCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mCurrentErrorCode:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mCurrentErrorCode:I

    return v0
.end method

.method getSaveStatus(Ljava/lang/String;)Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mSaveStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->INVALID_FILE_NAME:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mSaveStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->SCREEN_CAPTURE_PROGRESS:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mSaveStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mSaveStatus:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public onError(I)V
    .locals 4

    iput p1, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mCurrentErrorCode:I

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mErrorListener:Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mErrorListener:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    const-string/jumbo v1, "StatusHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError: App notified. Error code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mCurrentErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StatusHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in notifying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSaveCompleted(Ljava/lang/String;Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "StatusHandler"

    const-string/jumbo v2, "filename null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p2, :cond_3

    const-string/jumbo v1, "StatusHandler"

    const-string/jumbo v2, "saveStatus null. Default to FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->SCREEN_CAPTURE_FAIL:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mSaveStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mSaveCompletedListener:Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mSaveCompletedListener:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StatusHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in notifying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setErrorListener(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mCurrentErrorCode:I

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mErrorListener:Ljava/util/concurrent/Callable;

    return-void
.end method

.method setSaveCompletedListener(Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mSaveStatus:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->SCREEN_CAPTURE_PROGRESS:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->mSaveCompletedListener:Ljava/util/concurrent/Callable;

    goto :goto_0
.end method
