.class Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$1;
.super Ljava/lang/Object;
.source "StartAlbumChoiceActivityCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->showCreateAlbumDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "operationType"

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_NEW_ALBUM_NAME_EDIT_DIALOG:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "operationIntData"

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->operationId:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->access$000(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "topPath"

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mTopSetPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->access$200(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;)Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->access$200(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "START_ALBUM_OPERATIONS"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
