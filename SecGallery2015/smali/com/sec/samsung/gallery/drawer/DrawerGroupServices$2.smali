.class Lcom/sec/samsung/gallery/drawer/DrawerGroupServices$2;
.super Landroid/database/ContentObserver;
.source "DrawerGroupServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices$2;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string/jumbo v0, "DrawerGroupServices"

    const-string/jumbo v1, "mNearbyDevicesObserver : onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices$2;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    invoke-static {v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->access$100(Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;)V

    return-void
.end method
