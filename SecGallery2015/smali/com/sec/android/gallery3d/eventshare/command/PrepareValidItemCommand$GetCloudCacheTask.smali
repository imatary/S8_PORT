.class Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;
.super Landroid/os/AsyncTask;
.source "PrepareValidItemCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCloudCacheTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;-><init>(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getFileList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.sec.android.gallery3d.provider"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;
    invoke-static {v5}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->access$200(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/EventState;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v4, 0x0

    return-object v4

    :cond_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v5}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "PrepareValidItemCommand"

    const-string/jumbo v6, "close error"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v5, "PrepareValidItemCommand"

    const-string/jumbo v6, "file not found"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask$2;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask$2;-><init>(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->access$200(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask$1;-><init>(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
