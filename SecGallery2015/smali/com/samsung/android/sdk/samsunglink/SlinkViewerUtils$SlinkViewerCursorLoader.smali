.class Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils$SlinkViewerCursorLoader;
.super Landroid/content/CursorLoader;
.source "SlinkViewerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlinkViewerCursorLoader"
.end annotation


# instance fields
.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private final mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.android/content/",
            "Loader$ForceLoadContentObserver;"
        }
    .end annotation
.end field

.field private final mViewIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils$SlinkViewerCursorLoader;->mViewIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils$SlinkViewerCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 1

    invoke-super {p0}, Landroid/content/CursorLoader;->cancelLoadInBackground()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils$SlinkViewerCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils$SlinkViewerCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils$SlinkViewerCursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/OperationCanceledException;

    invoke-direct {v1}, Landroid/os/OperationCanceledException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils$SlinkViewerCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils$SlinkViewerCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils$SlinkViewerCursorLoader;->mViewIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils$SlinkViewerCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->getCursorFromViewIntent(Landroid/content/Intent;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils$SlinkViewerCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils$SlinkViewerCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils$SlinkViewerCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    :catchall_3
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1
.end method
