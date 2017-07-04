.class Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;
.super Landroid/os/AsyncTask;
.source "ShowImportDialogCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MTPImportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;-><init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)V

    return-void
.end method

.method private hideAllDialog()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1700()Lcom/sec/samsung/gallery/view/common/RenameDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1700()Lcom/sec/samsung/gallery/view/common/RenameDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->dismissMediaRenameDialog()V

    :cond_0
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1702(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1800()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1800()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1800()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1802(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->hideProgressDialog()V

    return-void
.end method

.method private hideProgressDialog()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialogInstantly()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShowImportDialogCmd"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 9

    const/4 v2, 0x0

    const v5, 0x7f0a0014

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Lcom/sec/android/gallery3d/data/MtpImage;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1400(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-direct {v0, v7, v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>(II)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 15

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$102(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Ljava/io/File;)Ljava/io/File;

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    new-instance v12, Ljava/io/File;

    iget-object v13, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v13}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Ljava/io/File;

    move-result-object v13

    const-string/jumbo v14, "Imported"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$102(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Ljava/io/File;)Ljava/io/File;

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "ShowImportDialogCmd"

    const-string/jumbo v12, "directory creation failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    :goto_0
    return-object v11

    :cond_0
    const-string/jumbo v11, "ShowImportDialogCmd"

    const-string/jumbo v12, "import start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Lcom/sec/android/gallery3d/data/MtpImage;

    move-result-object v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)V

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Lcom/sec/android/gallery3d/data/MtpImage;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MtpImage;->getObjectInfo()Landroid/mtp/MtpObjectInfo;

    move-result-object v7

    new-instance v1, Ljava/io/File;

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v7}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    iget-object v12, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Lcom/sec/android/gallery3d/data/MtpImage;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/sec/android/gallery3d/data/MtpImage;->importFile(Ljava/io/File;)Z

    move-result v12

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$402(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$400(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1302(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    :cond_2
    const-string/jumbo v11, "ShowImportDialogCmd"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "import end ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_0

    :cond_3
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$600(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/util/FileUtil;->getDstFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    iget-object v12, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Lcom/sec/android/gallery3d/data/MtpImage;

    move-result-object v12

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/sec/android/gallery3d/data/MtpImage;->importFile(Ljava/io/File;)Z

    move-result v12

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$402(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    goto :goto_1

    :cond_4
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    iget-object v12, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Lcom/sec/android/gallery3d/data/MtpImage;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/sec/android/gallery3d/data/MtpImage;->importFile(Ljava/io/File;)Z

    move-result v12

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$402(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    goto/16 :goto_1

    :cond_5
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$800(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$402(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    goto/16 :goto_1

    :cond_6
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$902(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1000(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v13, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$1;

    invoke-direct {v13, p0, v1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$1;-><init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;Ljava/io/File;)V

    invoke-virtual {v11, v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$900(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_7

    :try_start_1
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1000(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    :cond_7
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_8
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1400(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-gtz v10, :cond_9

    const-string/jumbo v11, "ShowImportDialogCmd"

    const-string/jumbo v12, "nothing selected"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto/16 :goto_0

    :cond_9
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v11, v9, Lcom/sec/android/gallery3d/data/MtpImage;

    if-eqz v11, :cond_a

    iget-object v12, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    const/4 v11, 0x1

    :goto_3
    invoke-static {v12, v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)V

    :cond_a
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v10, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_c

    const-string/jumbo v11, "ShowImportDialogCmd"

    const-string/jumbo v12, "import task cancelled"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto/16 :goto_0

    :cond_b
    const/4 v11, 0x0

    goto :goto_3

    :cond_c
    :try_start_4
    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v11, v4, Lcom/sec/android/gallery3d/data/MtpImage;

    if-eqz v11, :cond_15

    move-object v0, v4

    check-cast v0, Lcom/sec/android/gallery3d/data/MtpImage;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MtpImage;->getObjectInfo()Landroid/mtp/MtpObjectInfo;

    move-result-object v7

    new-instance v1, Ljava/io/File;

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v7}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_e

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    check-cast v4, Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-virtual {v4, v1}, Lcom/sec/android/gallery3d/data/MtpImage;->importFile(Ljava/io/File;)Z

    move-result v12

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$402(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_13

    const-string/jumbo v11, "ShowImportDialogCmd"

    const-string/jumbo v12, "import task cancelled"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto/16 :goto_0

    :cond_e
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$600(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/util/FileUtil;->getDstFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    check-cast v4, Lcom/sec/android/gallery3d/data/MtpImage;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Lcom/sec/android/gallery3d/data/MtpImage;->importFile(Ljava/io/File;)Z

    move-result v12

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$402(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception v2

    const-string/jumbo v11, "ShowImportDialogCmd"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Can not find target mtp image. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto/16 :goto_0

    :cond_f
    :try_start_5
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    check-cast v4, Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-virtual {v4, v1}, Lcom/sec/android/gallery3d/data/MtpImage;->importFile(Ljava/io/File;)Z

    move-result v12

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$402(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    goto/16 :goto_5

    :cond_10
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$800(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$402(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    goto/16 :goto_5

    :cond_11
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$902(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1000(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v13, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$2;

    invoke-direct {v13, p0, v1, v4}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$2;-><init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V

    invoke-virtual {v11, v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_6
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$900(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v11

    if-eqz v11, :cond_12

    :try_start_7
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1000(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    :catch_2
    move-exception v2

    :try_start_8
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v11
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_12
    :try_start_a
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_5

    :cond_13
    :try_start_b
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v11}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$400(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Z

    move-result v8

    if-nez v8, :cond_14

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1502(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    const-string/jumbo v11, "ShowImportDialogCmd"

    const-string/jumbo v12, "import failed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    add-int/lit8 v11, v10, -0x1

    if-ne v3, v11, :cond_15

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1302(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_1

    :cond_15
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    if-eqz v11, :cond_16

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v10}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->updateProgress(II)V

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->hideAllDialog()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "EXIT_SELECTION_MODE"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$4;-><init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1602(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->hideAllDialog()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$3;-><init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->showProgressDialog()V

    return-void
.end method
