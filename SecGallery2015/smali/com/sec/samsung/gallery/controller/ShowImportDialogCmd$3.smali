.class Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$3;
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
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/io/File;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$3;->val$item:Lcom/sec/android/gallery3d/data/MediaObject;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$3;->val$destFile:Ljava/io/File;

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$3;->val$item:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v0, Lcom/sec/android/gallery3d/data/MtpImage;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$3;->val$destFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/MtpImage;->importFile(Ljava/io/File;)Z

    move-result v0

    # setter for: Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mCopyCompleted:Z
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$402(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    const/4 v1, 0x1

    # setter for: Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsReplace:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$702(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    # setter for: Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->mIsCheck:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$502(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    return-void
.end method
