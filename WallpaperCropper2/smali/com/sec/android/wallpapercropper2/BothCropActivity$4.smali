.class Lcom/sec/android/wallpapercropper2/BothCropActivity$4;
.super Ljava/lang/Object;
.source "BothCropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity$4;->this$0:Lcom/sec/android/wallpapercropper2/BothCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity$4;->this$0:Lcom/sec/android/wallpapercropper2/BothCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity$4;->this$0:Lcom/sec/android/wallpapercropper2/BothCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity$4;->this$0:Lcom/sec/android/wallpapercropper2/BothCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
