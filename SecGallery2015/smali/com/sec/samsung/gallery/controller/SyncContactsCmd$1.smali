.class Lcom/sec/samsung/gallery/controller/SyncContactsCmd$1;
.super Ljava/lang/Object;
.source "SyncContactsCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->startSyncContacts()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/SyncContactsCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/SyncContactsCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->access$000(Lcom/sec/samsung/gallery/controller/SyncContactsCmd;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->syncAllContactInfoList(Landroid/content/Context;)V

    const-string/jumbo v2, "SyncContactsCmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sync time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
