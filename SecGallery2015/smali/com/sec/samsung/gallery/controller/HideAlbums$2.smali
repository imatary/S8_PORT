.class Lcom/sec/samsung/gallery/controller/HideAlbums$2;
.super Ljava/lang/Object;
.source "HideAlbums.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/HideAlbums;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/HideAlbums;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/HideAlbums;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/HideAlbums$2;->this$0:Lcom/sec/samsung/gallery/controller/HideAlbums;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/HideAlbums$2;->this$0:Lcom/sec/samsung/gallery/controller/HideAlbums;

    # invokes: Lcom/sec/samsung/gallery/controller/HideAlbums;->dismissDialog()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/HideAlbums;->access$000(Lcom/sec/samsung/gallery/controller/HideAlbums;)V

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/HideAlbums$2;->this$0:Lcom/sec/samsung/gallery/controller/HideAlbums;

    # invokes: Lcom/sec/samsung/gallery/controller/HideAlbums;->getCurrentSelectedItemList()Ljava/util/List;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/HideAlbums;->access$100(Lcom/sec/samsung/gallery/controller/HideAlbums;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/HideAlbums$2;->this$0:Lcom/sec/samsung/gallery/controller/HideAlbums;

    # invokes: Lcom/sec/samsung/gallery/controller/HideAlbums;->updateAlbumDB(Ljava/util/List;)V
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/controller/HideAlbums;->access$200(Lcom/sec/samsung/gallery/controller/HideAlbums;Ljava/util/List;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/HideAlbums$2;->this$0:Lcom/sec/samsung/gallery/controller/HideAlbums;

    # getter for: Lcom/sec/samsung/gallery/controller/HideAlbums;->mHide:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/HideAlbums;->access$300(Lcom/sec/samsung/gallery/controller/HideAlbums;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/HideAlbums$2;->this$0:Lcom/sec/samsung/gallery/controller/HideAlbums;

    # getter for: Lcom/sec/samsung/gallery/controller/HideAlbums;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/HideAlbums;->access$400(Lcom/sec/samsung/gallery/controller/HideAlbums;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "BACK_HIDE_ALBUMS"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "HideAlbums"

    const-string/jumbo v3, "hide operation is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/HideAlbums$2;->this$0:Lcom/sec/samsung/gallery/controller/HideAlbums;

    # getter for: Lcom/sec/samsung/gallery/controller/HideAlbums;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/HideAlbums;->access$400(Lcom/sec/samsung/gallery/controller/HideAlbums;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "EXIT_SELECTION_MODE"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
