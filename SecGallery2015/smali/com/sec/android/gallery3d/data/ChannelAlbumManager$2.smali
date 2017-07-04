.class Lcom/sec/android/gallery3d/data/ChannelAlbumManager$2;
.super Ljava/lang/Object;
.source "ChannelAlbumManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->prepareCreateChannelDialog(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/ChannelAlbumManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$2;->this$0:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$2;->this$0:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->access$600(Lcom/sec/android/gallery3d/data/ChannelAlbumManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$2;->this$0:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->access$600(Lcom/sec/android/gallery3d/data/ChannelAlbumManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumManager$2;->this$0:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->access$600(Lcom/sec/android/gallery3d/data/ChannelAlbumManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
