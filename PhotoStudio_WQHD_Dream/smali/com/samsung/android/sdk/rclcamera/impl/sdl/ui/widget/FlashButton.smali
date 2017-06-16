.class public Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;
.super Landroid/widget/ToggleButton;
.source "FlashButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

.field private mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.56/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->isLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__plugged_low_batt_msg:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->isTemperatureHighToUseFlash()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__temperature_too_high_flash_off:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCameraErrorHappened()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->TAG:Ljava/lang/String;

    const-string v1, "Camera error. Ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->isCurrentFlashMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->checkFlashModeSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setFlash(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->getFlash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->updateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->isCurrentFlashMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->checkFlashModeSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setFlash(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->isCurrentFlashMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->checkFlashModeSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setFlash(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setCameraEngine(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    return-void
.end method

.method public setCameraSetting(Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    return-void
.end method

.method public updateView(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$drawable;->__cp__camera_quick_menu_ic_flash_auto:I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->setChecked(Z)V

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->setBackgroundResource(I)V

    return-void

    :sswitch_0
    const-string v3, "auto"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "off"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_2
    const-string v4, "on"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    goto :goto_0

    :pswitch_0
    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$drawable;->__cp__camera_quick_menu_ic_flash_auto:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__flash:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__option_auto:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$drawable;->__cp__camera_quick_menu_ic_flash_off:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__flash:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__option_off:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_2
    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$drawable;->__cp__camera_quick_menu_ic_flash_on:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__flash:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__option_on:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/FlashButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0xddf -> :sswitch_2
        0x1ad6f -> :sswitch_1
        0x2dddaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
