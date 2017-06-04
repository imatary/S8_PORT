.class Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$2;
.super Ljava/lang/Object;
.source "StartAlbumChoiceActivityCmd.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->showCopyMoveChoiceDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;

.field final synthetic val$dstAlbumPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$2;->val$dstAlbumPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;

    check-cast p2, Lcom/sec/samsung/gallery/core/Event;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$2;->val$dstAlbumPath:Ljava/lang/String;

    # invokes: Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->activeDialogForMoveCopyChoice(Lcom/sec/samsung/gallery/core/Event;Ljava/lang/String;)V
    invoke-static {v0, p2, v1}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->access$300(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;Lcom/sec/samsung/gallery/core/Event;Ljava/lang/String;)V

    return-void
.end method
