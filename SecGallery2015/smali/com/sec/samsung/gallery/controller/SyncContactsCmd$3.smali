.class Lcom/sec/samsung/gallery/controller/SyncContactsCmd$3;
.super Landroid/database/ContentObserver;
.source "SyncContactsCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->registerContactObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/SyncContactsCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/SyncContactsCmd;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/SyncContactsCmd;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/SyncContactsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SyncContactsCmd;->access$300(Lcom/sec/samsung/gallery/controller/SyncContactsCmd;)V

    return-void
.end method
