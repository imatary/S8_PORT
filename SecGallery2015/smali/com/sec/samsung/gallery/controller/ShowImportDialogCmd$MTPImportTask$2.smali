.class Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$2;
.super Ljava/lang/Object;
.source "ShowImportDialogCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

.field final synthetic val$destPathFile:Ljava/io/File;

.field final synthetic val$item:Lcom/sec/android/gallery3d/data/MediaObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$2;->this$1:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$2;->val$destPathFile:Ljava/io/File;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$2;->val$item:Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$2;->this$1:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$2;->val$destPathFile:Ljava/io/File;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$2;->val$item:Lcom/sec/android/gallery3d/data/MediaObject;

    # invokes: Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->showDialog(Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V
    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1100(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V

    return-void
.end method
