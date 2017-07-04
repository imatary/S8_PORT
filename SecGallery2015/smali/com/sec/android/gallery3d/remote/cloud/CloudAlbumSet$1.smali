.class Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$1;
.super Landroid/os/Handler;
.source "CloudAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$1;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$1;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->access$000(Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;)Lcom/sec/android/gallery3d/data/ChangeNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->notifyDirty()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$1;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->notifyContentChanged()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
