.class Lcom/sec/android/app/camera/menu/BeautyListMenu$2;
.super Landroid/content/BroadcastReceiver;
.source "BeautyListMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/BeautyListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_1

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    const-string v4, "camera.action.ACTION_BEAUTY_UI_UPDATED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyMode()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    # invokes: Lcom/sec/android/app/camera/menu/BeautyListMenu;->refreshSlider(I)V
    invoke-static {v2, v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$200(Lcom/sec/android/app/camera/menu/BeautyListMenu;I)V

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BeautyListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$300(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Landroid/util/SparseArray;

    move-result-object v2

    const/16 v3, 0x1967

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    if-eqz v1, :cond_1

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->updateToggleButton(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelectedToggleImage(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x79e1b9b9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
