.class Lcom/sec/android/gallery3d/remote/slink/SLinkManager$1;
.super Ljava/lang/Object;
.source "SLinkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->acquireWakeLockIfNeeded(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

.field final synthetic val$activity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/remote/slink/SLinkManager;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$1;->this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    iput-object p2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$1;->val$activity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$1;->val$activity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SLinkManager"

    const-string/jumbo v2, "acquireWakeLockIfNeeded : activity.getApplicationContext() is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$1;->this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    # invokes: Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getSignedInStatus()Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->access$000(Lcom/sec/android/gallery3d/remote/slink/SLinkManager;)Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    move-result-object v0

    const-string/jumbo v1, "SLinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "acquireWakeLockIfNeeded : signedInStatus = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->DEACTIVATED:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    if-ne v1, v0, :cond_3

    sget-object v1, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->ACTIVATED:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$1;->this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    # invokes: Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getSamsungAccountStatus()Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->access$100(Lcom/sec/android/gallery3d/remote/slink/SLinkManager;)Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    move-result-object v2

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "SLinkManager"

    const-string/jumbo v2, "acquireWakeLockIfNeeded : request SignIn for S Link"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v1, "SLinkManager"

    const-string/jumbo v2, "acquire network wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$1;->this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    # getter for: Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->mWakeLock:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->access$200(Lcom/sec/android/gallery3d/remote/slink/SLinkManager;)Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->acquire()V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "SLinkManager"

    const-string/jumbo v2, "acquireWakeLockIfNeeded : Samsung Account is not existed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;->ERROR:Lcom/sec/android/gallery3d/remote/slink/SLinkManager$StatusType;

    if-ne v1, v0, :cond_1

    goto :goto_0
.end method
