.class Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$12;
.super Ljava/lang/Object;
.source "StartAlbumOperationsCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->showDialog(Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$12;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$12;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$12;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSkip:Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1302(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$12;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsTouchOutside:Z
    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$002(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$12;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$12;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    # setter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsCheck:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1502(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$12;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsCancel:Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$302(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$12;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsCancel:Z
    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$302(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$12;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSingleCancel:Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1902(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z

    goto :goto_0
.end method
