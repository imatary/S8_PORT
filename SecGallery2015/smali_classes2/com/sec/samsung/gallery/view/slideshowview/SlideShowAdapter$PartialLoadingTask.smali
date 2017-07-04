.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;
.super Landroid/os/AsyncTask;
.source "SlideShowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PartialLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mCount:I

.field private mStart:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11

    const/4 v10, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-static {v3, v10}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->access$002(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;Z)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->mStart:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    iget v6, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->mStart:I

    iget v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->mCount:I

    invoke-virtual {v3, v6, v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->access$200(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;)[Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->access$200(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;)[Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v6

    aget-object v6, v6, v0

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->access$200(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;)[Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v6

    aput-object v1, v6, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "SlideShowAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Partial loading done in ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->mStart:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->mCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public init(II)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->mStart:I

    iput p2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->mCount:I

    return-void
.end method

.method protected onCancelled()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const-string/jumbo v0, "SlideShowAdapter"

    const-string/jumbo v1, "Partial loading task cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->access$302(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->access$002(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;Z)Z

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string/jumbo v0, "SlideShowAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Partial loading task finished ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->access$302(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->access$002(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;Z)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
