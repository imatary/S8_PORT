.class Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$3;
.super Landroid/content/BroadcastReceiver;
.source "CreateAlbumDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$3700(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$3800(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$3800(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->REMOVABLE_SD_DIR_PATH:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->dismissDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$3900()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->dismissDialog()V

    goto :goto_0
.end method
