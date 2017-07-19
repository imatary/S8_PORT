.class Lcom/sec/android/app/camera/shootingmode/Pro$1;
.super Landroid/content/BroadcastReceiver;
.source "Pro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Pro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Pro;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Pro;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Pro"

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
    const-string v4, "camera.action.ACTION_CHANGE_SHUTTER_SPEED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "camera.action.ACTION_CHANGE_WHITEBALANCE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "camera.action.ACTION_CHANGE_FOCUS_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "camera.action.ACTION_CHANGE_COLORTUNE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "camera.action.ACTION_SELECT_COLORTUNE_EDIT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string v4, "camera.action.ACTION_SELECT_COLORTUNE_RESET"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :pswitch_0
    const-string v2, "pro_settingvalue"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$000(Lcom/sec/android/app/camera/shootingmode/Pro;Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$100(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/samsung/android/glview/GLButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->onClick(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->onColorTuneSettingReset()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->onColorTuneSettingSave()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x6d59ca10 -> :sswitch_0
        -0x6c1624fa -> :sswitch_5
        -0x61526da4 -> :sswitch_1
        -0x42cc6ffe -> :sswitch_7
        -0x34c71700 -> :sswitch_2
        0x2f5ed4d7 -> :sswitch_6
        0x4a43ad68 -> :sswitch_3
        0x5ef4e4df -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
