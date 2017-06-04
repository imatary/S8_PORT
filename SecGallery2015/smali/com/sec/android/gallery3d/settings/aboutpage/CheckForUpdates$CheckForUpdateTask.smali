.class Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;
.super Landroid/os/AsyncTask;
.source "CheckForUpdates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckForUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    # setter for: Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sClearBadge:Z
    invoke-static {p1}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->access$002(Z)Z

    iput-object p2, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;->mContext:Landroid/content/Context;

    # invokes: Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->getMarketResult(ILandroid/content/Context;)I
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->access$100(ILandroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 2

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 10

    const-string/jumbo v6, "CheckForUpdates"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onPostExecute previous Result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sResult:I
    invoke-static {}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->access$200()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", current Result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    # setter for: Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sResult:I
    invoke-static {v6}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->access$202(I)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "backup_update_check_result"

    # getter for: Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sResult:I
    invoke-static {}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->access$200()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    # getter for: Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sClearBadge:Z
    invoke-static {}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->access$000()Z

    move-result v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "key_recent_app_update_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;J)V

    const-string/jumbo v6, "com.sec.android.gallery3d"

    iget-object v7, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/settings/aboutpage/AppsStubUtil;->getVersionCode(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sStubUpdateData:Lcom/sec/android/gallery3d/settings/aboutpage/StubData;
    invoke-static {}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->access$300()Lcom/sec/android/gallery3d/settings/aboutpage/StubData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;->getVersionCode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "CheckForUpdates"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "currentVersion : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " marketVersion : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v1, v4, :cond_1

    const-string/jumbo v6, "CheckForUpdates"

    const-string/jumbo v7, "case 1 : currentVersionCode > marketVersionCode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "hide_badge"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "version_code"

    invoke-static {v6, v7, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    # getter for: Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sUiListener:Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;
    invoke-static {}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->access$400()Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;

    move-result-object v6

    if-eqz v6, :cond_0

    # getter for: Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sUiListener:Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;
    invoke-static {}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->access$400()Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;->refreshBadge(I)V

    :cond_0
    return-void

    :cond_1
    if-ne v1, v4, :cond_2

    :try_start_1
    const-string/jumbo v6, "CheckForUpdates"

    const-string/jumbo v7, "case 2 : currentVersionCode == marketVersionCode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "hide_badge"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "version_code"

    invoke-static {v6, v7, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "CheckForUpdates"

    const-string/jumbo v7, "NumberFormatException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :try_start_2
    const-string/jumbo v6, "CheckForUpdates"

    const-string/jumbo v7, "case 4 : badgeClear"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "hide_badge"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "version_code"

    invoke-static {v6, v7, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "CheckForUpdates"

    const-string/jumbo v7, "case 5 : Show badge"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "hide_badge"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
