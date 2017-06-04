.class Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;
.super Ljava/lang/Object;
.source "ShowImportDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->showDialog(Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$destFile:Ljava/io/File;

.field final synthetic val$item:Lcom/sec/android/gallery3d/data/MediaObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Landroid/widget/CheckBox;Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;->val$destFile:Ljava/io/File;

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;->val$item:Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    const/4 v2, 0x1

    # setter for: Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsRename:Z
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$602(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    # setter for: Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsCheck:Z
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$502(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsSingleItem:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1900(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;->val$destFile:Ljava/io/File;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;->val$item:Lcom/sec/android/gallery3d/data/MediaObject;

    # invokes: Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->showRenameDialog(Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V
    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$2000(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;->val$destFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mDest:Ljava/io/File;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/FileUtil;->getDstFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$4;->val$item:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v1, Lcom/sec/android/gallery3d/data/MtpImage;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/data/MtpImage;->importFile(Ljava/io/File;)Z

    move-result v1

    # setter for: Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mCopyCompleted:Z
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$402(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    goto :goto_0
.end method
