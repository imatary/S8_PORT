.class Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd$1;
.super Ljava/lang/Object;
.source "ShowSetAsActivityCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->isNeedToShowPrivateDialog(Lcom/sec/android/gallery3d/data/MediaItem;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;

.field final synthetic val$isWallpaper:Z

.field final synthetic val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;Lcom/sec/android/gallery3d/data/MediaItem;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd$1;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd$1;->val$isWallpaper:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const-string/jumbo v1, "private_move_do_not_show"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd$1;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd$1;->val$isWallpaper:Z

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;Lcom/sec/android/gallery3d/data/MediaItem;Z)V

    return-void
.end method
