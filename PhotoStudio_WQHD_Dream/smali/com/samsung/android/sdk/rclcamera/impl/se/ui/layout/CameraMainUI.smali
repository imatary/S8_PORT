.class public Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;
.super Landroid/widget/RelativeLayout;
.source "CameraMainUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mDisableSwitchingForcely:Z


# instance fields
.field private final ALPHA_FOR_DIM:F

.field private mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

.field private mCaptureButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;

.field private mContext:Landroid/content/Context;

.field private mEnableCapture:Z

.field private mEnableFlash:Z

.field private mEnableGalleryButton:Z

.field private mEnableRecording:Z

.field private mEnableSwitching:Z

.field private mFlashButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;

.field private mGalleryButton:Landroid/widget/ImageButton;

.field private mOldHeight:I

.field private mOldWidth:I

.field private mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

.field private mRecordButton:Landroid/widget/ImageButton;

.field private mSwitchCameraButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.53/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mDisableSwitchingForcely:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->ALPHA_FOR_DIM:F

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mOldWidth:I

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mOldHeight:I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->ALPHA_FOR_DIM:F

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mOldWidth:I

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mOldHeight:I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->ALPHA_FOR_DIM:F

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mOldWidth:I

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mOldHeight:I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->ALPHA_FOR_DIM:F

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mOldWidth:I

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mOldHeight:I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public focusButton(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "Capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCaptureButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mSwitchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_0

    :cond_2
    const-string v0, "Record"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->setVisibility(I)V

    return-void
.end method

.method public initialize(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;I)V
    .locals 7

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    iput-object p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->capture_button:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCaptureButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCaptureButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__shutter:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->switch_button:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mSwitchCameraButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mSwitchCameraButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__switch_camera:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->record_button:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__record:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->flash_button:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mFlashButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getFlash()Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mFlashButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__flash:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__option_on:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->gallery_button:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mGalleryButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mGalleryButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__gallery:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mSwitchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCaptureButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->setOnShutterListener(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton$OnShutterListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mGalleryButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mFlashButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;->setCameraSetting(Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mFlashButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;->setCameraEngine(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/camera/core/SemCamera;->getNumberOfCameras()I

    move-result v0

    if-le v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mEnableSwitching:Z

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mEnableCapture:Z

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mEnableRecording:Z

    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mEnableGalleryButton:Z

    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mEnableFlash:Z

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mSwitchCameraButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mEnableSwitching:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mDisableSwitchingForcely:Z

    if-nez v0, :cond_8

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mSwitchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->empty_switch_button:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mEnableSwitching:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mDisableSwitchingForcely:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mSwitchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_7
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCaptureButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;

    iget-boolean v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mEnableCapture:Z

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mGalleryButton:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mEnableGalleryButton:Z

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mEnableRecording:Z

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mGalleryButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->empty_button:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mEnableRecording:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    :goto_8
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCaptureButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getFlash()Ljava/lang/String;

    move-result-object v0

    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mFlashButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__flash:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__option_off:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getFlash()Ljava/lang/String;

    move-result-object v0

    const-string v3, "auto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mFlashButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__flash:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__option_auto:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_2

    :cond_5
    move v0, v2

    goto/16 :goto_3

    :cond_6
    move v0, v2

    goto/16 :goto_4

    :cond_7
    move v0, v2

    goto/16 :goto_5

    :cond_8
    move v0, v2

    goto/16 :goto_6

    :cond_9
    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->empty_switch_button:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mEnableGalleryButton:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mGalleryButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_8

    :cond_b
    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->empty_button:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method public isCaptureButtonFocussed()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCaptureButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->isFocused()Z

    move-result v0

    return v0
.end method

.method public isRecordButtonFocussed()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v0

    return v0
.end method

.method public isSwitchButtonFocussed()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mSwitchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mSwitchCameraButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->handleSwitchCamera()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_START:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->handleRecordingCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mGalleryButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->handleGalleryButtonClicked()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onLayout()V

    :cond_0
    return-void
.end method

.method public onShutter(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->handleShutterButton(I)V

    return-void
.end method

.method public setCaptureButtonDim(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCaptureButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCaptureButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mEnableCapture:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCaptureButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCaptureButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/ShutterButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setExtraMarginToShutterGroup(I)V
    .locals 2

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->__cp__shutter_box_margin:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->__cp__shutter_box_margin:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->__cp__shutter_box_margin:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setFocusedButtons()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->isCaptureButtonFocussed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Capture"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->isSwitchButtonFocussed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Switch"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Record"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRecordButtonDim(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mEnableRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setRecordButtonVisible(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordButtonVisible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mRecordButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSwitchButtonEnabled(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sput-boolean v2, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mDisableSwitchingForcely:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mSwitchCameraButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    sput-boolean v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mDisableSwitchingForcely:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mSwitchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mSwitchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->setVisibility(I)V

    return-void
.end method

.method public updateFlashButton()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mFlashButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getFlash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;->updateView(Ljava/lang/String;)V

    return-void
.end method

.method public updateInterfaceForCameraChange()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mFlashButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getFlash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;->updateView(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getSupportedFlash()Ljava/util/List;

    move-result-object v0

    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getSupportedFlash()Ljava/util/List;

    move-result-object v0

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mEnableFlash:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mFlashButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->mFlashButton:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/FlashButton;->setVisibility(I)V

    goto :goto_0
.end method
