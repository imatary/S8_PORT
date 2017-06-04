.class public Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "SCloudRecycleBinFileProcessingCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;
    }
.end annotation


# static fields
.field private static final PROGRESS_CNT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SCloudRecycleBinFP"


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mIsDelete:Z

.field private mIsDeleteAll:Z

.field private mIsRestore:Z

.field private mTask:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsRestore:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsDelete:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsDeleteAll:Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mTask:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mTask:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsDeleteAll:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsRestore:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsDelete:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, [Ljava/lang/Object;

    aget-object v4, v1, v5

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsRestore:Z

    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsDelete:Z

    const/4 v4, 0x3

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsDeleteAll:Z

    const/4 v0, 0x0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsRestore:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsDelete:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_1
    new-instance v4, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;

    invoke-direct {v4, p0, v0}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;-><init>(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;Ljava/util/List;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mTask:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mTask:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
