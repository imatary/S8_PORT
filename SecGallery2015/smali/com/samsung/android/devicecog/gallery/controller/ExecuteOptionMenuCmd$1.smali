.class Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd$1;
.super Landroid/os/Handler;
.source "ExecuteOptionMenuCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;


# direct methods
.method constructor <init>(Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd$1;->this$0:Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd$1;->this$0:Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;->access$000(Lcom/samsung/android/devicecog/gallery/controller/ExecuteOptionMenuCmd;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
