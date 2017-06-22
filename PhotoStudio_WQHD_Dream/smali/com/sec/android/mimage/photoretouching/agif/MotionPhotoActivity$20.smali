.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$20;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setDialogContent(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$20;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$20;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$20;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v1

    if-gt v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$20;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$20;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v3, 0x7f07016f

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$20;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gif_setting_changed:Z
    invoke-static {v1, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2702(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$20;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0088

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07029f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$20;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setSaveLayoutEnabled(Z)V
    invoke-static {v1, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2800(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$20;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v2, 0x0

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveFunc(ZLandroid/content/Intent;)V
    invoke-static {v1, v5, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;ZLandroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$20;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShareViaEnabled:Z
    invoke-static {v1, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3002(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    goto :goto_0
.end method
