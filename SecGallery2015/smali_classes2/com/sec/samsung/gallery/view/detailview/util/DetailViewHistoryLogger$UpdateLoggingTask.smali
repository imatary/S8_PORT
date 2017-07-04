.class Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger$UpdateLoggingTask;
.super Landroid/os/AsyncTask;
.source "DetailViewHistoryLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateLoggingTask"
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
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger$UpdateLoggingTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger$UpdateLoggingTask;-><init>(Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger$UpdateLoggingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "date_accessed"

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger$UpdateLoggingTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->access$100(Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger$UpdateLoggingTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->access$200(Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger$UpdateLoggingTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->access$400(Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->access$300()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger$UpdateLoggingTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;->access$202(Lcom/sec/samsung/gallery/view/detailview/util/DetailViewHistoryLogger;I)I

    return-object v6

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DetailViewHistoryLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SQLiteException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "DetailViewHistoryLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IllegalArgumentException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
