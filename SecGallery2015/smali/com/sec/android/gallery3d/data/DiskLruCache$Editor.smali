.class public final Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final entry:Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/DiskLruCache;Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->entry:Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;

    # getter for: Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->readable:Z
    invoke-static {p2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$600(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->written:[Z

    return-void

    :cond_0
    # getter for: Lcom/sec/android/gallery3d/data/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/sec/android/gallery3d/data/DiskLruCache;->access$1700(Lcom/sec/android/gallery3d/data/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/DiskLruCache;Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;Lcom/sec/android/gallery3d/data/DiskLruCache$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;-><init>(Lcom/sec/android/gallery3d/data/DiskLruCache;Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;)Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->entry:Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;)[Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/gallery3d/data/DiskLruCache;->completeEdit(Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/sec/android/gallery3d/data/DiskLruCache;->access$2100(Lcom/sec/android/gallery3d/data/DiskLruCache;Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;Z)V

    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/gallery3d/data/DiskLruCache;->completeEdit(Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/sec/android/gallery3d/data/DiskLruCache;->access$2100(Lcom/sec/android/gallery3d/data/DiskLruCache;Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->entry:Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;

    # getter for: Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$1100(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DiskLruCache;->remove(Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/gallery3d/data/DiskLruCache;->completeEdit(Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/sec/android/gallery3d/data/DiskLruCache;->access$2100(Lcom/sec/android/gallery3d/data/DiskLruCache;Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

    # getter for: Lcom/sec/android/gallery3d/data/DiskLruCache;->valueCount:I
    invoke-static {v4}, Lcom/sec/android/gallery3d/data/DiskLruCache;->access$1700(Lcom/sec/android/gallery3d/data/DiskLruCache;)I

    move-result v4

    if-lt p1, v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Expected index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "be greater than 0 and less than the maximum value count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

    # getter for: Lcom/sec/android/gallery3d/data/DiskLruCache;->valueCount:I
    invoke-static {v6}, Lcom/sec/android/gallery3d/data/DiskLruCache;->access$1700(Lcom/sec/android/gallery3d/data/DiskLruCache;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->entry:Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;

    # getter for: Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->currentEditor:Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;
    invoke-static {v4}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$700(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;

    move-result-object v4

    if-eq v4, p0, :cond_2

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->entry:Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;

    # getter for: Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->readable:Z
    invoke-static {v4}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$600(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->written:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, p1

    :cond_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->entry:Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    new-instance v4, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v6}, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/sec/android/gallery3d/data/DiskLruCache$1;)V

    monitor-exit v5

    :goto_1
    return-object v4

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

    # getter for: Lcom/sec/android/gallery3d/data/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v4}, Lcom/sec/android/gallery3d/data/DiskLruCache;->access$1800(Lcom/sec/android/gallery3d/data/DiskLruCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_5
    # getter for: Lcom/sec/android/gallery3d/data/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;
    invoke-static {}, Lcom/sec/android/gallery3d/data/DiskLruCache;->access$1900()Ljava/io/OutputStream;

    move-result-object v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
