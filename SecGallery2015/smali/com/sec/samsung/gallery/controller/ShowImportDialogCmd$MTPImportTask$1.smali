.class Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$1;
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


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$1;->val$destPathFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$1;->val$destPathFile:Ljava/io/File;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

    iget-object v2, v2, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Lcom/sec/android/gallery3d/data/MtpImage;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1100(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V

    return-void
.end method
