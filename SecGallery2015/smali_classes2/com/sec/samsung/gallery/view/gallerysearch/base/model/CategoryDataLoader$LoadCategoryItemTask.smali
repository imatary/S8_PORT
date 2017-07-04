.class Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;
.super Landroid/os/AsyncTask;
.source "CategoryDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadCategoryItemTask"
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
.field private final mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategoryItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategoryName:Ljava/lang/String;

.field private final mCursorLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mUseSort:Z

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->mCategoryItemList:Ljava/util/List;

    const-string/jumbo v0, "CategoryDataLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] task started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->mCursorLoaders:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->mCategories:Ljava/util/List;

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->mCategoryName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->mUseSort:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->mCursorLoaders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;

    :try_start_0
    invoke-interface {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->getCategoryCursor()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const/4 v9, 0x0

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_1
    invoke-interface {v3, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->createCategoryItem(Landroid/database/Cursor;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->mCategoryItemList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-nez v8, :cond_1

    :cond_3
    if-eqz v1, :cond_0

    if-eqz v9, :cond_4

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_3
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v8, "CategoryDataLoader"

    const-string/jumbo v9, "Failed to create category item."

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_2
    move-exception v8

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v9

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    :goto_1
    if-eqz v1, :cond_5

    if-eqz v9, :cond_6

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_2
    :try_start_7
    throw v8

    :catch_3
    move-exception v11

    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v8, "Gallery_Performance"

    const-string/jumbo v9, "It takes  %d ms in getting items for %s."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sub-long v12, v4, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->mCategoryName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    return-object v8

    :catchall_1
    move-exception v8

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->mCategories:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->mCategoryName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->mCategoryItemList:Ljava/util/List;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->mUseSort:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->access$110(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;->onDataLoadComplete()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->access$102(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;I)I

    :cond_0
    const-string/jumbo v0, "CategoryDataLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] task finished"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
