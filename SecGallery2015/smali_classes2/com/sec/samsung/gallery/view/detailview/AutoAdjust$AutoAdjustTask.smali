.class Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;
.super Landroid/os/AsyncTask;
.source "AutoAdjust.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoAdjustTask"
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
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;-><init>(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7

    const/4 v3, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$100(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$200(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAutoAdjustedImage(Ljava/io/File;)Z

    move-result v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v5, v2}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$302(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;Z)Z

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$400(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_1
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$100(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/samsung/gallery/view/detailview/Model;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v5, v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$500(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;Landroid/graphics/Bitmap;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v5, "AutoAdjust"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "AutoAdjust"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Auto adjust is failed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$600(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$600(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$800(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a049e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$700(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$700(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$OnProgressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$OnProgressListener;->onFailed()V

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$600(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$600(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://force_reload"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$700(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$700(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$OnProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$300(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$OnProgressListener;->onSucceeded(Z)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "AutoAdjust"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Auto adjust is failed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$600(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$600(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$800(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0476

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$700(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;->access$700(Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;)Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$OnProgressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$OnProgressListener;->onFailed()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjust$AutoAdjustTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
