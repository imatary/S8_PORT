.class Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$3;
.super Ljava/lang/Object;
.source "StartAlbumOperationsCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->handleSingleFileOperation(Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$002(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$302(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z

    return-void
.end method
