.class Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$2;
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


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$802(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$502(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$402(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    return-void
.end method
