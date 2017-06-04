.class Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion$1;
.super Ljava/lang/Object;
.source "DrawerItemDefaultExpansion.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->showChnUsageDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion$1;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "DrawerItemDefExpansion"

    const-string/jumbo v1, "There is no message to deal with here!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    const-string/jumbo v0, "DrawerItemDefExpansion"

    const-string/jumbo v1, "SyncContact completed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
