.class Lcom/sec/samsung/gallery/controller/SyncContactsCmd$2;
.super Ljava/lang/Object;
.source "SyncContactsCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->syncContactsOnThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/SyncContactsCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/SyncContactsCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/SyncContactsCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/SyncContactsCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->bNeedSync:Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->access$102(Lcom/sec/samsung/gallery/controller/SyncContactsCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/SyncContactsCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->access$000(Lcom/sec/samsung/gallery/controller/SyncContactsCmd;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->syncAllContactInfoList(Landroid/content/Context;)V

    const-string/jumbo v0, "SyncContactsCmd"

    const-string/jumbo v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/SyncContactsCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->bNeedSync:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->access$100(Lcom/sec/samsung/gallery/controller/SyncContactsCmd;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/SyncContactsCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->bNowSync:Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->access$202(Lcom/sec/samsung/gallery/controller/SyncContactsCmd;Z)Z

    return-void
.end method
