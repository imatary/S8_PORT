.class Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$6;
.super Ljava/lang/Object;
.source "ShowImportDialogCmd.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->showRenameDialog(Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

.field final synthetic val$destFile:Ljava/io/File;

.field final synthetic val$extension:Ljava/lang/String;

.field final synthetic val$item:Lcom/sec/android/gallery3d/data/MediaObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Ljava/lang/String;Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$6;->val$extension:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$6;->val$destFile:Ljava/io/File;

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$6;->val$item:Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$6;->val$extension:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$6;->val$destFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$6;->val$item:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v3, Lcom/sec/android/gallery3d/data/MtpImage;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/data/MtpImage;->importFile(Ljava/io/File;)Z

    move-result v3

    invoke-static {v4, v3}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$402(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    return-void
.end method
