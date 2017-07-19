.class Lcom/sec/android/app/camera/shootingmode/ProLite$1;
.super Landroid/content/BroadcastReceiver;
.source "ProLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/ProLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/ProLite;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/ProLite;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite$1;->this$0:Lcom/sec/android/app/camera/shootingmode/ProLite;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ProLite"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string v4, "camera.action.ACTION_CHANGE_ISO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_1
    const-string v4, "camera.action.ACTION_CHANGE_EXPOSURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "camera.action.ACTION_CHANGE_WHITEBALANCE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_0
    const-string v2, "pro_settingvalue"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite$1;->this$0:Lcom/sec/android/app/camera/shootingmode/ProLite;

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->access$000(Lcom/sec/android/app/camera/shootingmode/ProLite;Ljava/lang/String;I)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d59ca10 -> :sswitch_0
        -0x61526da4 -> :sswitch_1
        0x4a43ad68 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
