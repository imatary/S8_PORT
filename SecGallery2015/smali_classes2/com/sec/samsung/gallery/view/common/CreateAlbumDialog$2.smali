.class Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$2;
.super Landroid/content/BroadcastReceiver;
.source "CreateAlbumDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->setSipBroadcastReceiver()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$2;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$2;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mReceiveTime:J
    invoke-static {v0, v2, v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$3502(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;J)J

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$2;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    const-string/jumbo v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->isSipVisible:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$3302(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Z)Z

    return-void
.end method
