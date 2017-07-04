.class Lcom/sec/android/gallery3d/data/EventAlbumManager$6;
.super Ljava/lang/Object;
.source "EventAlbumManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/EventAlbumManager;->prepareCreateEventDialog(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$6;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$6;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->access$900(Lcom/sec/android/gallery3d/data/EventAlbumManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$6;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->access$900(Lcom/sec/android/gallery3d/data/EventAlbumManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$6;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->access$900(Lcom/sec/android/gallery3d/data/EventAlbumManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
