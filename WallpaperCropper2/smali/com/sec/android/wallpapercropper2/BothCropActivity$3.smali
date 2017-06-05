.class Lcom/sec/android/wallpapercropper2/BothCropActivity$3;
.super Ljava/lang/Object;
.source "BothCropActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/BothCropActivity;->initCheckBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/BothCropActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/BothCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/BothCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/BothCropActivity;

    iput-boolean p2, v0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mLastMotionEffectStatus:Z

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/BothCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0, p2}, Lcom/sec/android/wallpapercropper2/CropView;->setTiltMode(Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/BothCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/BothCropActivity;

    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/BothCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/BothCropActivity;

    const v2, 0x7f020006

    invoke-virtual {v1, v2}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
